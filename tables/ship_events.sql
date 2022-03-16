
create table event_class
(
    id int not null,
    name_ru varchar(100),
    name_en varchar(100),
        
    primary key (id)
);
create index on event_class(id);


create table ship_event_list
(
    class_id int not null,
    ship_id int not null,
    
    date_from date,
    date_to date,
    description text,
    
    primary key (class_id, ship_id, date_from),
    foreign key (class_id) references event_class(id)
        on delete restrict on update cascade,
    foreign key (ship_id) references ship_list(id)
        on delete restrict on update cascade
);
alter table ship_event_list add check (date_from <= date_to);


create or replace function ship_event_check ()
returns trigger
    language plpgsql
as $$
declare
begin
    set transaction isolation level read committed;

    if (not exists
        (select *
            from ship_event_list
            inner join ship_list on (ship_event_list.ship_id = ship_list.id)
            where (ship_event_list.date_to > ship_list.sunk_date)
        ))
    then
    else
        raise exception 'временные парадоксы...';
    end if;
    return new;
end;
$$;

drop trigger if exists ship_event_trigger on ship_event_list;
create trigger ship_event_trigger
    after insert or update
    on ship_event_list
    for each statement
    execute procedure ship_event_check();

    
create index on ship_event_list(ship_id, date_from, date_to);


