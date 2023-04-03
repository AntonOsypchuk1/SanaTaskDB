CREATE database todolist

CREATE TABLE Category (
	id_category INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
	name_category varchar(100)  not null,
);

CREATE TABLE Task (
	id INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
	title varchar(100)  not null,
	task_description text not null,
	date_create DATE DEFAULT GetDate(),
	date_end DATE,
	is_completed bit not null,
	id_category int not null foreign key(id_category) references dbo.category(id_category) on delete cascade on update no action
);

drop table Task