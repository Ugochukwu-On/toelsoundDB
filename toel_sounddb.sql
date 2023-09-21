-- create users table
CREATE table users (
id int NOT NULL,
    name varchar(255) NOT NULL,
    role varchar(255),
    email varchar(255),
    PRIMARY KEY (id)
    );
-- insert into users table
INSERT INTO users
    (id, name, role)
    values (1, 'Adesoji','premium user' )

-- add  columns to users table
ALTER TABLE users
ADD COLUMN subscription varchar(255),
ADD COLUMN gender ENUM('male', 'female'),
ADD COLUMN createdAt DATETIME,
ADD COLUMN password varchar(255);

-- update values in users table
UPDATE users
SET
   email = 'newemail@example.com',
   subscription = 'premium',
   gender = 'male',
   createdAt = '2021-09-09 00:00:00',
   password = 'altschools'
WHERE id = 1;

-- create admin table
CREATE table admin (
	id int NOT NULL,
    name varchar(255) NOT NULL,
    role varchar(255),
    PRIMARY KEY (id),
    FOREIGN KEY (users_id) REFERENCES users(id),
    users_id int 
);

-- insert into admin table
INSERT INTO admin
    (id, name, role)
    values (1, 'Ugochukwu','admin' )

-- create category table
CREATE table category (
id int NOT NULL,
Gosple varchar(255),
Afrobeat varchar(255),
Hip_pop varchar(255),
Pop varchar(255),
Soul varchar(255),
RnB varchar(255),
Alternative varchar(255),
Raggea varchar(255),
EDM varchar(255),
PRIMARY KEY (id)
);

-- insert into category table
INSERT INTO category
(id, Gosple, Afrobeat, Hip_pop, Pop, Soul, RnB, Alternative, Raggea, EDM )
values(1,'Hulvery', 'Bloody Civilian', 'hako', 'Logic','Tom Odell', 'Khalid', 'Chase Atlantic', 'Beniton', 'Seek')

--add column to category table
ALTER TABLE category
CHANGE Gosple Gospel varchar(255);

-- create released table
CREATE table released (
id int NOT Null,
type varchar (255),
name varchar (255),
Release_date timestamp,
PRIMARY KEY (id)
)

-- insert into released table
INSERT INTO released
(id, type, name, Release_date)
values(1, 'EP', 'Anger Management', '2023-08-12 14:20:00')

--add column to released table
ALTER TABLE released
ADD PRIMARY KEY (id);

--create availability table
CREATE table Availability(
id int NOT NULL,
is_available boolean,
deletion_date timestamp

);

--add clomun to availability table
ALTER TABLE Availability
ADD PRIMARY KEY (id);

--insert into availability table
INSERT INTO availability
(id, is_available, deletion_date)
values('1', TRUE, NULL)

--create artist table
CREATE TABLE artist(
id int NOT NULL,
name varchar(255),
Description varchar(255),
PRIMARY KEY (id),
FOREIGN KEY (category_id) REFERENCES category(id),
category_id int
);

--insert into artist table
INSERT INTO artist
(id, name, Description)
values('1', 'Bloody Civilian', 'Emoseh Khamofu known professionally as Bloody Civilian is a Nigerian')

-- create product table
CREATE TABLE product(
id int NOT NULL,
price decimal, 
PRIMARY KEY (id),
FOREIGN KEY (category_id) REFERENCES category(id),
category_id int,
FOREIGN KEY (availability_id) REFERENCES availability(id),
availability_id int,
FOREIGN KEY (artist_id) REFERENCES artist(id),
artist_id int,
FOREIGN KEY (released_id) REFERENCES released(id),
released_id int
)

--add column to product table
ALTER TABLE product
ADD COLUMN name varchar(255);

--insert into product table
INSERT INTO product
(id, price, name)
values('1', 500.00, 'I dont like you')

--delet from product table 
DELETE FORM product 
WHERE id = 2


--select all from each table
SELECT * from users
SELECT * from admin
SELECT * from category
SELECT * from released
SELECT * from Availability
SELECT * from artist
SELECT * from product

--select tables to show relatinships based on id(joins)
select * from admin join users on users.id =admin.users_id
select * from product join Availability on Availability.id =product.Availability_id
select * from product join category on category.id =product.category_id
select * from artist join category on categopry.id =artist.category_id
select * from product join artist on artist.id =product.artist_id
select * from product join released on released.id =product.released_id