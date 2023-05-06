
create table ship_propulsion
(
    ship_id int not null,
    propulsion_id int not null,
    
    amount int not null,
    date_from date,
    date_to date,
    
    primary key (ship_id, propulsion_id, date_from),
    foreign key (ship_id) references ship_list(id)
        on delete restrict on update cascade
    /* 
        EMULATED BY TRIGGERS
    foreign key (propulsion_id) references propulsion(id)
        on delete restrict on update cascade
    */
);
alter table ship_propulsion add check (date_from <= date_to);
alter table ship_propulsion add check (amount > 0);


/* emulate foreign key */
create or replace function ship_propulsion_foreign_key_to_propulsion_sp ()
returns trigger
    language plpgsql
as $$
declare
begin
    set transaction isolation level read committed;
    if (exists
        (select * from propulsion
            where (propulsion.id = new.propulsion_id)
        ))
    then
    else
        raise exception 'ограничение внешнего ключа ship_propulsion.item_id -> propulsion.id';
    end if;
    return new;
end;
$$;

drop trigger if exists ship_propulsion_foreign_key_to_propulsion_trigger_sp on ship_propulsion;
create trigger ship_propulsion_foreign_key_to_propulsion_trigger_sp
    before insert or update
    on ship_propulsion
    for each row
    execute procedure ship_propulsion_foreign_key_to_propulsion_sp();

    
create or replace function ship_propulsion_foreign_key_to_propulsion_p ()
returns trigger
    language plpgsql
as $$
declare
begin
    set transaction isolation level read committed;
    if ((tg_op = 'DELETE' and exists
        (select * from ship_propulsion
            where (old.id = ship_propulsion.propulsion_id)
        ))
        or (tg_op = 'UPDATE' and exists
        (select * from ship_propulsion
            where (old.id = ship_propulsion.propulsion_id and old.id != new.id)
        )))
    then
        raise exception 'ограничение внешнего ключа ship_propulsion.item_id -> propulsion.id';
    else
    end if;
    return new;
end;
$$;

drop trigger if exists ship_propulsion_foreign_key_to_propulsion_trigger_p on propulsion;
create trigger ship_propulsion_foreign_key_to_propulsion_trigger_p
    before delete or update
    on propulsion
    for each row
    execute procedure ship_propulsion_foreign_key_to_propulsion_p();
/* foreign key emulated */

    

create or replace function ship_propulsion_check ()
returns trigger
    language plpgsql
as $$
declare
begin
    set transaction isolation level read committed;

    if (not exists
        (select *
            from propulsion
            inner join ship_propulsion on (ship_propulsion.propulsion_id = propulsion.id)
            where (propulsion.in_service > ship_propulsion.date_from)
        ) 
        and not exists
        (select * 
            from ship_propulsion as sg1
            inner join ship_propulsion as sg2 on (sg1.ship_id = sg2.ship_id and sg1.propulsion_id = sg2.propulsion_id)
            where (sg1.date_from < sg2.date_from and sg2.date_from < sg1.date_to)
        )
        and not exists
        (select *
            from ship_propulsion
            inner join ship_list on (ship_propulsion.ship_id = ship_list.id)
            where (ship_propulsion.date_to > ship_list.sunk_date)
        ))
    then
    else
        raise exception 'временные парадоксы...';
    end if;
    return new;
end;
$$;

drop trigger if exists ship_propulsion_trigger on ship_propulsion;
create trigger ship_propulsion_trigger
    after insert or update
    on ship_propulsion
    for each statement
    execute procedure ship_propulsion_check();


create index on ship_propulsion using hash (ship_id);
create index on ship_propulsion using hash (propulsion_id);



create or replace function ship_propulsion_install_check ()
returns trigger
    language plpgsql
as $$
declare
begin
    set transaction isolation level read committed;

    if (not exists
        (select (ship_id, propulsion_id, date_from) 
            from ship_propulsion
        except all select (ship_propulsion.ship_id, propulsion_id, ship_propulsion.date_from)
            from ship_propulsion 
            inner join ship_event_list on (ship_propulsion.ship_id = ship_event_list.ship_id)
            where (ship_event_list.date_from <= ship_propulsion.date_from) and
                  (ship_propulsion.date_from <= ship_event_list.date_to)
        except all select (ship_propulsion.ship_id, propulsion_id, ship_propulsion.date_from)
            from ship_propulsion 
            inner join ship_list on (ship_propulsion.ship_id = ship_list.id)
            where (ship_propulsion.date_from <= ship_list.commissioned)
        ))
    then
    else
        raise exception 'установка силовой установки в открытом море...';
    end if;
    return new;
end;
$$;

drop trigger if exists ship_propulsion_install_trigger on ship_propulsion;
create trigger ship_propulsion_install_trigger
    after insert or update
    on ship_propulsion
    for each statement
    execute procedure ship_propulsion_install_check();


