create table categories
(
    id    bigserial primary key,
    title varchar(255)
);
insert into categories (title)
values ('Продукты питания');

create table products
(
    id          bigserial primary key,
    title       varchar(255),
    price       int,
    category_id bigint references categories (id)
);
insert into products (title, price, category_id)
values ('Хлеб', 25, 1),
       ('Молоко', 80, 1),
       ('Сок', 100, 1),
       ('Сыр (БЗМЖ)', 450, 1),
       ('Шоколад', 500, 1),
       ('Вода без газа', 50, 1),
       ('Шпроты', 150, 1),
       ('Пиво', 200, 1);
