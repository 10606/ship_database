
create table gun_class
(
    id int not null,
    parent_id int,
    name_ru varchar(100),
    name_en varchar(100),
    
    primary key (id),
    foreign key (parent_id) references gun_class(id)
        on delete restrict on update cascade
);

create index on gun_class(id);
create index on gun_class(name_ru);
create index on gun_class(name_en);


create table gun_list
(
    id int not null,
    name_ru varchar(100),
    name_en varchar(100),
    caliber double precision, /*mm*/
    length double precision,  /*caliber*/
    class_id int not null, 
    rate_of_fire double precision,
    effective_range double precision, /*m*/
    mass double precision, /*kg*/
    build_cnt int,
    in_service date,
    
    primary key (id),
    foreign key (class_id) references gun_class(id)
        on delete restrict on update cascade
);
alter table gun_list add check (caliber > 0);
alter table gun_list add check (length >= 0);
alter table gun_list add check (rate_of_fire >= 0);
alter table gun_list add check (effective_range >= 0);
alter table gun_list add check (mass > 0);
alter table gun_list add check (build_cnt >= 0);

create index on gun_list(id);
create index on gun_list(name_ru);
create index on gun_list(name_en);
create index on gun_list(class_id);


create table torpedo_list
(
    id int not null,
    name_ru varchar(100),
    name_en varchar(100),
    caliber double precision, /*mm*/
    length double precision,  /*mm*/
    speed double precision, /*knots*/
    range double precision, /*m*/
    mass double precision,
    mass_ex double precision,
    in_service date,

    primary key (id)
);
alter table torpedo_list add check (caliber > 0);
alter table torpedo_list add check (length >= 0);
alter table torpedo_list add check (speed >= 0);
alter table torpedo_list add check (range >= 0);
alter table torpedo_list add check (mass_ex >= 0);
alter table torpedo_list add check (mass >= mass_ex);

create index on torpedo_list(id);
create index on torpedo_list(name_ru);
create index on torpedo_list(name_en);


/* mines and depth charges */
create table mine_list
(
    id int not null,
    name_ru varchar(100),
    name_en varchar(100),
    class_id int not null, 
    size double precision, /*mm*/
    mass double precision,
    mass_ex double precision,
    in_service date,

    primary key (id),
    foreign key (class_id) references gun_class(id)
        on delete restrict on update cascade
);
alter table mine_list add check (size >= 0);
alter table mine_list add check (mass_ex >= 0);
alter table mine_list add check (mass >= mass_ex);

create index on mine_list(id);
create index on mine_list(name_ru);
create index on mine_list(name_en);


create table throwers
(
    id int not null,
    name_ru varchar(100),
    name_en varchar(100),
    class_id int not null, 
    caliber double precision, /*mm*/
    tubes_count int,
    in_service date,

    primary key (id),
    foreign key (class_id) references gun_class(id)
        on delete restrict on update cascade
);
alter table throwers add check (caliber > 0);
alter table throwers add check (tubes_count > 0);
/* throwers >=< mine_list    */

create index on throwers(id);
create index on throwers(name_ru);
create index on throwers(name_en);


create table torpedo_tubes
(
    id int not null,
    name_ru varchar(100),
    name_en varchar(100),
    class_id int not null, 
    caliber double precision, /*mm*/
    tubes_count int,
    in_service date,

    primary key (id),
    foreign key (class_id) references gun_class(id)
        on delete restrict on update cascade
);
alter table torpedo_tubes add check (caliber > 0);
alter table torpedo_tubes add check (tubes_count > 0);
/* torpedo_tubes >=< torpedo_list */

create index on torpedo_tubes(id);
create index on torpedo_tubes(name_ru);
create index on torpedo_tubes(name_en);

create or replace function topedo_tubes_check ()
returns trigger
    language plpgsql
as $$
declare
begin
    set transaction isolation level read committed;

    if (not exists
        (select class_id
            from torpedo_tubes 
            where (select get_gun_ancestor_by_id(torpedo_tubes.class_id)) != 3
        ))
    then
    else
        raise exception 'эта табличка только для торпед...';
    end if;
    return new;
end;
$$;

drop trigger if exists topedo_tubes_trigger on torpedo_tubes;
create trigger topedo_tubes_trigger
    after insert or update
    on torpedo_tubes
    for each statement
    execute procedure topedo_tubes_check();
 
    

create table thrower__depth_charge
(
    thrower_id int not null,
    depth_charge_id int not null,
    
    primary key (thrower_id, depth_charge_id),
    foreign key (thrower_id) references throwers(id)
        on delete restrict on update cascade,
    foreign key (depth_charge_id) references mine_list(id)
        on delete restrict on update cascade
);

create index on thrower__depth_charge(thrower_id);


create table thrower__torpedo
(
    thrower_id int not null,
    torpedo_id int not null,
    
    primary key (thrower_id, torpedo_id),
    foreign key (thrower_id) references torpedo_tubes(id)
        on delete restrict on update cascade,
    foreign key (torpedo_id) references torpedo_list(id)
        on delete restrict on update cascade
);

create index on thrower__torpedo(thrower_id);


create table gun_mount
(
    id int not null,
    name_ru varchar(100),
    name_en varchar(100),
    gun_id int not null,
    gun_count int not null,
    angle double precision,
    
    primary key (id),
    foreign key (gun_id) references gun_list(id)
        on delete restrict on update cascade
);
alter table gun_mount add check (gun_count > 0);

create index on gun_mount(id);



create table catapult_class
(
    id int not null,
    name_ru varchar(100),
    name_en varchar(100),
    
    primary key (id)
);
create index on catapult_class(id);


create table catapult
(
    id int not null,
    name_ru varchar(100),
    name_en varchar(100),
    class_id int not null,
    
    length  double precision,
    width   double precision,
    speed   double precision, /* м/с */
    launch_mass  double precision, /* кг */
    alleceration double precision, /* g */
    in_service date,
    
    primary key (id),
    foreign key (class_id) references catapult_class(id)
        on delete restrict on update cascade
);
create index on catapult(id);
create index on catapult(name_ru);
create index on catapult(name_en);


