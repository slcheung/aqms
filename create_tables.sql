drop table equip_status;
drop table equip_data;
drop table project_loc;
drop table equip_loc;
drop table project;
drop table loc;
drop table equipment;



-- Create equipment table
create table equipment (
equip_id serial primary key,
equip_type varchar(100) not null,
equip_name varchar(200),
equip_model varchar(100) not null,
equip_sn varchar(100) not null,
operate_date date not null,
retire_date date check (retire_date>=operate_date)
);

-- Create loc table
create table loc (
loc_id serial primary key,
name varchar(100) not null,
lat decimal(10,6) check (lat>=-90 and lat<90),
lon decimal(10,6) check (lon>=-180 and lon<180)
);

-- Create project table
create table project (
item_id serial primary key,
name varchar(400) not null,
project_id integer unique not null,
start_date date not null,
end_date date check (end_date >= start_date) not null
);

-- Create equip_loc table
create table equip_loc (
--item_id serial primary key,
--project_id integer references project(project_id),
equip_id integer references equipment(equip_id) unique,
loc_id integer references loc(loc_id)
);

-- Create project_loc table
create table project_loc (
	project_id INTEGER references project(project_id),
loc_id integer references loc(loc_id)
);

-- Create equip_data table
create table equip_data (
equip_id integer references equipment(equip_id),
record_date timestamp without time zone NOT NULL,
poltype varchar(10) not null,
polval decimal(10,4) check(polval>=0) not null,
polhei decimal(10,4) check(polhei>=0)
);

-- Create equip_status table
create table equip_status (
equip_id integer references equipment(equip_id),
status bool not null,
paralist varchar(200),
remark varchar(200),
last_update timestamp without time zone DEFAULT now()
);
