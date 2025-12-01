-- STORES TABLE
CREATE TABLE Stores (
    StoreID INT PRIMARY KEY,
    StoreName VARCHAR(100),
    Region VARCHAR(50),
    OpenDate DATE,
    StoreFormat VARCHAR(50)
);

-- PRODUCTS TABLE
CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100),
    Category VARCHAR(50),
    SubCategory VARCHAR(50),
    Cost NUMERIC(10,2),
    Price NUMERIC(10,2)
);

-- PROMOTIONS TABLE
CREATE TABLE Promotions (
    PromotionID INT PRIMARY KEY,
    PromoName VARCHAR(100),
    StartDate DATE,
    EndDate DATE,
    PromoType VARCHAR(50)
);

-- SALES TABLE
CREATE TABLE Sales (
    SalesDate DATE,
    StoreID INT,
    ProductID INT,
    UnitsSold INT,
    SalesValue NUMERIC(10,2),
    Discount NUMERIC(10,2),
    PromotionID INT NULL,
    FOREIGN KEY (StoreID) REFERENCES Stores(StoreID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID),
    FOREIGN KEY (PromotionID) REFERENCES Promotions(PromotionID)
);

-- INVENTORY TABLE
CREATE TABLE InventoryDaily (
    SnapshotDate DATE,
    StoreID INT,
    ProductID INT,
    OnHandQty INT,
    ReorderPoint INT,
    FOREIGN KEY (StoreID) REFERENCES Stores(StoreID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);

INSERT INTO Stores (StoreID, StoreName, Region, OpenDate, StoreFormat) VALUES
(1,'Colombo City Store','Western','2018-02-10','Large'),
(2,'Galle Central','Southern','2019-05-12','Medium'),
(3,'Kandy Hills','Central','2020-01-20','Large'),
(4,'Jaffna Point','Northern','2017-11-05','Medium'),
(5,'Kurunegala Hub','North Western','2018-09-14','Small'),
(6,'Matara Square','Southern','2019-03-18','Large'),
(7,'Negombo Beach','Western','2020-07-22','Medium'),
(8,'Anuradhapura Royal','North Central','2018-10-11','Small'),
(9,'Badulla Market','Uva','2017-12-29','Medium'),
(10,'Ratnapura Gems','Sabaragamuwa','2019-08-05','Large'),
(11,'Trinco Bay','Eastern','2021-01-13','Small'),
(12,'Hambantota Port City','Southern','2020-06-25','Medium'),
(13,'Kalutara Riverside','Western','2018-04-20','Large'),
(14,'Puttalam Coast','North Western','2019-10-15','Small'),
(15,'Nuwara Eliya CoolStore','Central','2021-03-09','Medium'),
(16,'Batticaloa East','Eastern','2017-06-11','Small'),
(17,'Monaragala Super','Uva','2020-09-30','Large'),
(18,'Polonnaruwa Heritage','North Central','2018-03-19','Medium'),
(19,'Vavuniya Junction','Northern','2019-12-01','Small'),
(20,'Colombo Fort Store','Western','2022-01-01','Flagship');


INSERT INTO Products (ProductID, ProductName, Category, SubCategory, Cost, Price) VALUES
(101,'Apple Juice 1L','Beverages','Juice',180,250),
(102,'Orange Juice 1L','Beverages','Juice',170,240),
(103,'Milk Powder 1kg','Grocery','Dairy',950,1100),
(104,'Brown Bread','Bakery','Bread',90,130),
(105,'Chicken Sausages 500g','Frozen','Meat',480,650),
(106,'Cheddar Cheese 200g','Dairy','Cheese',420,550),
(107,'Shampoo 200ml','Personal Care','Hair Care',250,350),
(108,'Soap Bar 100g','Personal Care','Bathing',60,90),
(109,'Rice 5kg','Grocery','Grains',420,520),
(110,'Biscuits Chocolate','Snacks','Biscuits',80,120),
(111,'Soft Drink 1.5L','Beverages','Carbonated',140,200),
(112,'Energy Drink 500ml','Beverages','Energy',190,260),
(113,'Instant Noodles 80g','Snacks','Noodles',50,80),
(114,'Hand Wash 250ml','Personal Care','Hygiene',160,220),
(115,'Sugar 1kg','Grocery','Essentials',130,190),
(116,'Tea Pack 200g','Beverages','Tea',270,350),
(117,'Coffee 100g','Beverages','Coffee',300,420),
(118,'Ice Cream 1L','Frozen','Dessert',450,600),
(119,'Butter 250g','Dairy','Butter',300,420),
(120,'Yogurt Cup 80g','Dairy','Yogurt',30,50);


INSERT INTO Promotions (PromotionID, PromoName, StartDate, EndDate, PromoType) VALUES
(1,'New Year Sale','2024-01-01','2024-01-10','Seasonal'),
(2,'Weekend Discount','2024-01-15','2024-01-17','Weekend'),
(3,'Holiday Offer','2024-02-01','2024-02-05','Seasonal'),
(4,'Clearance Sale','2024-02-10','2024-02-20','Clearance'),
(5,'Special Member Deal','2024-02-25','2024-02-28','Loyalty');


DO $$
DECLARE
    d DATE := '2024-01-01';
BEGIN
    WHILE d <= '2024-02-29' LOOP
        INSERT INTO Sales (SalesDate, StoreID, ProductID, UnitsSold, SalesValue, Discount, PromotionID)
        SELECT 
            d,
            s.StoreID,
            p.ProductID,
            (RANDOM() * 19 + 1)::INT AS UnitsSold,
            ((RANDOM() * 19 + 1)::INT * p.Price) AS SalesValue,
            CASE 
                WHEN d BETWEEN '2024-01-01' AND '2024-01-10' THEN 10
                WHEN d BETWEEN '2024-02-10' AND '2024-02-20' THEN 15
                ELSE 0 
            END AS Discount,
            CASE 
                WHEN d BETWEEN '2024-01-01' AND '2024-01-10' THEN 1
                WHEN d BETWEEN '2024-01-15' AND '2024-01-17' THEN 2
                WHEN d BETWEEN '2024-02-01' AND '2024-02-05' THEN 3
                WHEN d BETWEEN '2024-02-10' AND '2024-02-20' THEN 4
                ELSE NULL 
            END AS PromotionID
        FROM Stores s CROSS JOIN Products p;
        
        d := d + INTERVAL '1 day';
    END LOOP;
END $$;


DO $$
DECLARE
    dt DATE := '2024-01-01';
BEGIN
    WHILE dt <= '2024-02-29' LOOP
        INSERT INTO InventoryDaily (SnapshotDate, StoreID, ProductID, OnHandQty, ReorderPoint)
        SELECT 
            dt,
            s.StoreID,
            p.ProductID,
            (RANDOM() * 150 + 50)::INT AS OnHandQty,
            40 AS ReorderPoint
        FROM Stores s CROSS JOIN Products p;

        dt := dt + INTERVAL '1 day';
    END LOOP;
END $$;
