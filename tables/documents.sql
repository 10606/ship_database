
create table documents_group
(
    id int not null,
    path_preview text,
    description text not null,

    primary key (id)
);

create table documents_general
(
    group_id int not null,
    path_document text not null,
    path_preview text,
    description text not null,
    priority int,
    
    primary key (group_id, path_document),
    foreign key (group_id) references ship_list(id)
        on delete restrict on update cascade
);

