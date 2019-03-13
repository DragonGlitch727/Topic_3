create database if not exists mericatalks;

use mericatalks;

drop table if exists comments;
drop table if exists posts;
drop table if exists users;

create table users (
	id int(11) not null auto_increment,
	first_name varchar(20) not null,
	last_name varchar(20) not null,
	email_address varchar(255) not null,
	password varchar(40) not null,
	primary key (id)			
);

create table posts (
	id int(11) not null auto_increment,
	user_id int(11) not null,
	post_date datetime default current_timestamp,
	post_content varchar(255) not null,
	primary key (id),
	foreign key (user_id) references users(id)
);

create table comments (
	id int(11) not null auto_increment,
	user_id int(11) not null,
	post_id int(11) not null,
	comment_date datetime default current_timestamp,
	comment_content varchar(255) not null,
	primary key (id),
	foreign key (user_id) references users(id),
	foreign key (post_id) references posts(id)

);


