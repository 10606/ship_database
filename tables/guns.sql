
create table gun_class
(
    id int not null,
    parent_id int,
    name_ru varchar(100),
    name_en varchar(100),
    
    primary key (id),
    foreign key (parent_id) references gun_class(id)
        on delete restrict on update cascade
);

create index on gun_class(id);


create table gun_list
(
    id int not null,
    name_ru varchar(100),
    name_en varchar(100),
    caliber double precision, /* мм */
    length double precision,  /* калибров */
    class_id int not null, 
    rate_of_fire double precision,
    effective_range double precision, /* м */
    mass double precision, /* кг */
    build_cnt int,
    in_service date,
    
    primary key (id),
    foreign key (class_id) references gun_class(id)
        on delete restrict on update cascade
);
alter table gun_list add check (caliber > 0);
alter table gun_list add check (length >= 0);
alter table gun_list add check (rate_of_fire >= 0);
alter table gun_list add check (effective_range >= 0);
alter table gun_list add check (mass > 0);
alter table gun_list add check (build_cnt >= 0);

create index on gun_list(id);
create index on gun_list(class_id);


create table gun_mount
(
    id int not null,
    name_ru varchar(100),
    name_en varchar(100),
    gun_id int not null,
    gun_count int not null,
    angle double precision,
    
    primary key (id),
    foreign key (gun_id) references gun_list(id)
        on delete restrict on update cascade
);
alter table gun_mount add check (gun_count > 0);

create index on gun_mount(id);


