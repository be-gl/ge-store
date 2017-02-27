-- 1 up
create table if not exists orders (
  id           serial primary key,
  stripe_token varchar(32),
  timestamp    timestamp with time zone default current_timestamp,
  email        varchar(255),
  name         varchar(255),
  cartsubtotal numeric,
  tax          numeric,
  carttotal    numeric,
  cart         json,
  stripe       json
);

-- 1 down
drop table if exists orders;
