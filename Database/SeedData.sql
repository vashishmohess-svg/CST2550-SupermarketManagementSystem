-- Categories
INSERT INTO Categories (CategoryName)
VALUES
('Beverages'),
('Dairy'),
('Bakery'),
('Household'),
('Personal Care');

-- Suppliers
INSERT INTO Suppliers
(
SupplierName,
Phone,
Email,
Address
)
VALUES
('ABC Distributors','52541234','abc@suppliers.mu','Port Louis'),
('Island Foods Ltd','57445566','islandfoods@suppliers.mu','Curepipe'),
('Fresh Mart Supply','59887766','freshmart@suppliers.mu','Vacoas'),
('Quality Traders','57771122','quality@suppliers.mu','Rose Hill'),
('Sunrise Wholesale','59881100','sunrise@suppliers.mu','Quatre Bornes');

-- Products
INSERT INTO Products
(
Barcode,
Title,
Brand,
CategoryID,
SupplierID,
Price,
ExpiryDate,
RestockDate
)
VALUES

('100001','Coca Cola 1L','Coca Cola',1,1,55.00,'2027-06-30','2026-07-15'),
('100002','Pepsi 1L','Pepsi',1,1,54.00,'2027-06-30','2026-07-15'),
('100003','Orange Juice 1L','Tropicana',1,2,78.00,'2027-05-15','2026-07-20'),
('100004','Mineral Water 1.5L','Crystal',1,2,25.00,'2028-01-01','2026-07-10'),

('200001','Fresh Milk 1L','Candia',2,2,65.00,'2026-08-10','2026-07-05'),
('200002','Yogurt Strawberry','Yoplait',2,2,35.00,'2026-08-01','2026-07-06'),
('200003','Cheddar Cheese','President',2,3,95.00,'2026-09-15','2026-07-10'),
('200004','Butter 250g','Anchor',2,3,88.00,'2026-10-01','2026-07-10'),

('300001','White Bread','Sunshine',3,4,28.00,'2026-07-10','2026-07-03'),
('300002','Wholemeal Bread','Sunshine',3,4,32.00,'2026-07-10','2026-07-03'),
('300003','Croissant','Bakery Plus',3,4,18.00,'2026-07-05','2026-07-02'),
('300004','Burger Buns','Bakery Plus',3,4,40.00,'2026-07-12','2026-07-04'),

('400001','Laundry Detergent','Ariel',4,5,180.00,'2028-01-01','2026-07-15'),
('400002','Dishwashing Liquid','Morning Fresh',4,5,95.00,'2028-01-01','2026-07-15'),
('400003','Toilet Paper Pack','SoftCare',4,5,120.00,'2028-01-01','2026-07-15'),
('400004','Garbage Bags','CleanHome',4,5,60.00,'2028-01-01','2026-07-15'),

('500001','Shampoo 400ml','Pantene',5,5,160.00,'2027-12-01','2026-07-20'),
('500002','Toothpaste','Colgate',5,5,75.00,'2027-11-01','2026-07-20'),
('500003','Soap Bar','Lux',5,5,25.00,'2027-10-01','2026-07-20'),
('500004','Body Lotion','Nivea',5,5,145.00,'2027-09-01','2026-07-20');


-- Stock
INSERT INTO Stock
(
ProductID,
Quantity,
LowStockLevel,
StockStatus
)
VALUES

(1,50,10,'Available'),
(2,45,10,'Available'),
(3,40,10,'Available'),
(4,100,20,'Available'),

(5,30,10,'Available'),
(6,25,10,'Available'),
(7,15,10,'Available'),
(8,12,10,'Available'),

(9,4,10,'Low Stock'),
(10,3,10,'Low Stock'),
(11,2,10,'Low Stock'),
(12,8,10,'Low Stock'),

(13,20,10,'Available'),
(14,15,10,'Available'),
(15,25,10,'Available'),
(16,18,10,'Available'),

(17,12,10,'Available'),
(18,6,10,'Low Stock'),
(19,5,10,'Low Stock'),
(20,10,10,'Available');