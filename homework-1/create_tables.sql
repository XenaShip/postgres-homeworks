-- SQL-команды для создания таблиц
CREATE TABLE employees(
	employee_id serial PRIMARY KEY,
	first_name text,
	last_name text,
	title text,
	birthday date,
	notes text
);

CREATE TABLE customers(
	customer_id varchar(5) PRIMARY KEY,
	company_name text,
	contact_name text
);

CREATE TABLE orders(
	order_id int PRIMARY KEY,
	costomer_id varchar(5) REFERENCES customers(costomer_id),
	employee_id int REFERENCES employees(employee_id),
	order_date int,
	ship_city text
);
