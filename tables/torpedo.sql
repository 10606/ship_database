

create table torpedo_list
(
    id int not null,
    name_ru varchar(100),
    name_en varchar(100),
    caliber double precision, /* мм */
    length double precision,  /* мм */
    speed double precision,   /* узлов */
    range double precision,   /* м */
    mass double precision,    /* кг */
    mass_ex double precision, /* кг */
    in_service date,

    primary key (id)
);
alter table torpedo_list add check (caliber > 0);
alter table torpedo_list add check (length >= 0);
alter table torpedo_list add check (speed >= 0);
alter table torpedo_list add check (range >= 0);
alter table torpedo_list add check (mass_ex >= 0);
alter table torpedo_list add check (mass >= mass_ex);



create table torpedo_tubes
(
    id int not null,
    name_ru varchar(100),
    name_en varchar(100),
    class_id int not null, 
    caliber double precision, /* мм */
    tubes_count int,
    in_service date,

    primary key (id),
    foreign key (class_id) references gun_class(id)
        on delete restrict on update cascade
);
alter table torpedo_tubes add check (caliber > 0);
alter table torpedo_tubes add check (tubes_count > 0);
/* torpedo_tubes >=< torpedo_list */


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

create index on thrower__torpedo using hash (thrower_id);


