-- 1. Создать таблицу student с полями student_id serial, first_name varchar, last_name varchar, birthday date, phone varchar
CREATE TABLE student
(
	student_id serial,
	first_name varchar(50),
	last_name varchar(50),
  	birthday date,
  	phone varchar(50)
);

-- 2. Добавить в таблицу student колонку middle_name varchar
ALTER TABLE student ADD COLUMN middle_name varchar(50);

-- 3. Удалить колонку middle_name
ALTER TABLE student DROP COLUMN middle_name;

-- 4. Переименовать колонку birthday в birth_date

ALTER TABLE student RENAME birthday TO birth_date;

-- 5. Изменить тип данных колонки phone на varchar(32)

ALTER TABLE student ALTER COLUMN phone SET DATA TYPE varchar(32);

-- 6. Вставить три любых записи с автогенерацией идентификатора

INSERT INTO student(first_name, last_name, birth_date, phone) 
VALUES('Nikita', 'Sokolov', '2000-05-10', '8-903-550-20-89');
INSERT INTO student(first_name, last_name, birth_date, phone) 
VALUES('Oleg', 'Aleksaev', '2000-10-05', '8-903-550-20-80');
INSERT INTO student(first_name, last_name, birth_date, phone) 
VALUES('Anna', 'Shipil', '2000-06-24', '8-993-550-20-89');

-- 7. Удалить все данные из таблицы со сбросом идентификатор в исходное состояние
TRUNCATE TABLE student RESTART IDENTITY;
