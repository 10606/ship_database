
create table ship_searchers
(
    ship_id int not null,
    searcher_id int not null,
    
    amount int not null,
    date_from date,
    date_to date,
    
    primary key (ship_id, searcher_id, date_from),
    foreign key (ship_id) references ship_list(id)
        on delete restrict on update cascade,
    foreign key (searcher_id) references searchers(id)
        on delete restrict on update cascade
);
alter table ship_searchers add check (date_from <= date_to);
alter table ship_searchers add check (amount > 0);

create or replace function ship_searchers_check ()
returns trigger
    language plpgsql
as $$
declare
begin
    set transaction isolation level read committed;

    if (not exists
        (select *
            from searchers
            inner join ship_searchers on (ship_searchers.searcher_id = searchers.id)
            where (searchers.in_service > ship_searchers.date_from)
        ) 
        and not exists
        (select * 
            from ship_searchers as sg1
            inner join ship_searchers as sg2 on (sg1.ship_id = sg2.ship_id and sg1.searcher_id = sg2.searcher_id)
            where (sg1.date_from < sg2.date_from and sg2.date_from < sg1.date_to)
        )
        and not exists
        (select *
            from ship_searchers
            inner join ship_list on (ship_searchers.ship_id = ship_list.id)
            where (ship_searchers.date_to > ship_list.sunk_date)
        ))
    then
    else
        raise exception 'временные парадоксы...';
    end if;
    return new;
end;
$$;

drop trigger if exists ship_searchers_trigger on ship_searchers;
create trigger ship_searchers_trigger
    after insert or update
    on ship_searchers
    for each statement
    execute procedure ship_searchers_check();


create index on ship_searchers(ship_id, date_from, date_to);
create index on ship_searchers(searcher_id);



create or replace function ship_searchers_install_check ()
returns trigger
    language plpgsql
as $$
declare
begin
    set transaction isolation level read committed;

    if (not exists
        (select (ship_id, searcher_id, date_from) 
            from ship_searchers
        except all select (ship_searchers.ship_id, searcher_id, ship_searchers.date_from)
            from ship_searchers 
            inner join ship_event_list on (ship_searchers.ship_id = ship_event_list.ship_id)
            where (ship_event_list.date_from <= ship_searchers.date_from) and
                  (ship_searchers.date_from <= ship_event_list.date_to)
        except all select (ship_searchers.ship_id, searcher_id, ship_searchers.date_from)
            from ship_searchers 
            inner join ship_list on (ship_searchers.ship_id = ship_list.id)
            where (ship_searchers.date_from <= ship_list.commissioned)
        ))
    then
    else
        raise exception 'установка чего-либо в открытом море...';
    end if;
    return new;
end;
$$;

drop trigger if exists ship_searchers_install_trigger on ship_searchers;
create trigger ship_searchers_install_trigger
    after insert or update
    on ship_searchers
    for each statement
    execute procedure ship_searchers_install_check();



