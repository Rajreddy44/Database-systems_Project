-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2022-04-10 09:07:56.741

-- tables
-- Table: Billing
CREATE TABLE Billing (
    Billing_Id varchar(20)  NOT NULL,
    Billing_Date date  NOT NULL,
    Quantity int  NOT NULL,
    Employee_Employee_Id varchar(20)  NOT NULL,
    Product_Product_Id varchar(20)  NOT NULL,
    Customer_Customer_Id varchar(20)  NOT NULL,
    CONSTRAINT Billing_pk PRIMARY KEY (Billing_Id)
);

-- Table: Customer
CREATE TABLE Customer (
    Customer_Id varchar(20)  NOT NULL,
    Customer_Name varchar(50)  NOT NULL,
    Phone_Number varchar(50)  NOT NULL,
    TextileStore_Store_Id varchar(20)  NOT NULL,
    CONSTRAINT Customer_pk PRIMARY KEY (Customer_Id)
);

-- Table: Employee
CREATE TABLE Employee (
    Employee_Id varchar(20)  NOT NULL,
    Employee_Name varchar(25)  NOT NULL,
    Employee_Hire_Date date  NOT NULL,
    TextileStore_Store_Id varchar(20)  NOT NULL,
    CONSTRAINT Employee_pk PRIMARY KEY (Employee_Id)
);

-- Table: Product
CREATE TABLE Product (
    Product_Id varchar(20)  NOT NULL,
    Brand_Name varchar(50)  NOT NULL,
    Customer_Customer_Id varchar(20)  NOT NULL,
    Cost decimal  NOT NULL,
    CONSTRAINT Product_pk PRIMARY KEY (Product_Id)
);

-- Table: TextileStore
CREATE TABLE TextileStore (
    Store_Id varchar(20)  NOT NULL,
    Store_Name varchar(50)  NOT NULL,
    Contact_Number varchar(50)  NOT NULL,
    CONSTRAINT TextileStore_pk PRIMARY KEY (Store_Id)
);

-- foreign keys
-- Reference: Billing_Customer (table: Billing)
ALTER TABLE Billing ADD CONSTRAINT Billing_Customer
    FOREIGN KEY (Customer_Customer_Id)
    REFERENCES Customer (Customer_Id)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: Billing_Employee (table: Billing)
ALTER TABLE Billing ADD CONSTRAINT Billing_Employee
    FOREIGN KEY (Employee_Employee_Id)
    REFERENCES Employee (Employee_Id)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: Billing_Product (table: Billing)
ALTER TABLE Billing ADD CONSTRAINT Billing_Product
    FOREIGN KEY (Product_Product_Id)
    REFERENCES Product (Product_Id)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: Customer_Textile Store (table: Customer)
ALTER TABLE Customer ADD CONSTRAINT Customer_Textile Store
    FOREIGN KEY (TextileStore_Store_Id)
    REFERENCES TextileStore (Store_Id)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: Employee_Textile Store (table: Employee)
ALTER TABLE Employee ADD CONSTRAINT Employee_Textile Store
    FOREIGN KEY (TextileStore_Store_Id)
    REFERENCES TextileStore (Store_Id)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: Product_Customer (table: Product)
ALTER TABLE Product ADD CONSTRAINT Product_Customer
    FOREIGN KEY (Customer_Customer_Id)
    REFERENCES Customer (Customer_Id)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- End of file.

