
create table general
(
    ship_id int not null,
    
    date_from date,
    date_to date,
    
    displacement_standart double precision,
    displacement_full double precision,
    
    length double precision,
    width double precision,
    draft double precision,
    
    crew int,
    
    speed_max double precision,
    speed_cruise double precision,
    
    range double precision,
    
    primary key (ship_id, date_from),
    foreign key (ship_id) references ship_list(id)
        on delete restrict on update cascade
);
alter table general add check (date_from <= date_to);
alter table general add check (displacement_standart <= displacement_full);
alter table general add check (crew >= 0);
alter table general add check (speed_max >= speed_cruise);
alter table general add check (speed_cruise >= 0);
alter table general add check (range >= 0);
alter table general add check (length >= 0);
alter table general add check (width >= 0);
alter table general add check (draft >= 0);


create or replace function general_check ()
returns trigger
    language plpgsql
as $$
declare
begin
    set transaction isolation level read committed;

    if (not exists
        (select * 
            from general as sg1
            inner join general as sg2 on (sg1.ship_id = sg2.ship_id)
            where (sg1.date_from < sg2.date_from and sg2.date_from < sg1.date_to)
        )
        and not exists
        (select *
            from general
            inner join ship_list on (general.ship_id = ship_list.id)
            where (general.date_to > ship_list.sunk_date)
        ))
    then
    else
        raise exception 'временные парадоксы...';
    end if;
    return new;
end;
$$;

drop trigger if exists general_trigger on general;
create trigger general_trigger
    after insert or update
    on general
    for each statement
    execute procedure general_check();


create index on general using hash (ship_id);

