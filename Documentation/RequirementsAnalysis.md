# Requirements Analysis

## System Purpose
The Local Supermarket Management System is designed to replace manual paper-based record keeping in small supermarkets.

It allows staff to manage products, suppliers, stock levels, and sales in a digital and efficient way.

The system improves accuracy, reduces human error, and supports faster decision-making in daily supermarket operations.

## Functional Requirements

### Product Management

The system should allow staff to manage supermarket products.

The system should:

- Add new products
- Update existing products
- Delete products
- Search products by name, barcode, or category

Each product should contain:

- Product ID (unique)
- Barcode (unique)
- Title
- Brand/Supplier
- Category
- Price
- Quantity in stock
- Expiry or restock date

### Supplier Management

The system should allow staff to manage supplier information.

The system should:

- Add suppliers
- Update supplier details
- Remove suppliers

Each supplier should include:

- Supplier ID
- Supplier name
- Phone number
- Email address

### Stock Management

The system should manage product stock levels efficiently.

The system should:

- Update stock quantities
- Track stock availability
- Detect low stock items
- Trigger low stock alerts

For example, if stock falls below a minimum level, it should be flagged for restocking.

### Sales Management

The system should handle sales transactions in the supermarket.

The system should:

- Record sales transactions
- Store sale details including products and quantities
- Automatically reduce stock after a sale is completed

### Reports

The system should give useful reports for decision making.

The system should provide:

- Low stock report
- Sales by product report
- Products by category report
- Supplier stock report

## Non-Functional Requirements

### Performance
The system should allow fast searching and efficient data processing.

### Data Persistence
All data should be stored permanently using SQL Server.

### Reliability
The system should reduce errors caused by manual record keeping.

### Usability
The system should be simple and easy for supermarket staff to use.

### Security
The system should ensure data integrity and prevent invalid inputs.

## Technologiess

- C#
- WinForms
- SQL Server
- Entity Framework Core
- Custom Data Structures (BST / AVL Tree for searching)