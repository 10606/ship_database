
create table ship_torpedo_tubes
(
    ship_id int not null,
    tube_id int not null,
    
    amount int not null,
    date_from date,
    date_to date,
    
    primary key (ship_id, tube_id, date_from),
    foreign key (ship_id) references ship_list(id)
        on delete restrict on update cascade,
    foreign key (tube_id) references torpedo_tubes(id)
        on delete restrict on update cascade
);
alter table ship_torpedo_tubes add check (date_from <= date_to);
alter table ship_torpedo_tubes add check (amount > 0);

create or replace function ship_torpedo_tubes_check ()
returns trigger
    language plpgsql
as $$
declare
begin
    set transaction isolation level read committed;

    if (not exists
        (select *
            from torpedo_tubes
            inner join ship_torpedo_tubes on (ship_torpedo_tubes.tube_id = torpedo_tubes.id)
            where (torpedo_tubes.in_service > ship_torpedo_tubes.date_from)
        ) 
        and not exists
        (select * 
            from ship_torpedo_tubes as sg1
            inner join ship_torpedo_tubes as sg2 on (sg1.ship_id = sg2.ship_id and sg1.tube_id = sg2.tube_id)
            where (sg1.date_from < sg2.date_from and sg2.date_from < sg1.date_to)
        )
        and not exists
        (select *
            from ship_torpedo_tubes
            inner join ship_list on (ship_torpedo_tubes.ship_id = ship_list.id)
            where (ship_torpedo_tubes.date_to > ship_list.sunk_date)
        ))
    then
    else
        raise exception 'временные парадоксы...';
    end if;
    return new;
end;
$$;

drop trigger if exists ship_torpedo_tubes_trigger on ship_torpedo_tubes;
create trigger ship_torpedo_tubes_trigger
    after insert or update
    on ship_torpedo_tubes
    for each statement
    execute procedure ship_torpedo_tubes_check();


create index on ship_torpedo_tubes using hash (ship_id);
create index on ship_torpedo_tubes using hash (tube_id);



create or replace function ship_torpedo_tubes_install_check ()
returns trigger
    language plpgsql
as $$
declare
begin
    set transaction isolation level read committed;

    if (not exists
        (select (ship_id, tube_id, date_from) 
            from ship_torpedo_tubes
        except all select (ship_torpedo_tubes.ship_id, tube_id, ship_torpedo_tubes.date_from)
            from ship_torpedo_tubes 
            inner join ship_event_list on (ship_torpedo_tubes.ship_id = ship_event_list.ship_id)
            where (ship_event_list.date_from <= ship_torpedo_tubes.date_from) and
                  (ship_torpedo_tubes.date_from <= ship_event_list.date_to)
        except all select (ship_torpedo_tubes.ship_id, tube_id, ship_torpedo_tubes.date_from)
            from ship_torpedo_tubes 
            inner join ship_list on (ship_torpedo_tubes.ship_id = ship_list.id)
            where (ship_torpedo_tubes.date_from <= ship_list.commissioned)
        ))
    then
    else
        raise exception 'установка торпедных аппаратов в открытом море...';
    end if;
    return new;
end;
$$;

drop trigger if exists ship_torpedo_tubes_install_trigger on ship_torpedo_tubes;
create trigger ship_torpedo_tubes_install_trigger
    after insert or update
    on ship_torpedo_tubes
    for each statement
    execute procedure ship_torpedo_tubes_install_check();



