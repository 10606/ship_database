
create table ship_catapult
(
    ship_id int not null,
    catapult_id int not null,
    
    amount int not null,
    date_from date,
    date_to date,
    
    primary key (ship_id, catapult_id, date_from),
    foreign key (ship_id) references ship_list(id)
        on delete restrict on update cascade,
    foreign key (catapult_id) references catapult(id)
        on delete restrict on update cascade
);
alter table ship_catapult add check (date_from <= date_to);
alter table ship_catapult add check (amount > 0);

create or replace function ship_catapult_check ()
returns trigger
    language plpgsql
as $$
declare
begin
    set transaction isolation level read committed;

    if (not exists
        (select *
            from catapult
            inner join ship_catapult on (ship_catapult.catapult_id = catapult.id)
            where (catapult.in_service > ship_catapult.date_from)
        ) 
        and not exists
        (select * 
            from ship_catapult as sg1
            inner join ship_catapult as sg2 on (sg1.ship_id = sg2.ship_id and sg1.catapult_id = sg2.catapult_id)
            where (sg1.date_from < sg2.date_from and sg2.date_from < sg1.date_to)
        )
        and not exists
        (select *
            from ship_catapult
            inner join ship_list on (ship_catapult.ship_id = ship_list.id)
            where (ship_catapult.date_to > ship_list.sunk_date)
        ))
    then
    else
        raise exception 'временные парадоксы...';
    end if;
    return new;
end;
$$;

drop trigger if exists ship_catapult_trigger on ship_catapult;
create trigger ship_catapult_trigger
    after insert or update
    on ship_catapult
    for each statement
    execute procedure ship_catapult_check();


create index on ship_catapult(ship_id);
create index on ship_catapult(catapult_id);
create index on ship_catapult(date_from, date_to);
create index on ship_catapult(date_to, date_from);


