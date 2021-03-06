drop table if exists zones;
drop table if exists keyinstances;
drop table if exists keyclasses;
drop table if exists policies;
create table if not exists zones (
  name varchar(64) primary key,
  policy varchar(64),
  label text not null,
  inadapttype integer,
  inadapturi text,
  outadapttype integer,
  outadapturi text,
  f1 integer,
  f2 integer,
  f3 integer,
  f4 integer,
  t1 timestamp,
  t2 timestamp,
  t3 timestamp,
  t4 timestamp,
  t5 timestamp,
  t6 timestamp,
  t7 timestamp,
  t8 timestamp,
  index ( policy )
);
create table if not exists keyinstances (
  id integer primary key,
  locator text,
  zone varchar(64),
  keyclass integer,
  inception timestamp,
  state integer,
  dsstate integer,
  dsstatesince timestamp,
  ksstate integer,
  ksstatesince timestamp,
  rrsigstate integer,
  rrsigstatesince timestamp,
  kssigstate integer,
  kssigstatesince timestamp
);
create table if not exists keyclasses (
  id integer primary key,
  policy varchar(64) not null,
  nbit integer,
  algorithm integer,
  role integer,
  lifetime timestamp
);
create table if not exists policies (
  name varchar(64) primary key,
  label text not null
);
 