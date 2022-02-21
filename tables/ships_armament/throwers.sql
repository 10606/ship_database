
create table ship_throwers
(
    ship_id int not null,
    throwers_id int not null,
    
    amount int not null,
    date_from date,
    date_to date,
    
    primary key (ship_id, throwers_id, date_from),
    foreign key (ship_id) references ship_list(id)
        on delete restrict on update cascade,
    foreign key (throwers_id) references throwers(id)
        on delete restrict on update cascade
);
alter table ship_throwers add check (date_from <= date_to);
alter table ship_throwers add check (amount > 0);

create or replace function ship_throwers_check ()
returns trigger
    language plpgsql
as $$
declare
begin
    set transaction isolation level read committed;

    if (not exists
        (select *
            from throwers
            inner join ship_throwers on (ship_throwers.throwers_id = throwers.id)
            where (throwers.in_service > ship_throwers.date_from)
        ) 
        and not exists
        (select * 
            from ship_throwers as sg1
            inner join ship_throwers as sg2 on (sg1.ship_id = sg2.ship_id and sg1.throwers_id = sg2.throwers_id)
            where (sg1.date_from < sg2.date_from and sg2.date_from < sg1.date_to)
        )
        and not exists
        (select *
            from ship_throwers
            inner join ship_list on (ship_throwers.ship_id = ship_list.id)
            where (ship_throwers.date_to > ship_list.sunk_date)
        ))
    then
    else
        raise exception 'временные парадоксы...';
    end if;
    return new;
end;
$$;

drop trigger if exists ship_throwers_trigger on ship_throwers;
create trigger ship_throwers_trigger
    after insert or update
    on ship_throwers
    for each statement
    execute procedure ship_throwers_check();


create index on ship_throwers(ship_id);
create index on ship_throwers(throwers_id);
create index on ship_throwers(date_from, date_to);
create index on ship_throwers(date_to, date_from);


create or replace function ship_throwers_install_check ()
returns trigger
    language plpgsql
as $$
declare
begin
    set transaction isolation level read committed;

    if (not exists
        (select (ship_id, throwers_id, date_from) 
            from ship_throwers
        except all select (ship_throwers.ship_id, throwers_id, ship_throwers.date_from)
            from ship_throwers 
            inner join ship_event_list on (ship_throwers.ship_id = ship_event_list.ship_id)
            where (ship_event_list.date_from <= ship_throwers.date_from) and
                  (ship_throwers.date_from <= ship_event_list.date_to)
        except all select (ship_throwers.ship_id, throwers_id, ship_throwers.date_from)
            from ship_throwers 
            inner join ship_list on (ship_throwers.ship_id = ship_list.id)
            where (ship_throwers.date_from <= ship_list.commissioned)
        ))
    then
    else
        raise exception 'установка бомбометов в открытом море...';
    end if;
    return new;
end;
$$;

drop trigger if exists ship_throwers_install_trigger on ship_throwers;
create trigger ship_throwers_install_trigger
    after insert or update
    on ship_throwers
    for each statement
    execute procedure ship_throwers_install_check();



