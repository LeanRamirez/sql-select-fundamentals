-- ══════════════════════════════════════════
-- TechStore — Consultas Básicas SELECT
-- Autor: Leandro Maximiliano Ramirez
-- Fecha: 26/07/2026
-- ══════════════════════════════════════════

-- Consulta 1: Exploración general de la tabla sales
-- SELECT * es útil para explorar inicialmente una tabla y conocer todas
-- sus columnas. No se recomienda en producción porque recupera datos
-- innecesarios y puede afectar el rendimiento y la mantenibilidad.

SELECT *
FROM sales;

-- Consulta 2: Selección de columnas específicas para finanzas

SELECT
    customer_id,
    product_id,
    total_amount
FROM sales;

-- Consulta 3: Selección con alias en español para stakeholders

SELECT
    order_date AS fecha_pedido,
    product_name AS nombre_producto,
    quantity AS cantidad_unidades
FROM sales;


--seleccionar columnas y darler un alias para que sea entendible para el equipo de finanzas

SELECT order_date AS fecha_pedido, product_name AS nombre_producto, quantity AS cantidad_unidades FROM sales;
