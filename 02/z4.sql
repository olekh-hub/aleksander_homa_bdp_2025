-- zad 4
drop table if exists buildings;
create table buildings (
	id serial primary key,
	geometry geometry(POLYGON),
	name varchar(255)
);

drop table if exists roads;
create table roads (s
	id serial primary key,
	geometry geometry(LINESTRING),
	name varchar(255)
);

drop table if exists poi;s
create table poi (
	id serial primary key,
	geometry geometry(POINT),
	name varchar(255)
);