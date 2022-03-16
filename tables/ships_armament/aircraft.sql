
create table ship_aircraft
(
    ship_id int not null,
    aircraft_id int not null,
    
    amount int not null,
    date_from date,
    date_to date,
    
    primary key (ship_id, aircraft_id, date_from),
    foreign key (ship_id) references ship_list(id)
        on delete restrict on update cascade,
    foreign key (aircraft_id) references aircraft_list(id)
        on delete restrict on update cascade
);
alter table ship_aircraft add check (date_from <= date_to);
alter table ship_aircraft add check (amount > 0);

create or replace function ship_aircraft_check ()
returns trigger
    language plpgsql
as $$
declare
begin
    set transaction isolation level read committed;

    if (not exists
        (select *
            from aircraft_list
            inner join ship_aircraft on (ship_aircraft.aircraft_id = aircraft_list.id)
            where (aircraft_list.in_service > ship_aircraft.date_from)
        ) 
        and not exists
        (select * 
            from ship_aircraft as sg1
            inner join ship_aircraft as sg2 on (sg1.ship_id = sg2.ship_id and sg1.aircraft_id = sg2.aircraft_id)
            where (sg1.date_from < sg2.date_from and sg2.date_from < sg1.date_to)
        )
        and not exists
        (select *
            from ship_aircraft
            inner join ship_list on (ship_aircraft.ship_id = ship_list.id)
            where (ship_aircraft.date_to > ship_list.sunk_date)
        ))
    then
    else
        raise exception 'временные парадоксы...';
    end if;
    return new;
end;
$$;

drop trigger if exists ship_aircraft_trigger on ship_aircraft;
create trigger ship_aircraft_trigger
    after insert or update
    on ship_aircraft
    for each statement
    execute procedure ship_aircraft_check();


create index on ship_aircraft(ship_id, date_from, date_to);
create index on ship_aircraft(aircraft_id);


