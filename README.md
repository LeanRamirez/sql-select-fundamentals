# SQL SELECT Fundamentals

## 1. ¿Por qué es una mala práctica utilizar `SELECT *` en producción?

En producción, utilizar `SELECT *` es una mala práctica porque recupera todas las columnas de una tabla, incluso aquellas que no son necesarias. Esto aumenta la cantidad de datos procesados y transferidos, generando un mayor consumo de memoria, tiempo y recursos del servidor.

También dificulta la mantenibilidad del código. Si posteriormente se agregan, eliminan o modifican columnas en la tabla, el resultado de la consulta puede cambiar inesperadamente. Por este motivo, es recomendable seleccionar únicamente las columnas necesarias.

```sql
SELECT nombre, precio, stock
FROM productos;
```

## 2. ¿Por qué son importantes los alias para un stakeholder no técnico?

Los alias permiten reemplazar temporalmente los nombres técnicos de las columnas por títulos más claros y fáciles de interpretar. Esto facilita la lectura de los resultados para stakeholders no técnicos, como gerentes, clientes o responsables de otras áreas.

El alias no modifica el nombre original de la columna en la base de datos; solamente cambia el nombre que aparece en el resultado de la consulta. Esto mejora la presentación y la comprensión de la información sin alterar la estructura de la tabla.

Por ejemplo:

```sql
SELECT
    nombre_producto AS [Nombre del producto],
    precio AS [Precio de venta],
    stock AS [Unidades disponibles]
FROM productos;
```

En este ejemplo, los alias presentan los nombres técnicos de las columnas con títulos más descriptivos para el usuario final.

