
create table propulsion
(
    id int not null,
    mass        double precision, /* kg */
    max_power   double precision, /* hp */
    in_service date,

    primary key (id)
);

/* emulate unique key */
create or replace function propulsion_unique_key ()
returns trigger
    language plpgsql
as $$
declare
begin
    set transaction isolation level read committed;
    if (exists (select * from propulsion where (propulsion.id = new.id)))
    then
        raise exception 'ограничение уникального ключа propulsion.id';
    else
    end if;
    return new;
end;
$$;


create table diesel_list
(
    name_ru varchar(100),
    name_en varchar(100),
    cilinder_diameter   double precision, /* mm */
    cilinder_stroke     double precision, /* mm */
    cilinder_count      int,
    volume_of_engine    double precision, /* liter */
    tact_value          int
) inherits(propulsion);
alter table diesel_list add check (cilinder_diameter > 0);
alter table diesel_list add check (cilinder_stroke > 0);
alter table diesel_list add check (cilinder_count > 0);
alter table diesel_list add check (volume_of_engine > 0);
alter table diesel_list add check ((tact_value = 2) or (tact_value = 4));
alter table diesel_list add check (cilinder_diameter * cilinder_diameter * pi() / 4 * cilinder_stroke * cilinder_count * 1.2 >= volume_of_engine * 100 * 100 * 100);
alter table diesel_list add check (cilinder_diameter * cilinder_diameter * pi() / 4 * cilinder_stroke * cilinder_count <= 1.2 * volume_of_engine * 100 * 100 * 100);

drop trigger if exists diesel_list_unique_key_trigger_em on diesel_list;
create trigger diesel_list_unique_key_trigger_em
    before insert
    on diesel_list
    for each row
    execute procedure propulsion_unique_key();


create table boiling_types
(
    id int not null,
    name_ru varchar(100),
    name_en varchar(100),
    value int not null, /* mask: 1 - coil,  2 - fuel */
    temperature     double precision, /* °C */
    pressure        double precision, /* atm */
    heating_surface double precision, /* m^2 */
    
    primary key (id)
);
alter table boiling_types add check ((value >= 0) and (value <= 3));
alter table boiling_types add check (temperature > 0);
alter table boiling_types add check (pressure > 0);


create table machine_types
(
    id int not null,
    name_ru varchar(100),
    name_en varchar(100),
    in_service date,
    
    primary key (id)
);

/* emulate unique key */
create or replace function machine_types_unique_key ()
returns trigger
    language plpgsql
as $$
declare
begin
    set transaction isolation level read committed;
    if (exists (select * from machine_types where (machine_types.id = new.id)))
    then
        raise exception 'ограничение уникального ключа machine_types.id';
    else
    end if;
    return new;
end;
$$;


create table steam_turbine
(
    rpm     double precision,
    power   double precision, /* shaft hp */
    stages  int,
    
    primary key (id)
) inherits(machine_types);
alter table steam_turbine add check (stages > 0);

drop trigger if exists steam_turbine_unique_key_trigger_em on steam_turbine;
create trigger steam_turbine_unique_key_trigger_em
    before insert
    on steam_turbine
    for each row
    execute procedure machine_types_unique_key();

/* emulate unique key */
create or replace function steam_turbine_unique_key ()
returns trigger
    language plpgsql
as $$
declare
begin
    set transaction isolation level read committed;
    if (exists (select * from steam_turbine where (steam_turbine.id = new.id)))
    then
        raise exception 'ограничение уникального ключа steam_turbine.id';
    else
    end if;
    return new;
end;
$$;


create table steam_turbine_reverse
(
    primary key (id)
) inherits(steam_turbine);

drop trigger if exists steam_turbine_reverse_unique_key_trigger_em on steam_turbine_reverse;
create trigger steam_turbine_reverse_unique_key_trigger_em
    before insert
    on steam_turbine_reverse
    for each row
    execute procedure steam_turbine_unique_key();

    
create table steam_turbine_cruise
(
    primary key (id)
) inherits(steam_turbine);

drop trigger if exists steam_turbine_cruise_unique_key_trigger_em on steam_turbine_cruise;
create trigger steam_turbine_cruise_unique_key_trigger_em
    before insert
    on steam_turbine_cruise
    for each row
    execute procedure steam_turbine_unique_key();

    
create table steam_machine
(
    primary key (id)
) inherits(machine_types);

drop trigger if exists steam_machine_unique_key_trigger_em on steam_machine;
create trigger steam_machine_unique_key_trigger_em
    before insert
    on steam_machine
    for each row
    execute procedure machine_types_unique_key();

    
create table steam_machine_cilinders
(
    machine_id          int not null,
    cilinder_diameter   double precision, 
    cilinder_stroke     double precision, 
    cilinder_count      int,
    
    foreign key (machine_id) references steam_machine(id)
        on delete restrict on update cascade
);
alter table steam_machine_cilinders add check (cilinder_diameter > 0);
alter table steam_machine_cilinders add check (cilinder_stroke > 0);
alter table steam_machine_cilinders add check (cilinder_count > 0);


create table external_burn_list
(
    primary key (id)
) inherits(propulsion);

drop trigger if exists external_burn_list_unique_key_trigger_em on external_burn_list;
create trigger external_burn_list_unique_key_trigger_em
    before insert
    on external_burn_list
    for each row
    execute procedure propulsion_unique_key();

    
create table external_burn_boiling
(
    object_id   int not null,
    item_id     int not null,
    count       int,
    
    primary key (object_id, item_id),
    foreign key (object_id) references external_burn_list(id)
        on delete restrict on update cascade,
    foreign key (item_id) references boiling_types(id)
        on delete restrict on update cascade
);
alter table external_burn_boiling add check (count > 0);


create table external_burn_machines
(
    object_id   int not null,
    item_id     int not null,
    count       int,
    
    primary key (object_id, item_id),
    foreign key (object_id) references external_burn_list(id)
        on delete restrict on update cascade
    /* 
        EMULATED BY TRIGGERS
    foreign key (item_id) references machine_types(id)
        on delete restrict on update cascade
    */
);
alter table external_burn_machines add check (count > 0);


/* emulate foreign key */
create or replace function external_machines_foreign_key_to_machine_types_em ()
returns trigger
    language plpgsql
as $$
declare
begin
    set transaction isolation level read committed;
    if (exists
        (select * from machine_types
            where (machine_types.id = new.item_id)
        ))
    then
    else
        raise exception 'ограничение внешнего ключа external_burn_machines.item_id -> machine_types.id';
    end if;
    return new;
end;
$$;

drop trigger if exists external_machines_foreign_key_to_machine_types_trigger_em on external_burn_machines;
create trigger external_machines_foreign_key_to_machine_types_trigger_em
    before insert or update
    on external_burn_machines
    for each row
    execute procedure external_machines_foreign_key_to_machine_types_em();

    
create or replace function external_machines_foreign_key_to_machine_types_mt ()
returns trigger
    language plpgsql
as $$
declare
begin
    set transaction isolation level read committed;
    if ((tg_op = 'DELETE' and exists
        (select * from external_burn_machines
            where (old.id = external_burn_machines.item_id)
        ))
        or (tg_op = 'UPDATE' and exists
        (select * from external_burn_machines
            where (old.id = external_burn_machines.item_id and old.id != new.id)
        )))
    then
        raise exception 'ограничение внешнего ключа external_burn_machines.item_id -> machine_types.id';
    else
    end if;
    return new;
end;
$$;

drop trigger if exists external_machines_foreign_key_to_machine_types_trigger_mt on machine_types;
create trigger external_machines_foreign_key_to_machine_types_trigger_mt
    before delete or update
    on machine_types
    for each row
    execute procedure external_machines_foreign_key_to_machine_types_mt();
/* foreign key emulated */


