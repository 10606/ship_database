
create table bombs
(
    id int not null,
    name_ru varchar(100),
    name_en varchar(100),
    
    mass double precision,    /* кг */
    mass_ex double precision, /* кг */
    in_service date,

    primary key (id)
);
alter table bombs add check (mass_ex >= 0);
alter table bombs add check (mass >= mass_ex);


create table aircraft_class
(
    id int not null,
    parent_id int,
    name_ru varchar(100),
    name_en varchar(100),
    
    primary key (id),
    foreign key (parent_id) references aircraft_class(id)
        on delete restrict on update cascade
);


create table aircraft_types
(
    id int not null,
    name_ru varchar(100),
    name_en varchar(100),
    
    primary key (id)
);


create table aircraft_list
(
    id int not null,
    name_ru varchar(100),
    name_en varchar(100),
    class_id int not null,
    type_id int not null,
    
    crew int, 
    mass             double precision, /* kg */
    max_mass         double precision, /* kg */
    engine_power     double precision, /* hp */
    max_speed        double precision, /* km/h */
    cruise_speed     double precision, /* km/h */
    range            double precision, /* km */
    range_with_tank  double precision, /* km */
    ceiling          double precision, /* km */
    time_to_altitude double precision, /* 1000m in ... minutes */
    
    in_service date,
    
    primary key (id),
    foreign key (class_id) references aircraft_class(id)
        on delete restrict on update cascade,
    foreign key (type_id) references aircraft_types(id)
        on delete restrict on update cascade
);
alter table aircraft_list add check (crew >= 0);
alter table aircraft_list add check (mass > 0);
alter table aircraft_list add check (mass <= max_mass);
alter table aircraft_list add check (engine_power >= 0);
alter table aircraft_list add check (cruise_speed > 0);
alter table aircraft_list add check (max_speed >= cruise_speed);
alter table aircraft_list add check (range > 0);
alter table aircraft_list add check (range_with_tank >= range);
alter table aircraft_list add check (ceiling > 0);
alter table aircraft_list add check (time_to_altitude > 0);

create index on aircraft_list using hash (class_id);
create index on aircraft_list using hash (type_id);


create table aircraft_guns
(
    aircraft_id int not null,
    gun_id int not null,
    count int not null,
    
    primary key (aircraft_id, gun_id),
    foreign key (aircraft_id) references aircraft_list(id)
        on delete restrict on update cascade,
    foreign key (gun_id) references gun_list(id)
        on delete restrict on update cascade
);
alter table aircraft_guns add check (count > 0);

create or replace function aircraft_guns_check ()
returns trigger
    language plpgsql
as $$
declare
begin
    set transaction isolation level read committed;

    if (not exists
        (select *
            from aircraft_guns
            inner join gun_list on (aircraft_guns.gun_id = gun_list.id)
            inner join aircraft_list on (aircraft_guns.aircraft_id = aircraft_list.id)
            where (gun_list.in_service > aircraft_list.in_service)
        ))
    then
    else
        raise exception 'временные парадоксы...';
    end if;
    return new;
end;
$$;

