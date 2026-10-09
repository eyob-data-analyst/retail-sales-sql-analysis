# Retail Sales Database Design

## Overview

The database is designed to support basic retail sales reporting using four relational tables.

## Tables and Relationships

### Customers

Stores fictional customer information.

Primary key: `customer_id`

### Products

Stores product names and categories.

Primary key: `product_id`

### Orders

Stores order dates and the customer associated with each order.

Primary key: `order_id`

Foreign key: `customer_id` references `customers.customer_id`.

### Order Items

Stores the products, quantities, and unit prices associated with each order.

Primary key: `order_item_id`

Foreign keys:

* `order_id` references `orders.order_id`.
* `product_id` references `products.product_id`.

## Relationship Summary

* One customer can have multiple orders.
* One order can contain multiple order items.
* One product can appear in multiple order items.

## Revenue Calculation

Line revenue is calculated as:

`quantity * unit_price`

Total revenue is the sum of line revenue across the selected reporting period.

## Design Considerations

Primary keys identify records uniquely, while foreign keys enforce relationships between tables. Quantity and price constraints prevent invalid values from being inserted.

The model is intended for demonstration and portfolio learning. It is not a complete production retail database design.
