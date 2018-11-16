use shop;
select * from products;
select * from category where idcategory =1 or idcategory =2;
select * from category where idcategory >=1 and idcategory <=3;
select * from category where idcategory in (1,2,3,4);
select * from products
	inner join category on products.idcategory = category.idcategory;
    
select idproducts,price from products
	inner join category on products.idcategory = category.idcategory;
    
select idproducts,price from products
	inner join category on products.idcategory = category.idcategory;
    
select products.idproducts,price from products
	inner join category on products.idcategory = category.idcategory;
# поменяли местами категори и продуктс
select * from category
	inner join products on products.idcategory = category.idcategory;
    
select products.idproducts,price from products
	inner join category on products.idcategory = category.idcategory
	where price<10000;
    
select * from products
	inner join category on products.idcategory = category.idcategory
    inner join products_type on products_type.idproducts_type = products.idproducts_type
    inner join brands on brands.idbrands = products.idbrands;

select products.articul, products_type.name, brands.name, category.name, products.price, category.discount from products
	inner join category on products.idcategory = category.idcategory
    inner join products_type on products_type.idproducts_type = products.idproducts_type
    inner join brands on brands.idbrands = products.idbrands;
 
select products.articul, products_type.name, brands.name, category.name, products.price, category.discount from products
	inner join category on products.idcategory = category.idcategory
    inner join products_type on products_type.idproducts_type = products.idproducts_type
    inner join brands on brands.idbrands = products.idbrands
    where category.discount < 5;
    
select * from products
	inner join category on products.idcategory = category.idcategory
    where discount <=5;

-- найдем все футболки    
select products.articul, products_type.name as products_name, brands.name as brands_name, category.name as category_name, products.price, category.discount from products
	inner join category on products.idcategory = category.idcategory
    inner join products_type on products_type.idproducts_type = products.idproducts_type
    inner join brands on brands.idbrands = products.idbrands
    where products_type.name = 'Футболка';
   
select * from products
	LEFT JOIN category on products.idcategory = category.idcategory
    LEFT JOIN products_type on products_type.idproducts_type = products.idproducts_type
    LEFT JOIN brands on brands.idbrands = products.idbrands;
    -- where products_type.name = 'Футболка';   
   
select * from products
	RIGHT JOIN category on products.idcategory = category.idcategory
    RIGHT JOIN products_type on products_type.idproducts_type = products.idproducts_type
    RIGHT JOIN brands on brands.idbrands = products.idbrands;
    
-- вывести все типы товаров, которые не попали ни в 1 заказов (order)
select * from category
	left join products on products.idcategory = category.idcategory
    where products.idproducts is NULL;
    -- сюда попали все категории продуктов, даже те для которых нет продуктов
    
use shop;    
select category.* from category
	left join products on products.idcategory = category.idcategory
    where products.idproducts is NULL;
    
select * from category
	left join products on products.idcategory = category.idcategory
    where products.idproducts is NULL;

insert into products_type (name) values('Шуба');

SELECT products_type.* FROM products_type
	left join products on products.idproducts_type = products_type.idproducts_type
    where products.idproducts IS NULL;
    -- Шуба 
    -- Все товары. которые не попали ни в один из заказов
SELECT * from `orders` 
	INNER JOIN products_order on products_order.idorders = `orders`.idorders
    RIGHT JOIN products on products_order.idproducts = products.idproducts;
    
SELECT * from `orders` 
	INNER JOIN products_order on products_order.idorders = `orders`.idorders
    RIGHT JOIN products on products_order.idproducts = products.idproducts;
    
SELECT * from `orders` 
	INNER JOIN products_order on products_order.idorders = `orders`.idorders
    RIGHT JOIN products on products_order.idproducts = products.idproducts
    where `orders`.idorders is null;
    
SELECT products.* from `orders` 
	INNER JOIN products_order on products_order.idorders = `orders`.idorders
	RIGHT JOIN products on products_order.idproducts = products.idproducts
    where `orders`.idorders is null; 
    
-- full outer join - объединение двух табличек    

INSERT INTO `ORDERS` (user_name, phone, datetime)  values ('Петр', '888-88-88', '2018-11-16');

SELECT * from `orders`
	INNER JOIN products_order ON products_order.idorders = `orders`.idorders
    INNER JOIN products ON products_order.idproducts = products.idproducts;
    
    -- В MySQL нет фул аутер джойн, зато в остальных есть. Как же без неё жить дальше ?
-- SELECT * from `orders`
	-- FULL OUTER JOIN products_order ON products_order.idorders = `orders`.idorders
    -- FULL OUTER JOIN ON products_order.idproducts = products.idproducts;    
    
-- Сделать можно с помощью директивы UNION

SELECT * FROM `orders`
	LEFT JOIN products_order ON products_order.idorders = `orders`.idorders
    LEFT JOIN products ON products_order.idproducts = products.idproducts
    
UNION 

SELECT * FROM `orders`
	INNER JOIN products_order ON products_order.idorders = `orders`.idorders
    RIGHT JOIN products ON products_order.idproducts = products.idproducts
    where `orders`.idorders is null; 
    
-- GROUP BY и агрегирующие функции. Count Sum Max Min 

USE SHOP;
SELECT * FROM products;
SELECT COUNT(*) FROM products where products.price < 10000;

-- суммарная стоимость всех товаров с помощью функции SUM для значения столбца ценаalter

SELECT sum(price) as Total_price, min(price) as Min_price, max(price) as Max_price from products;

-- ДЗ Добавить Петру парочку товаров
-- Вывести суммарную стоимость Василия и Петра отдельно 
-- Join order / products_order и 

use shop;
insert into products_order (idorders, idproducts, `count`) values (2,3,3);
insert into products_order (idorders, idproducts, `count`) values (2,4,3);

select * from shop.`orders`
	inner join products_order on products_order.idorders = `orders`.idorders
	inner join products on products.idproducts = products_order.idproducts;
    


select * from shop.`orders`
	inner join products_order on products_order.idorders = `orders`.idorders
	inner join products on products.idproducts = products_order.idproducts
    where `orders`.idorders = 1;
    
select sum(price * `count`) as Total_price_sum from shop.`orders`
	inner join products_order on products_order.idorders = `orders`.idorders
	inner join products on products.idproducts = products_order.idproducts
    where `orders`.idorders = 1;    
    
-- GROUP BY позволяет группировать в 1 запросе результаты агрегирующих функций для нескольких групп строк.
-- Получить 1 запросом суммарную стоимость заказа для каждого из пользоавтелей нашего интернет магазина.

select `orders`.user_name, price * `count` as total_price from shop.`orders`
	inner join products_order on products_order.idorders = `orders`.idorders
	inner join products on products.idproducts = products_order.idproducts
    where `orders`.idorders = 2;    

select `orders`.user_name, price * `count` as total_price from shop.`orders`
	inner join products_order on products_order.idorders = `orders`.idorders
	inner join products on products.idproducts = products_order.idproducts;

select `orders`.user_name, sum(price * `count`) as total_price_sum from shop.`orders`
	inner join products_order on products_order.idorders = `orders`.idorders
	inner join products on products.idproducts = products_order.idproducts
    group by `orders`.user_name;
    
select `orders`.user_name, max(price) as Max_price from shop.`orders`
	inner join products_order on products_order.idorders = `orders`.idorders
	inner join products on products.idproducts = products_order.idproducts
    group by `orders`.user_name;
    
    
select `orders`.user_name, max(price) as Max_price, count(*) from shop.`orders`
	inner join products_order on products_order.idorders = `orders`.idorders
	inner join products on products.idproducts = products_order.idproducts
    group by `orders`.user_name;    
    
select `orders`.user_name, max(price), sum(`count`) from shop.`orders`
	inner join products_order on products_order.idorders = `orders`.idorders
	inner join products on products.idproducts = products_order.idproducts
    group by `orders`.user_name;
    
-- Выводим результаты для пользователя Василий
select `orders`.user_name, max(price), sum(`count`) from shop.`orders`
	inner join products_order on products_order.idorders = `orders`.idorders
	inner join products on products.idproducts = products_order.idproducts
    where user_name = 'Василий';
    -- where user_name like 'B%'

select `orders`.user_name, max(price), sum(`count`) from shop.`orders`
	inner join products_order on products_order.idorders = `orders`.idorders
	inner join products on products.idproducts = products_order.idproducts
    where user_name like 'В%';
    -- В и любой символ (регулярки)
    
select `orders`.user_name, max(price), sum(`count`) from shop.`orders`
	inner join products_order on products_order.idorders = `orders`.idorders
	inner join products on products.idproducts = products_order.idproducts
    -- where user_name like 'В%';
    -- В и любой символ (регулярки)
    group by `orders`.user_name
    having sum(`count` <= 5);
    
    select `orders`.user_name, max(price), sum(`count`) as order_count from shop.`orders`
	inner join products_order on products_order.idorders = `orders`.idorders
	inner join products on products.idproducts = products_order.idproducts
    -- where user_name like 'В%';
    -- В и любой символ (регулярки)
    group by `orders`.user_name
    having order_count <= 5;
    
-- Производительность и индекс
-- Преждевременная оптимизация только ухудшает ситуацию
-- Разбор в момент нахождения ошибок или зависаний
-- волшебный SQL запрос можно создать с помощью excel (: 

SELECT count(*) FROM shop.products;

SELECT * FROM shop.products where price = 3; 
-- 16 ms

-- добавим индекс к прайсу (что ускорит таблицу)
    
-- Транзакции (банк) 
CREATE TABLE `shop`.`user_bank_account` (
  `iduser_bank_account` INT NOT NULL,
  `money` DECIMAL(10,2) NOT NULL,
  `user_name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`iduser_bank_account`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_bin;


INSERT INTO `shop`.`user_bank_account` (`iduser_bank_account`, `money`, `user_name`) values ('1', '100', 'Дмитрий');
INSERT INTO `shop`.`user_bank_account` (`iduser_bank_account`, `money`, `user_name`) values ('2', '200', 'Евгений');


-- ACID
-- Atomcity     Атомарность      (все команды, которые поместили внутрь транзакции будут выполнены одновременно, либо не выполнится ни одна из них)
-- Consistency  Согласованность  (при переводе денег суммарное число денег в банке не должно меняться в нашем примере)
-- Isolation    Изолированность  (если транзакция начала выполняться, то никто не может ей мешать)
-- Durability   Долговечность    (даже если по окончании транзакции произошел сбой жесткого диска все изменения не будут отменены)

-- dev.mysql.com - официальная документация 