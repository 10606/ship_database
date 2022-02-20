
create table searchers
(
    id int not null,
    name_ru varchar(100),
    name_en varchar(100),
    class_id int not null,
    
    mass double precision,      /* кг */
    frequency double precision, /* МГц */
    power double precision,     /* кВт */
    build_cnt int,
    in_service date,
    
    primary key (id),
    foreign key (class_id) references gun_class(id)
        on delete restrict on update cascade
);
alter table searchers add check (build_cnt >= 0);

create index on searchers(id);
create index on searchers(name_ru);
create index on searchers(name_en);
create index on searchers(class_id);



create table target_class
(
    id int not null,
    parent_id int,
    
    name_ru varchar(100),
    name_en varchar(100),
    
    primary key (id),
    foreign key (parent_id) references target_class(id)
        on delete restrict on update cascade
);
create index on target_class(id);
create index on target_class(name_ru);
create index on target_class(name_en);



create table searchers_range
(
    searcher_id int not null,
    target_class_id int not null,
    range double precision, /* км, null если может обнаружить, но расстояние неизвестно */
    
    primary key (searcher_id, target_class_id),
    foreign key (searcher_id) references searchers(id)
        on delete restrict on update cascade,
    foreign key (target_class_id) references target_class(id)
        on delete restrict on update cascade
);
alter table searchers_range add check (range >= 0);

create or replace function searchers_range_check ()
returns trigger
    language plpgsql
as $$
declare
begin
    set transaction isolation level read committed;

    if (not exists
        (select (searchers_range.searcher_id, target_class.id)
            from target_class
            inner join searchers_range on (searchers_range.target_class_id = target_class.parent_id)
        except all select (searchers_range.searcher_id, target_class.id)
            from target_class
            inner join searchers_range on (searchers_range.target_class_id = target_class.id)
        ))
    then
    else
        raise exception 'парадокс...';
    end if;
    return new;
end;
$$;

drop trigger if exists searchers_range_trigger on searchers_range;
create trigger searchers_range_trigger
    after insert or update
    on searchers_range
    for each statement
    execute procedure searchers_range_check();



