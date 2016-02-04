create database comments;
use comments;
drop table user;
drop table comment;

create table user(
uname varchar(255) primary key,
password varchar(255)
);

create table comment(
com varchar(255) not null,
user varchar(255)
);
