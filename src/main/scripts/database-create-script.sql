create table category (id bigint not null, name varchar(255), primary key (id)) engine=InnoDB;
create table hibernate_sequence (next_val bigint) engine=InnoDB;
insert into hibernate_sequence values ( 1 );
insert into hibernate_sequence values ( 1 );
insert into hibernate_sequence values ( 1 );
insert into hibernate_sequence values ( 1 );
insert into hibernate_sequence values ( 1 );
insert into hibernate_sequence values ( 1 );
insert into hibernate_sequence values ( 1 );
create table ingredient (id bigint not null, amount decimal(19,2), name varchar(255), recipe_id bigint, unite_of_measure_id bigint, primary key (id)) engine=InnoDB;
create table recipe (id bigint not null, cook_time integer, description longtext, difficulty varchar(255), text longtext, prep_time integer, preparing longtext, servings integer, url varchar(255), recipe_id bigint, user_id bigint, primary key (id)) engine=InnoDB;
create table recipe_category (recipe_id bigint not null, category_id bigint not null) engine=InnoDB;
create table role (id integer not null, role_name varchar(255), primary key (id)) engine=InnoDB;
create table unite_of_measure (id bigint not null, name varchar(255), primary key (id)) engine=InnoDB;
create table user (id bigint not null, email varchar(255), first_name varchar(255), last_name varchar(255), password_hash varchar(255), user_address_id bigint, primary key (id)) engine=InnoDB;
create table user_role (user_id bigint not null, roles_id integer not null, primary key (user_id, roles_id)) engine=InnoDB;
create table user_address (id bigint not null, city varchar(255), country varchar(255), street varchar(255), zip_code varchar(255), user_id bigint, primary key (id)) engine=InnoDB;
alter table ingredient add constraint FKj0s4ywmqqqw4h5iommigh5yja foreign key (recipe_id) references recipe (id);
alter table ingredient add constraint FKt5yi3vuj96ctqr7ltbl8wqv70 foreign key (unite_of_measure_id) references unite_of_measure (id);
alter table recipe add constraint FKrjfh74dmis7nge958eu38ga5t foreign key (recipe_id) references recipe (id);
alter table recipe add constraint FKc8o8io8s0f7nqcd3429u6cxjs foreign key (user_id) references user (id);
alter table recipe_category add constraint FKqsi87i8d4qqdehlv2eiwvpwb foreign key (category_id) references category (id);
alter table recipe_category add constraint FKcqlqnvfyarhieewfeayk3v25v foreign key (recipe_id) references recipe (id);
alter table user add constraint FK20x625ux9m5akvxbh58de7vqe foreign key (user_address_id) references user_address (id);
alter table user_role add constraint FKeog8p06nu33ihk13roqnrp1y6 foreign key (roles_id) references role (id);
alter table user_role add constraint FK859n2jvi8ivhui0rl0esws6o foreign key (user_id) references user (id);
alter table user_address add constraint FKk2ox3w9jm7yd6v1m5f68xibry foreign key (user_id) references user (id);
create table category (id bigint not null, name varchar(255), primary key (id)) engine=InnoDB
create table hibernate_sequence (next_val bigint) engine=InnoDB
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
create table ingredient (id bigint not null, amount decimal(19,2), name varchar(255), recipe_id bigint, unite_of_measure_id bigint, primary key (id)) engine=InnoDB
create table recipe (id bigint not null, cook_time integer, description longtext, difficulty varchar(255), text longtext, prep_time integer, preparing longtext, servings integer, url varchar(255), recipe_id bigint, user_id bigint, primary key (id)) engine=InnoDB
create table recipe_category (recipe_id bigint not null, category_id bigint not null) engine=InnoDB
create table role (id integer not null, role_name varchar(255), primary key (id)) engine=InnoDB
create table unite_of_measure (id bigint not null, name varchar(255), primary key (id)) engine=InnoDB
create table user (id bigint not null, email varchar(255), first_name varchar(255), last_name varchar(255), password_hash varchar(255), user_address_id bigint, primary key (id)) engine=InnoDB
create table user_role (user_id bigint not null, roles_id integer not null, primary key (user_id, roles_id)) engine=InnoDB
create table user_address (id bigint not null, city varchar(255), country varchar(255), street varchar(255), zip_code varchar(255), user_id bigint, primary key (id)) engine=InnoDB
alter table ingredient add constraint FKj0s4ywmqqqw4h5iommigh5yja foreign key (recipe_id) references recipe (id)
alter table ingredient add constraint FKt5yi3vuj96ctqr7ltbl8wqv70 foreign key (unite_of_measure_id) references unite_of_measure (id)
alter table recipe add constraint FKrjfh74dmis7nge958eu38ga5t foreign key (recipe_id) references recipe (id)
alter table recipe add constraint FKc8o8io8s0f7nqcd3429u6cxjs foreign key (user_id) references user (id)
alter table recipe_category add constraint FKqsi87i8d4qqdehlv2eiwvpwb foreign key (category_id) references category (id)
alter table recipe_category add constraint FKcqlqnvfyarhieewfeayk3v25v foreign key (recipe_id) references recipe (id)
alter table user add constraint FK20x625ux9m5akvxbh58de7vqe foreign key (user_address_id) references user_address (id)
alter table user_role add constraint FKeog8p06nu33ihk13roqnrp1y6 foreign key (roles_id) references role (id)
alter table user_role add constraint FK859n2jvi8ivhui0rl0esws6o foreign key (user_id) references user (id)
alter table user_address add constraint FKk2ox3w9jm7yd6v1m5f68xibry foreign key (user_id) references user (id)
create table category (id bigint not null, name varchar(255), primary key (id)) engine=InnoDB
create table hibernate_sequence (next_val bigint) engine=InnoDB
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
create table ingredient (id bigint not null, amount decimal(19,2), name varchar(255), recipe_id bigint, unite_of_measure_id bigint, primary key (id)) engine=InnoDB
create table recipe (id bigint not null, cook_time integer, description longtext, difficulty varchar(255), text longtext, prep_time integer, preparing longtext, servings integer, url varchar(255), recipe_id bigint, user_id bigint, primary key (id)) engine=InnoDB
create table recipe_category (recipe_id bigint not null, category_id bigint not null) engine=InnoDB
create table role (id integer not null, role_name varchar(255), primary key (id)) engine=InnoDB
create table unite_of_measure (id bigint not null, name varchar(255), primary key (id)) engine=InnoDB
create table user (id bigint not null, email varchar(255), first_name varchar(255), last_name varchar(255), password_hash varchar(255), user_address_id bigint, primary key (id)) engine=InnoDB
create table user_role (user_id bigint not null, roles_id integer not null, primary key (user_id, roles_id)) engine=InnoDB
create table user_address (id bigint not null, city varchar(255), country varchar(255), street varchar(255), zip_code varchar(255), user_id bigint, primary key (id)) engine=InnoDB
alter table ingredient add constraint FKj0s4ywmqqqw4h5iommigh5yja foreign key (recipe_id) references recipe (id)
alter table ingredient add constraint FKt5yi3vuj96ctqr7ltbl8wqv70 foreign key (unite_of_measure_id) references unite_of_measure (id)
alter table recipe add constraint FKrjfh74dmis7nge958eu38ga5t foreign key (recipe_id) references recipe (id)
alter table recipe add constraint FKc8o8io8s0f7nqcd3429u6cxjs foreign key (user_id) references user (id)
alter table recipe_category add constraint FKqsi87i8d4qqdehlv2eiwvpwb foreign key (category_id) references category (id)
alter table recipe_category add constraint FKcqlqnvfyarhieewfeayk3v25v foreign key (recipe_id) references recipe (id)
alter table user add constraint FK20x625ux9m5akvxbh58de7vqe foreign key (user_address_id) references user_address (id)
alter table user_role add constraint FKeog8p06nu33ihk13roqnrp1y6 foreign key (roles_id) references role (id)
alter table user_role add constraint FK859n2jvi8ivhui0rl0esws6o foreign key (user_id) references user (id)
alter table user_address add constraint FKk2ox3w9jm7yd6v1m5f68xibry foreign key (user_id) references user (id)
create table category (id bigint not null, name varchar(255), primary key (id)) engine=InnoDB
create table hibernate_sequence (next_val bigint) engine=InnoDB
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
create table ingredient (id bigint not null, amount decimal(19,2), name varchar(255), recipe_id bigint, unite_of_measure_id bigint, primary key (id)) engine=InnoDB
create table recipe (id bigint not null, cook_time integer, description longtext, difficulty varchar(255), text longtext, prep_time integer, preparing longtext, servings integer, url varchar(255), recipe_id bigint, user_id bigint, primary key (id)) engine=InnoDB
create table recipe_category (recipe_id bigint not null, category_id bigint not null) engine=InnoDB
create table role (id integer not null, role_name varchar(255), primary key (id)) engine=InnoDB
create table unite_of_measure (id bigint not null, name varchar(255), primary key (id)) engine=InnoDB
create table user (id bigint not null, email varchar(255), first_name varchar(255), last_name varchar(255), password_hash varchar(255), user_address_id bigint, primary key (id)) engine=InnoDB
create table user_role (user_id bigint not null, roles_id integer not null, primary key (user_id, roles_id)) engine=InnoDB
create table user_address (id bigint not null, city varchar(255), country varchar(255), street varchar(255), zip_code varchar(255), primary key (id)) engine=InnoDB
alter table ingredient add constraint FKj0s4ywmqqqw4h5iommigh5yja foreign key (recipe_id) references recipe (id)
alter table ingredient add constraint FKt5yi3vuj96ctqr7ltbl8wqv70 foreign key (unite_of_measure_id) references unite_of_measure (id)
alter table recipe add constraint FKrjfh74dmis7nge958eu38ga5t foreign key (recipe_id) references recipe (id)
alter table recipe add constraint FKc8o8io8s0f7nqcd3429u6cxjs foreign key (user_id) references user (id)
alter table recipe_category add constraint FKqsi87i8d4qqdehlv2eiwvpwb foreign key (category_id) references category (id)
alter table recipe_category add constraint FKcqlqnvfyarhieewfeayk3v25v foreign key (recipe_id) references recipe (id)
alter table user add constraint FK20x625ux9m5akvxbh58de7vqe foreign key (user_address_id) references user_address (id)
alter table user_role add constraint FKeog8p06nu33ihk13roqnrp1y6 foreign key (roles_id) references role (id)
alter table user_role add constraint FK859n2jvi8ivhui0rl0esws6o foreign key (user_id) references user (id)
create table category (id bigint not null, name varchar(255), primary key (id)) engine=InnoDB
create table hibernate_sequence (next_val bigint) engine=InnoDB
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
create table ingredient (id bigint not null, amount decimal(19,2), name varchar(255), recipe_id bigint, unite_of_measure_id bigint, primary key (id)) engine=InnoDB
create table recipe (id bigint not null, cook_time integer, description longtext, difficulty varchar(255), text longtext, prep_time integer, preparing longtext, servings integer, url varchar(255), recipe_id bigint, user_id bigint, primary key (id)) engine=InnoDB
create table recipe_category (recipe_id bigint not null, category_id bigint not null) engine=InnoDB
create table role (id integer not null, role_name varchar(255), primary key (id)) engine=InnoDB
create table unite_of_measure (id bigint not null, name varchar(255), primary key (id)) engine=InnoDB
create table user (id bigint not null, email varchar(255), first_name varchar(255), last_name varchar(255), password_hash varchar(255), user_address_id bigint, primary key (id)) engine=InnoDB
create table user_role (user_id bigint not null, roles_id integer not null, primary key (user_id, roles_id)) engine=InnoDB
create table user_address (id bigint not null, city varchar(255), country varchar(255), street varchar(255), zip_code varchar(255), primary key (id)) engine=InnoDB
alter table ingredient add constraint FKj0s4ywmqqqw4h5iommigh5yja foreign key (recipe_id) references recipe (id)
alter table ingredient add constraint FKt5yi3vuj96ctqr7ltbl8wqv70 foreign key (unite_of_measure_id) references unite_of_measure (id)
alter table recipe add constraint FKrjfh74dmis7nge958eu38ga5t foreign key (recipe_id) references recipe (id)
alter table recipe add constraint FKc8o8io8s0f7nqcd3429u6cxjs foreign key (user_id) references user (id)
alter table recipe_category add constraint FKqsi87i8d4qqdehlv2eiwvpwb foreign key (category_id) references category (id)
alter table recipe_category add constraint FKcqlqnvfyarhieewfeayk3v25v foreign key (recipe_id) references recipe (id)
alter table user add constraint FK20x625ux9m5akvxbh58de7vqe foreign key (user_address_id) references user_address (id)
alter table user_role add constraint FKeog8p06nu33ihk13roqnrp1y6 foreign key (roles_id) references role (id)
alter table user_role add constraint FK859n2jvi8ivhui0rl0esws6o foreign key (user_id) references user (id)
create table category (id bigint not null, name varchar(255), primary key (id)) engine=InnoDB
create table hibernate_sequence (next_val bigint) engine=InnoDB
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
create table ingredient (id bigint not null, amount decimal(19,2), name varchar(255), recipe_id bigint, unite_of_measure_id bigint, primary key (id)) engine=InnoDB
create table recipe (id bigint not null, cook_time integer, description longtext, difficulty varchar(255), text longtext, prep_time integer, preparing longtext, servings integer, url varchar(255), recipe_id bigint, user_id bigint, primary key (id)) engine=InnoDB
create table recipe_category (recipe_id bigint not null, category_id bigint not null) engine=InnoDB
create table role (id integer not null, role_name varchar(255), primary key (id)) engine=InnoDB
create table unite_of_measure (id bigint not null, name varchar(255), primary key (id)) engine=InnoDB
create table user (id bigint not null, email varchar(255), first_name varchar(255), last_name varchar(255), password_hash varchar(255), user_address_id bigint, primary key (id)) engine=InnoDB
create table user_role (user_id bigint not null, roles_id integer not null, primary key (user_id, roles_id)) engine=InnoDB
create table user_address (id bigint not null, city varchar(255), country varchar(255), street varchar(255), zip_code varchar(255), primary key (id)) engine=InnoDB
alter table ingredient add constraint FKj0s4ywmqqqw4h5iommigh5yja foreign key (recipe_id) references recipe (id)
alter table ingredient add constraint FKt5yi3vuj96ctqr7ltbl8wqv70 foreign key (unite_of_measure_id) references unite_of_measure (id)
alter table recipe add constraint FKrjfh74dmis7nge958eu38ga5t foreign key (recipe_id) references recipe (id)
alter table recipe add constraint FKc8o8io8s0f7nqcd3429u6cxjs foreign key (user_id) references user (id)
alter table recipe_category add constraint FKqsi87i8d4qqdehlv2eiwvpwb foreign key (category_id) references category (id)
alter table recipe_category add constraint FKcqlqnvfyarhieewfeayk3v25v foreign key (recipe_id) references recipe (id)
alter table user add constraint FK20x625ux9m5akvxbh58de7vqe foreign key (user_address_id) references user_address (id)
alter table user_role add constraint FKeog8p06nu33ihk13roqnrp1y6 foreign key (roles_id) references role (id)
alter table user_role add constraint FK859n2jvi8ivhui0rl0esws6o foreign key (user_id) references user (id)
create table category (id bigint not null, name varchar(255), primary key (id)) engine=InnoDB
create table hibernate_sequence (next_val bigint) engine=InnoDB
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
create table ingredient (id bigint not null, amount decimal(19,2), name varchar(255), recipe_id bigint, unite_of_measure_id bigint, primary key (id)) engine=InnoDB
create table recipe (id bigint not null, cook_time integer, description longtext, difficulty varchar(255), text longtext, prep_time integer, preparing longtext, servings integer, url varchar(255), recipe_id bigint, user_id bigint, primary key (id)) engine=InnoDB
create table recipe_category (recipe_id bigint not null, category_id bigint not null) engine=InnoDB
create table role (id integer not null, role_name varchar(255), primary key (id)) engine=InnoDB
create table unite_of_measure (id bigint not null, name varchar(255), primary key (id)) engine=InnoDB
create table user (id bigint not null, email varchar(255), first_name varchar(255), last_name varchar(255), password_hash varchar(255), user_address_id bigint, primary key (id)) engine=InnoDB
create table user_role (user_id bigint not null, roles_id integer not null, primary key (user_id, roles_id)) engine=InnoDB
create table user_address (id bigint not null, city varchar(255), country varchar(255), street varchar(255), zip_code varchar(255), primary key (id)) engine=InnoDB
alter table ingredient add constraint FKj0s4ywmqqqw4h5iommigh5yja foreign key (recipe_id) references recipe (id)
alter table ingredient add constraint FKt5yi3vuj96ctqr7ltbl8wqv70 foreign key (unite_of_measure_id) references unite_of_measure (id)
alter table recipe add constraint FKrjfh74dmis7nge958eu38ga5t foreign key (recipe_id) references recipe (id)
alter table recipe add constraint FKc8o8io8s0f7nqcd3429u6cxjs foreign key (user_id) references user (id)
alter table recipe_category add constraint FKqsi87i8d4qqdehlv2eiwvpwb foreign key (category_id) references category (id)
alter table recipe_category add constraint FKcqlqnvfyarhieewfeayk3v25v foreign key (recipe_id) references recipe (id)
alter table user add constraint FK20x625ux9m5akvxbh58de7vqe foreign key (user_address_id) references user_address (id)
alter table user_role add constraint FKeog8p06nu33ihk13roqnrp1y6 foreign key (roles_id) references role (id)
alter table user_role add constraint FK859n2jvi8ivhui0rl0esws6o foreign key (user_id) references user (id)
create table category (id bigint not null, name varchar(255), primary key (id)) engine=InnoDB
create table hibernate_sequence (next_val bigint) engine=InnoDB
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
create table ingredient (id bigint not null, amount decimal(19,2), name varchar(255), recipe_id bigint, unite_of_measure_id bigint, primary key (id)) engine=InnoDB
create table recipe (id bigint not null, cook_time integer, description longtext, difficulty varchar(255), text longtext, prep_time integer, preparing longtext, servings integer, url varchar(255), recipe_id bigint, user_id bigint, primary key (id)) engine=InnoDB
create table recipe_category (recipe_id bigint not null, category_id bigint not null) engine=InnoDB
create table role (id integer not null, role_name varchar(255), primary key (id)) engine=InnoDB
create table unite_of_measure (id bigint not null, name varchar(255), primary key (id)) engine=InnoDB
create table user (id bigint not null, email varchar(255), first_name varchar(255), last_name varchar(255), password_hash varchar(255), user_address_id bigint, primary key (id)) engine=InnoDB
create table user_role (user_id bigint not null, roles_id integer not null, primary key (user_id, roles_id)) engine=InnoDB
create table user_address (id bigint not null, city varchar(255), country varchar(255), street varchar(255), zip_code varchar(255), primary key (id)) engine=InnoDB
alter table ingredient add constraint FKj0s4ywmqqqw4h5iommigh5yja foreign key (recipe_id) references recipe (id)
alter table ingredient add constraint FKt5yi3vuj96ctqr7ltbl8wqv70 foreign key (unite_of_measure_id) references unite_of_measure (id)
alter table recipe add constraint FKrjfh74dmis7nge958eu38ga5t foreign key (recipe_id) references recipe (id)
alter table recipe add constraint FKc8o8io8s0f7nqcd3429u6cxjs foreign key (user_id) references user (id)
alter table recipe_category add constraint FKqsi87i8d4qqdehlv2eiwvpwb foreign key (category_id) references category (id)
alter table recipe_category add constraint FKcqlqnvfyarhieewfeayk3v25v foreign key (recipe_id) references recipe (id)
alter table user add constraint FK20x625ux9m5akvxbh58de7vqe foreign key (user_address_id) references user_address (id)
alter table user_role add constraint FKeog8p06nu33ihk13roqnrp1y6 foreign key (roles_id) references role (id)
alter table user_role add constraint FK859n2jvi8ivhui0rl0esws6o foreign key (user_id) references user (id)
create table category (id bigint not null, name varchar(255), primary key (id)) engine=InnoDB
create table hibernate_sequence (next_val bigint) engine=InnoDB
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
create table ingredient (id bigint not null, amount decimal(19,2), name varchar(255), recipe_id bigint, unite_of_measure_id bigint, primary key (id)) engine=InnoDB
create table recipe (id bigint not null, cook_time integer, description longtext, difficulty varchar(255), text longtext, prep_time integer, preparing longtext, servings integer, url varchar(255), recipe_id bigint, user_id bigint, primary key (id)) engine=InnoDB
create table recipe_category (recipe_id bigint not null, categories_id bigint not null) engine=InnoDB
create table role (id integer not null, role_name varchar(255), primary key (id)) engine=InnoDB
create table unite_of_measure (id bigint not null, name varchar(255), primary key (id)) engine=InnoDB
create table user (id bigint not null, email varchar(255), first_name varchar(255), last_name varchar(255), password_hash varchar(255), user_address_id bigint, primary key (id)) engine=InnoDB
create table user_role (user_id bigint not null, roles_id integer not null, primary key (user_id, roles_id)) engine=InnoDB
create table user_address (id bigint not null, city varchar(255), country varchar(255), street varchar(255), zip_code varchar(255), primary key (id)) engine=InnoDB
alter table ingredient add constraint FKj0s4ywmqqqw4h5iommigh5yja foreign key (recipe_id) references recipe (id)
alter table ingredient add constraint FKt5yi3vuj96ctqr7ltbl8wqv70 foreign key (unite_of_measure_id) references unite_of_measure (id)
alter table recipe add constraint FKrjfh74dmis7nge958eu38ga5t foreign key (recipe_id) references recipe (id)
alter table recipe add constraint FKc8o8io8s0f7nqcd3429u6cxjs foreign key (user_id) references user (id)
alter table recipe_category add constraint FKhclllxlem5hesjgt1vg1hjkjs foreign key (categories_id) references category (id)
alter table recipe_category add constraint FKcqlqnvfyarhieewfeayk3v25v foreign key (recipe_id) references recipe (id)
alter table user add constraint FK20x625ux9m5akvxbh58de7vqe foreign key (user_address_id) references user_address (id)
alter table user_role add constraint FKeog8p06nu33ihk13roqnrp1y6 foreign key (roles_id) references role (id)
alter table user_role add constraint FK859n2jvi8ivhui0rl0esws6o foreign key (user_id) references user (id)
create table category (id bigint not null, name varchar(255), primary key (id)) engine=InnoDB
create table hibernate_sequence (next_val bigint) engine=InnoDB
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
create table ingredient (id bigint not null, amount decimal(19,2), name varchar(255), recipe_id bigint, unite_of_measure_id bigint, primary key (id)) engine=InnoDB
create table recipe (id bigint not null, cook_time integer, description longtext, difficulty varchar(255), text longtext, prep_time integer, preparing longtext, servings integer, url varchar(255), recipe_id bigint, user_id bigint, primary key (id)) engine=InnoDB
create table recipe_category (recipe_id bigint not null, categories_id bigint not null) engine=InnoDB
create table role (id integer not null, role_name varchar(255), primary key (id)) engine=InnoDB
create table unite_of_measure (id bigint not null, name varchar(255), primary key (id)) engine=InnoDB
create table user (id bigint not null, email varchar(255), first_name varchar(255), last_name varchar(255), password_hash varchar(255), user_address_id bigint, primary key (id)) engine=InnoDB
create table user_role (user_id bigint not null, roles_id integer not null, primary key (user_id, roles_id)) engine=InnoDB
create table user_address (id bigint not null, city varchar(255), country varchar(255), street varchar(255), zip_code varchar(255), primary key (id)) engine=InnoDB
alter table ingredient add constraint FKj0s4ywmqqqw4h5iommigh5yja foreign key (recipe_id) references recipe (id)
alter table ingredient add constraint FKt5yi3vuj96ctqr7ltbl8wqv70 foreign key (unite_of_measure_id) references unite_of_measure (id)
alter table recipe add constraint FKrjfh74dmis7nge958eu38ga5t foreign key (recipe_id) references recipe (id)
alter table recipe add constraint FKc8o8io8s0f7nqcd3429u6cxjs foreign key (user_id) references user (id)
alter table recipe_category add constraint FKhclllxlem5hesjgt1vg1hjkjs foreign key (categories_id) references category (id)
alter table recipe_category add constraint FKcqlqnvfyarhieewfeayk3v25v foreign key (recipe_id) references recipe (id)
alter table user add constraint FK20x625ux9m5akvxbh58de7vqe foreign key (user_address_id) references user_address (id)
alter table user_role add constraint FKeog8p06nu33ihk13roqnrp1y6 foreign key (roles_id) references role (id)
alter table user_role add constraint FK859n2jvi8ivhui0rl0esws6o foreign key (user_id) references user (id)
create table category (id bigint not null, name varchar(255), primary key (id)) engine=InnoDB
create table hibernate_sequence (next_val bigint) engine=InnoDB
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
create table ingredient (id bigint not null, amount decimal(19,2), name varchar(255), recipe_id bigint, unite_of_measure_id bigint, primary key (id)) engine=InnoDB
create table recipe (id bigint not null, cook_time integer, description longtext, difficulty varchar(255), note varchar(255), prep_time integer, preparing longtext, servings integer, url varchar(255), user_id bigint, primary key (id)) engine=InnoDB
create table recipe_category (recipe_id bigint not null, categories_id bigint not null) engine=InnoDB
create table role (id integer not null, role_name varchar(255), primary key (id)) engine=InnoDB
create table unite_of_measure (id bigint not null, name varchar(255), primary key (id)) engine=InnoDB
create table user (id bigint not null, email varchar(255), first_name varchar(255), last_name varchar(255), password_hash varchar(255), user_address_id bigint, primary key (id)) engine=InnoDB
create table user_role (user_id bigint not null, roles_id integer not null, primary key (user_id, roles_id)) engine=InnoDB
create table user_address (id bigint not null, city varchar(255), country varchar(255), street varchar(255), zip_code varchar(255), primary key (id)) engine=InnoDB
alter table ingredient add constraint FKj0s4ywmqqqw4h5iommigh5yja foreign key (recipe_id) references recipe (id)
alter table ingredient add constraint FKt5yi3vuj96ctqr7ltbl8wqv70 foreign key (unite_of_measure_id) references unite_of_measure (id)
alter table recipe add constraint FKc8o8io8s0f7nqcd3429u6cxjs foreign key (user_id) references user (id)
alter table recipe_category add constraint FKhclllxlem5hesjgt1vg1hjkjs foreign key (categories_id) references category (id)
alter table recipe_category add constraint FKcqlqnvfyarhieewfeayk3v25v foreign key (recipe_id) references recipe (id)
alter table user add constraint FK20x625ux9m5akvxbh58de7vqe foreign key (user_address_id) references user_address (id)
alter table user_role add constraint FKeog8p06nu33ihk13roqnrp1y6 foreign key (roles_id) references role (id)
alter table user_role add constraint FK859n2jvi8ivhui0rl0esws6o foreign key (user_id) references user (id)
create table category (id bigint not null, name varchar(255), primary key (id)) engine=InnoDB
create table hibernate_sequence (next_val bigint) engine=InnoDB
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
create table ingredient (id bigint not null, amount decimal(19,2), name varchar(255), recipe_id bigint, unit_of_measure_id bigint, primary key (id)) engine=InnoDB
create table recipe (id bigint not null, cook_time integer, difficulty varchar(255), name longtext, note varchar(255), prep_time integer, preparing longtext, servings integer, url varchar(255), user_id bigint, primary key (id)) engine=InnoDB
create table recipe_category (recipe_id bigint not null, categories_id bigint not null) engine=InnoDB
create table role (id integer not null, role_name varchar(255), primary key (id)) engine=InnoDB
create table unit_of_measure (id bigint not null, name varchar(255), primary key (id)) engine=InnoDB
create table user (id bigint not null, email varchar(255), first_name varchar(255), last_name varchar(255), password_hash varchar(255), user_address_id bigint, primary key (id)) engine=InnoDB
create table user_role (user_id bigint not null, roles_id integer not null, primary key (user_id, roles_id)) engine=InnoDB
create table user_address (id bigint not null, city varchar(255), country varchar(255), street varchar(255), zip_code varchar(255), primary key (id)) engine=InnoDB
alter table ingredient add constraint FKj0s4ywmqqqw4h5iommigh5yja foreign key (recipe_id) references recipe (id)
alter table ingredient add constraint FK15ttfoaomqy1bbpo251fuidxw foreign key (unit_of_measure_id) references unit_of_measure (id)
alter table recipe add constraint FKc8o8io8s0f7nqcd3429u6cxjs foreign key (user_id) references user (id)
alter table recipe_category add constraint FKhclllxlem5hesjgt1vg1hjkjs foreign key (categories_id) references category (id)
alter table recipe_category add constraint FKcqlqnvfyarhieewfeayk3v25v foreign key (recipe_id) references recipe (id)
alter table user add constraint FK20x625ux9m5akvxbh58de7vqe foreign key (user_address_id) references user_address (id)
alter table user_role add constraint FKeog8p06nu33ihk13roqnrp1y6 foreign key (roles_id) references role (id)
alter table user_role add constraint FK859n2jvi8ivhui0rl0esws6o foreign key (user_id) references user (id)
create table category (id bigint not null, name varchar(255), primary key (id)) engine=InnoDB
create table hibernate_sequence (next_val bigint) engine=InnoDB
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
create table ingredient (id bigint not null, amount decimal(19,2), name varchar(255), recipe_id bigint, unit_of_measure_id bigint, primary key (id)) engine=InnoDB
create table recipe (id bigint not null, cook_time integer, difficulty varchar(255), name longtext, note varchar(255), prep_time integer, preparing longtext, servings integer, url varchar(255), user_id bigint, primary key (id)) engine=InnoDB
create table recipe_category (recipe_id bigint not null, categories_id bigint not null) engine=InnoDB
create table role (id integer not null, role_name varchar(255), primary key (id)) engine=InnoDB
create table unit_of_measure (id bigint not null, name varchar(255), primary key (id)) engine=InnoDB
create table user (id bigint not null, email varchar(255), first_name varchar(255), last_name varchar(255), password_hash varchar(255), user_address_id bigint, primary key (id)) engine=InnoDB
create table user_role (user_id bigint not null, roles_id integer not null, primary key (user_id, roles_id)) engine=InnoDB
create table user_address (id bigint not null, city varchar(255), country varchar(255), street varchar(255), zip_code varchar(255), primary key (id)) engine=InnoDB
alter table ingredient add constraint FKj0s4ywmqqqw4h5iommigh5yja foreign key (recipe_id) references recipe (id)
alter table ingredient add constraint FK15ttfoaomqy1bbpo251fuidxw foreign key (unit_of_measure_id) references unit_of_measure (id)
alter table recipe add constraint FKc8o8io8s0f7nqcd3429u6cxjs foreign key (user_id) references user (id)
alter table recipe_category add constraint FKhclllxlem5hesjgt1vg1hjkjs foreign key (categories_id) references category (id)
alter table recipe_category add constraint FKcqlqnvfyarhieewfeayk3v25v foreign key (recipe_id) references recipe (id)
alter table user add constraint FK20x625ux9m5akvxbh58de7vqe foreign key (user_address_id) references user_address (id)
alter table user_role add constraint FKeog8p06nu33ihk13roqnrp1y6 foreign key (roles_id) references role (id)
alter table user_role add constraint FK859n2jvi8ivhui0rl0esws6o foreign key (user_id) references user (id)
create table category (id bigint not null, name varchar(255), primary key (id)) engine=InnoDB
create table hibernate_sequence (next_val bigint) engine=InnoDB
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
create table ingredient (id bigint not null, amount decimal(19,2), name varchar(255), recipe_id bigint, unit_of_measure_id bigint, primary key (id)) engine=InnoDB
create table recipe (id bigint not null, cook_time integer, difficulty varchar(255), name longtext, note varchar(255), prep_time integer, preparing longtext, servings integer, url varchar(255), user_id bigint, primary key (id)) engine=InnoDB
create table recipe_category (recipe_id bigint not null, categories_id bigint not null) engine=InnoDB
create table role (id integer not null, role_name varchar(255), primary key (id)) engine=InnoDB
create table unit_of_measure (id bigint not null, name varchar(255), primary key (id)) engine=InnoDB
create table user (id bigint not null, email varchar(255), first_name varchar(255), last_name varchar(255), password_hash varchar(255), user_address_id bigint, primary key (id)) engine=InnoDB
create table user_role (user_id bigint not null, roles_id integer not null, primary key (user_id, roles_id)) engine=InnoDB
create table user_address (id bigint not null, city varchar(255), country varchar(255), street varchar(255), zip_code varchar(255), primary key (id)) engine=InnoDB
alter table ingredient add constraint FKj0s4ywmqqqw4h5iommigh5yja foreign key (recipe_id) references recipe (id)
alter table ingredient add constraint FK15ttfoaomqy1bbpo251fuidxw foreign key (unit_of_measure_id) references unit_of_measure (id)
alter table recipe add constraint FKc8o8io8s0f7nqcd3429u6cxjs foreign key (user_id) references user (id)
alter table recipe_category add constraint FKhclllxlem5hesjgt1vg1hjkjs foreign key (categories_id) references category (id)
alter table recipe_category add constraint FKcqlqnvfyarhieewfeayk3v25v foreign key (recipe_id) references recipe (id)
alter table user add constraint FK20x625ux9m5akvxbh58de7vqe foreign key (user_address_id) references user_address (id)
alter table user_role add constraint FKeog8p06nu33ihk13roqnrp1y6 foreign key (roles_id) references role (id)
alter table user_role add constraint FK859n2jvi8ivhui0rl0esws6o foreign key (user_id) references user (id)
create table category (id bigint not null, name varchar(255), primary key (id)) engine=InnoDB
create table hibernate_sequence (next_val bigint) engine=InnoDB
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
create table ingredient (id bigint not null, amount decimal(19,2), name varchar(255), recipe_id bigint, unit_of_measure_id bigint, primary key (id)) engine=InnoDB
create table recipe (id bigint not null, cook_time integer, difficulty varchar(255), name longtext, note varchar(255), prep_time integer, preparing longtext, servings integer, url varchar(255), user_id bigint, primary key (id)) engine=InnoDB
create table recipe_category (recipe_id bigint not null, categories_id bigint not null) engine=InnoDB
create table role (id integer not null, role_name varchar(255), primary key (id)) engine=InnoDB
create table unit_of_measure (id bigint not null, name varchar(255), primary key (id)) engine=InnoDB
create table user (id bigint not null, email varchar(255), first_name varchar(255), last_name varchar(255), password_hash varchar(255), user_address_id bigint, primary key (id)) engine=InnoDB
create table user_role (user_id bigint not null, roles_id integer not null, primary key (user_id, roles_id)) engine=InnoDB
create table user_address (id bigint not null, city varchar(255), country varchar(255), street varchar(255), zip_code varchar(255), primary key (id)) engine=InnoDB
alter table ingredient add constraint FKj0s4ywmqqqw4h5iommigh5yja foreign key (recipe_id) references recipe (id)
alter table ingredient add constraint FK15ttfoaomqy1bbpo251fuidxw foreign key (unit_of_measure_id) references unit_of_measure (id)
alter table recipe add constraint FKc8o8io8s0f7nqcd3429u6cxjs foreign key (user_id) references user (id)
alter table recipe_category add constraint FKhclllxlem5hesjgt1vg1hjkjs foreign key (categories_id) references category (id)
alter table recipe_category add constraint FKcqlqnvfyarhieewfeayk3v25v foreign key (recipe_id) references recipe (id)
alter table user add constraint FK20x625ux9m5akvxbh58de7vqe foreign key (user_address_id) references user_address (id)
alter table user_role add constraint FKeog8p06nu33ihk13roqnrp1y6 foreign key (roles_id) references role (id)
alter table user_role add constraint FK859n2jvi8ivhui0rl0esws6o foreign key (user_id) references user (id)
create table category (id bigint not null, name varchar(255), primary key (id)) engine=InnoDB
create table hibernate_sequence (next_val bigint) engine=InnoDB
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
create table ingredient (id bigint not null, amount decimal(19,2), name varchar(255), recipe_id bigint, unit_of_measure_id bigint, primary key (id)) engine=InnoDB
create table recipe (id bigint not null, cook_time integer, difficulty varchar(255), name longtext, note varchar(255), prep_time integer, preparing longtext, servings integer, url varchar(255), user_id bigint, primary key (id)) engine=InnoDB
create table recipe_category (recipe_id bigint not null, categories_id bigint not null) engine=InnoDB
create table role (id integer not null, role_name varchar(255), primary key (id)) engine=InnoDB
create table unit_of_measure (id bigint not null, name varchar(255), primary key (id)) engine=InnoDB
create table user (id bigint not null, email varchar(255), first_name varchar(255), last_name varchar(255), password_hash varchar(255), user_address_id bigint, primary key (id)) engine=InnoDB
create table user_role (user_id bigint not null, roles_id integer not null, primary key (user_id, roles_id)) engine=InnoDB
create table user_address (id bigint not null, city varchar(255), country varchar(255), street varchar(255), zip_code varchar(255), primary key (id)) engine=InnoDB
alter table ingredient add constraint FKj0s4ywmqqqw4h5iommigh5yja foreign key (recipe_id) references recipe (id)
alter table ingredient add constraint FK15ttfoaomqy1bbpo251fuidxw foreign key (unit_of_measure_id) references unit_of_measure (id)
alter table recipe add constraint FKc8o8io8s0f7nqcd3429u6cxjs foreign key (user_id) references user (id)
alter table recipe_category add constraint FKhclllxlem5hesjgt1vg1hjkjs foreign key (categories_id) references category (id)
alter table recipe_category add constraint FKcqlqnvfyarhieewfeayk3v25v foreign key (recipe_id) references recipe (id)
alter table user add constraint FK20x625ux9m5akvxbh58de7vqe foreign key (user_address_id) references user_address (id)
alter table user_role add constraint FKeog8p06nu33ihk13roqnrp1y6 foreign key (roles_id) references role (id)
alter table user_role add constraint FK859n2jvi8ivhui0rl0esws6o foreign key (user_id) references user (id)
create table category (id bigint not null, name varchar(255), primary key (id)) engine=InnoDB
create table hibernate_sequence (next_val bigint) engine=InnoDB
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
create table ingredient (id bigint not null, amount decimal(19,2), name varchar(255), recipe_id bigint, unit_of_measure_id bigint, primary key (id)) engine=InnoDB
create table recipe (id bigint not null, cook_time integer, difficulty varchar(255), name varchar(255), note varchar(255), prep_time integer, preparing longtext, servings integer, url varchar(255), user_id bigint, primary key (id)) engine=InnoDB
create table recipe_category (recipe_id bigint not null, categories_id bigint not null) engine=InnoDB
create table role (id integer not null, role_name varchar(255), primary key (id)) engine=InnoDB
create table unit_of_measure (id bigint not null, name varchar(255), primary key (id)) engine=InnoDB
create table user (id bigint not null, email varchar(255), first_name varchar(255), last_name varchar(255), password_hash varchar(255), user_address_id bigint, primary key (id)) engine=InnoDB
create table user_role (user_id bigint not null, roles_id integer not null, primary key (user_id, roles_id)) engine=InnoDB
create table user_address (id bigint not null, city varchar(255), country varchar(255), street varchar(255), zip_code varchar(255), primary key (id)) engine=InnoDB
alter table ingredient add constraint FKj0s4ywmqqqw4h5iommigh5yja foreign key (recipe_id) references recipe (id)
alter table ingredient add constraint FK15ttfoaomqy1bbpo251fuidxw foreign key (unit_of_measure_id) references unit_of_measure (id)
alter table recipe add constraint FKc8o8io8s0f7nqcd3429u6cxjs foreign key (user_id) references user (id)
alter table recipe_category add constraint FKhclllxlem5hesjgt1vg1hjkjs foreign key (categories_id) references category (id)
alter table recipe_category add constraint FKcqlqnvfyarhieewfeayk3v25v foreign key (recipe_id) references recipe (id)
alter table user add constraint FK20x625ux9m5akvxbh58de7vqe foreign key (user_address_id) references user_address (id)
alter table user_role add constraint FKeog8p06nu33ihk13roqnrp1y6 foreign key (roles_id) references role (id)
alter table user_role add constraint FK859n2jvi8ivhui0rl0esws6o foreign key (user_id) references user (id)
create table category (id bigint not null, name varchar(255), primary key (id)) engine=InnoDB
create table hibernate_sequence (next_val bigint) engine=InnoDB
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
create table ingredient (id bigint not null, amount decimal(19,2), name varchar(255), recipe_id bigint, unit_of_measure_id bigint, primary key (id)) engine=InnoDB
create table recipe (id bigint not null, cook_time integer, difficulty varchar(255), name varchar(255), note varchar(255), prep_time integer, preparing longtext, servings integer, url varchar(255), user_id bigint, primary key (id)) engine=InnoDB
create table recipe_category (recipe_id bigint not null, categories_id bigint not null) engine=InnoDB
create table role (id integer not null, role_name varchar(255), primary key (id)) engine=InnoDB
create table unit_of_measure (id bigint not null, name varchar(255), primary key (id)) engine=InnoDB
create table user (id bigint not null, email varchar(255), first_name varchar(255), last_name varchar(255), password_hash varchar(255), user_address_id bigint, primary key (id)) engine=InnoDB
create table user_role (user_id bigint not null, roles_id integer not null, primary key (user_id, roles_id)) engine=InnoDB
create table user_address (id bigint not null, city varchar(255), country varchar(255), street varchar(255), zip_code varchar(255), primary key (id)) engine=InnoDB
alter table ingredient add constraint FKj0s4ywmqqqw4h5iommigh5yja foreign key (recipe_id) references recipe (id)
alter table ingredient add constraint FK15ttfoaomqy1bbpo251fuidxw foreign key (unit_of_measure_id) references unit_of_measure (id)
alter table recipe add constraint FKc8o8io8s0f7nqcd3429u6cxjs foreign key (user_id) references user (id)
alter table recipe_category add constraint FKhclllxlem5hesjgt1vg1hjkjs foreign key (categories_id) references category (id)
alter table recipe_category add constraint FKcqlqnvfyarhieewfeayk3v25v foreign key (recipe_id) references recipe (id)
alter table user add constraint FK20x625ux9m5akvxbh58de7vqe foreign key (user_address_id) references user_address (id)
alter table user_role add constraint FKeog8p06nu33ihk13roqnrp1y6 foreign key (roles_id) references role (id)
alter table user_role add constraint FK859n2jvi8ivhui0rl0esws6o foreign key (user_id) references user (id)
create table category (id bigint not null, name varchar(255), primary key (id)) engine=InnoDB
create table hibernate_sequence (next_val bigint) engine=InnoDB
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
create table ingredient (id bigint not null, amount decimal(19,2), name varchar(255), recipe_id bigint, unit_of_measure_id bigint, primary key (id)) engine=InnoDB
create table recipe (id bigint not null, cook_time integer, difficulty varchar(255), name varchar(255), note varchar(255), prep_time integer, preparing longtext, servings integer, url varchar(255), user_id bigint, primary key (id)) engine=InnoDB
create table recipe_category (recipe_id bigint not null, categories_id bigint not null) engine=InnoDB
create table role (id integer not null, role_name varchar(255), primary key (id)) engine=InnoDB
create table unit_of_measure (id bigint not null, name varchar(255), primary key (id)) engine=InnoDB
create table user (id bigint not null, email varchar(255), first_name varchar(255), last_name varchar(255), password_hash varchar(255), user_address_id bigint, primary key (id)) engine=InnoDB
create table user_role (user_id bigint not null, roles_id integer not null, primary key (user_id, roles_id)) engine=InnoDB
create table user_address (id bigint not null, city varchar(255), country varchar(255), street varchar(255), zip_code varchar(255), primary key (id)) engine=InnoDB
alter table ingredient add constraint FKj0s4ywmqqqw4h5iommigh5yja foreign key (recipe_id) references recipe (id)
alter table ingredient add constraint FK15ttfoaomqy1bbpo251fuidxw foreign key (unit_of_measure_id) references unit_of_measure (id)
alter table recipe add constraint FKc8o8io8s0f7nqcd3429u6cxjs foreign key (user_id) references user (id)
alter table recipe_category add constraint FKhclllxlem5hesjgt1vg1hjkjs foreign key (categories_id) references category (id)
alter table recipe_category add constraint FKcqlqnvfyarhieewfeayk3v25v foreign key (recipe_id) references recipe (id)
alter table user add constraint FK20x625ux9m5akvxbh58de7vqe foreign key (user_address_id) references user_address (id)
alter table user_role add constraint FKeog8p06nu33ihk13roqnrp1y6 foreign key (roles_id) references role (id)
alter table user_role add constraint FK859n2jvi8ivhui0rl0esws6o foreign key (user_id) references user (id)
create table category (id bigint not null, name varchar(255), primary key (id)) engine=InnoDB
create table hibernate_sequence (next_val bigint) engine=InnoDB
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
create table ingredient (id bigint not null, amount decimal(19,2), name varchar(255), recipe_id bigint, unit_of_measure_id bigint, primary key (id)) engine=InnoDB
create table recipe (id bigint not null, cook_time integer, difficulty varchar(255), name varchar(255), note varchar(255), prep_time integer, preparing longtext, servings integer, url varchar(255), user_id bigint, primary key (id)) engine=InnoDB
create table recipe_category (recipe_id bigint not null, categories_id bigint not null) engine=InnoDB
create table role (id integer not null, role_name varchar(255), primary key (id)) engine=InnoDB
create table unit_of_measure (id bigint not null, name varchar(255), primary key (id)) engine=InnoDB
create table user (id bigint not null, email varchar(255), first_name varchar(255), last_name varchar(255), password_hash varchar(255), user_address_id bigint, primary key (id)) engine=InnoDB
create table user_role (user_id bigint not null, roles_id integer not null, primary key (user_id, roles_id)) engine=InnoDB
create table user_address (id bigint not null, city varchar(255), country varchar(255), street varchar(255), zip_code varchar(255), primary key (id)) engine=InnoDB
alter table ingredient add constraint FKj0s4ywmqqqw4h5iommigh5yja foreign key (recipe_id) references recipe (id)
alter table ingredient add constraint FK15ttfoaomqy1bbpo251fuidxw foreign key (unit_of_measure_id) references unit_of_measure (id)
alter table recipe add constraint FKc8o8io8s0f7nqcd3429u6cxjs foreign key (user_id) references user (id)
alter table recipe_category add constraint FKhclllxlem5hesjgt1vg1hjkjs foreign key (categories_id) references category (id)
alter table recipe_category add constraint FKcqlqnvfyarhieewfeayk3v25v foreign key (recipe_id) references recipe (id)
alter table user add constraint FK20x625ux9m5akvxbh58de7vqe foreign key (user_address_id) references user_address (id)
alter table user_role add constraint FKeog8p06nu33ihk13roqnrp1y6 foreign key (roles_id) references role (id)
alter table user_role add constraint FK859n2jvi8ivhui0rl0esws6o foreign key (user_id) references user (id)
create table category (id bigint not null, name varchar(255), primary key (id)) engine=InnoDB
create table hibernate_sequence (next_val bigint) engine=InnoDB
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
insert into hibernate_sequence values ( 1 )
create table ingredient (id bigint not null, amount decimal(19,2), name varchar(255), recipe_id bigint, unit_of_measure_id bigint, primary key (id)) engine=InnoDB
create table recipe (id bigint not null, cook_time integer, difficulty varchar(255), name varchar(255), note varchar(255), prep_time integer, preparing longtext, servings integer, url varchar(255), user_id bigint, primary key (id)) engine=InnoDB
create table recipe_category (recipe_id bigint not null, category_id bigint not null) engine=InnoDB
create table role (id integer not null, role_name varchar(255), primary key (id)) engine=InnoDB
create table unit_of_measure (id bigint not null, name varchar(255), primary key (id)) engine=InnoDB
create table user (id bigint not null, email varchar(255), first_name varchar(255), last_name varchar(255), password_hash varchar(255), user_address_id bigint, primary key (id)) engine=InnoDB
create table user_role (user_id bigint not null, roles_id integer not null, primary key (user_id, roles_id)) engine=InnoDB
create table user_address (id bigint not null, city varchar(255), country varchar(255), street varchar(255), zip_code varchar(255), primary key (id)) engine=InnoDB
alter table ingredient add constraint FKj0s4ywmqqqw4h5iommigh5yja foreign key (recipe_id) references recipe (id)
alter table ingredient add constraint FK15ttfoaomqy1bbpo251fuidxw foreign key (unit_of_measure_id) references unit_of_measure (id)
alter table recipe add constraint FKc8o8io8s0f7nqcd3429u6cxjs foreign key (user_id) references user (id)
alter table recipe_category add constraint FKqsi87i8d4qqdehlv2eiwvpwb foreign key (category_id) references category (id)
alter table recipe_category add constraint FKcqlqnvfyarhieewfeayk3v25v foreign key (recipe_id) references recipe (id)
alter table user add constraint FK20x625ux9m5akvxbh58de7vqe foreign key (user_address_id) references user_address (id)
alter table user_role add constraint FKeog8p06nu33ihk13roqnrp1y6 foreign key (roles_id) references role (id)
alter table user_role add constraint FK859n2jvi8ivhui0rl0esws6o foreign key (user_id) references user (id)
