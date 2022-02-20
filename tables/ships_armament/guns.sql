
create table ship_guns
(
    ship_id int not null,
    mount_id int not null,
    
    amount int not null,
    date_from date,
    date_to date,
    
    primary key (ship_id, mount_id, date_from),
    foreign key (ship_id) references ship_list(id)
        on delete restrict on update cascade,
    foreign key (mount_id) references gun_mount(id)
        on delete restrict on update cascade
);
alter table ship_guns add check (date_from <= date_to);
alter table ship_guns add check (amount > 0);

create or replace function ship_guns_check ()
returns trigger
    language plpgsql
as $$
declare
begin
    set transaction isolation level read committed;

    if (not exists
        (select *
            from gun_list
            inner join gun_mount on (gun_list.id = gun_mount.gun_id)
            inner join ship_guns on (ship_guns.mount_id = gun_mount.id)
            where (gun_list.in_service > ship_guns.date_from)
        ) 
        and not exists
        (select * 
            from ship_guns as sg1
            inner join ship_guns as sg2 on (sg1.ship_id = sg2.ship_id and sg1.mount_id = sg2.mount_id)
            where (sg1.date_from < sg2.date_from and sg2.date_from < sg1.date_to)
        )
        and not exists
        (select *
            from ship_guns
            inner join ship_list on (ship_guns.ship_id = ship_list.id)
            where (ship_guns.date_to > ship_list.sunk_date)
        ))
    then
    else
        raise exception 'временные парадоксы...';
    end if;
    return new;
end;
$$;

drop trigger if exists ship_guns_trigger on ship_guns;
create trigger ship_guns_trigger
    after insert or update
    on ship_guns
    for each statement
    execute procedure ship_guns_check();


create index on ship_guns(ship_id);
create index on ship_guns(mount_id);
create index on ship_guns(date_from, date_to);
create index on ship_guns(date_to, date_from);


