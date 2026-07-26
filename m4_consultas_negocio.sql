-- ══════════════════════════════════════════
-- TechStore — Consultas Básicas SELECT
-- Autor: Leandro Maximiliano Ramirez
-- Fecha: 26/07/2026
-- ══════════════════════════════════════════

-- Consulta 1: Exploración general de la tabla sales
-- SELECT * FROM sales

-- Consulta 2: Selección de columnas específicas para finanzas
-- SELECT customer_id, product_id, total_amount FROM sales;

-- Consulta 3: Selección con alias en español para stakeholders
-- SELECT order_date AS fecha_pedido, product_name AS nombre_producto, quantity AS cantidad_unidades FROM sales;



USE PruebaS2;
GO;

DROP TABLE IF EXISTS sales;

CREATE TABLE sales (
    order_id       INT,
    order_date     DATE,
    customer_id    INT,
    product_id     INT,
    product_name   VARCHAR(100),
    category       VARCHAR(50),
    quantity       INT,
    unit_price     DECIMAL(10,2),
    total_amount   DECIMAL(10,2)
);

INSERT INTO sales VALUES (1001, '2024-01-05', 201, 301, 'Laptop Pro 15',      'Computación', 2, 1200.00, 2400.00);
INSERT INTO sales VALUES (1002, '2024-01-08', 202, 302, 'Mouse Inalámbrico',  'Accesorios',  5,   28.00,  140.00);
INSERT INTO sales VALUES (1003, '2024-01-12', 203, 303, 'Monitor 4K 27"',     'Computación', 1,  450.00,  450.00);
INSERT INTO sales VALUES (1004, '2024-01-15', 201, 304, 'Teclado Mecánico',   'Accesorios',  3,   95.00,  285.00);
INSERT INTO sales VALUES (1005, '2024-02-03', 204, 305, 'Auriculares BT Pro', 'Audio',       2,  120.00,  240.00);
INSERT INTO sales VALUES (1006, '2024-02-10', 202, 301, 'Laptop Pro 15',      'Computación', 1, 1200.00, 1200.00);
INSERT INTO sales VALUES (1007, '2024-02-18', 205, 306, 'SSD Externo 1TB',    'Almacenamiento', 3, 130.00, 390.00);
INSERT INTO sales VALUES (1008, '2024-03-05', 203, 302, 'Mouse Inalámbrico',  'Accesorios',  8,   28.00,  224.00);
INSERT INTO sales VALUES (1009, '2024-03-12', 204, 303, 'Monitor 4K 27"',     'Computación', 2,  450.00,  900.00);
INSERT INTO sales VALUES (1010, '2024-03-20', 205, 304, 'Teclado Mecánico',   'Accesorios',  4,   95.00,  380.00);


-- Consulta sobre la tabla usando SELECT *

SELECT * FROM sales;

-- Usamos SELECT * cuando queremos analizar la estructura completa de la tabla, asi podemos ver todas las columnas y sus observaciones.
-- Si no usamos SELECT * podemos usar SELECT y el nombre de la columna. Aunque para que sea mejor visualmente y entendible es recomendable usar SELECT AS para darle un alias al nombre de la columna y que sea mas entendible a la hora de presentar los resultados al cliente


--seleccion de columnas especificas

SELECT customer_id, product_id, total_amount FROM sales;


--seleccionar columnas y darler un alias para que sea entendible para el equipo de finanzas

SELECT order_date AS fecha_pedido, product_name AS nombre_producto, quantity AS cantidad_unidades FROM sales;
