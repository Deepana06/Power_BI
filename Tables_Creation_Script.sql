/*Creating a sample database*/
Create database Sale_details;


use Sale_details;


/*Table creation Script*/
create table product
(
product_Id varchar(4) not null ,
Product_name varchar(400) ,
CONSTRAINT PK_product_Id PRIMARY KEY clustered(product_Id)
);

create table showroom_details
(
showroom_Id varchar(4) not null ,
showroom_name varchar(400) ,
CONSTRAINT PK_showroom PRIMARY KEY clustered(showroom_Id)
);

create table sales
(
product_Id varchar(4),
showroom_Id varchar(4),
year_of_sold int,
Total_qty int,
Total_amount decimal(9,3),
CONSTRAINT FK_product_Id FOREIGN KEY (product_Id)
        REFERENCES product (product_Id),
CONSTRAINT FK_showroom_Id FOREIGN KEY (showroom_Id)
        REFERENCES showroom_details (showroom_Id),
CONSTRAINT PK_sales PRIMARY KEY clustered(product_Id,showroom_Id)
);




