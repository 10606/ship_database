
create table ship_class
(
    id int not null,
    parent_id int,
    name_ru varchar(100),
    name_en varchar(100),
    
    primary key (id),
    foreign key (parent_id) references ship_class(id)
        on delete restrict on update cascade
);

create index on ship_class(id);


create table ship_types
(
    id int not null,
    name_ru varchar(100),
    name_en varchar(100),
    
    primary key (id)
);

create index on ship_types(id);
create index on ship_types(name_ru);
create index on ship_types(name_en);


create table ship_list
(
    id int not null,
    class_id int not null,
    type_id int not null,
    name_ru varchar(100),
    name_en varchar(100),
    
    commissioned date,
    sunk_date date,
    sunk_reason text,
    
    primary key (id),
    foreign key (class_id) references ship_class(id)
        on delete restrict on update cascade,
    foreign key (type_id) references ship_types(id)
        on delete restrict on update cascade
);
alter table ship_list add check (commissioned <= sunk_date);

create index on ship_list(id);
create index on ship_list(name_ru);
create index on ship_list(name_en);
create index on ship_list(commissioned);
create index on ship_list(sunk_date);
create index on ship_list(type_id);
create index on ship_list(class_id);


