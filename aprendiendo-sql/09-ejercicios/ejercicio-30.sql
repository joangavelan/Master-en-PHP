#MOSTRAR LOS DATOS DEL VENDEDOR CON MÁS ANTIGUEDAD EN EL CONCESIONARIO

SELECT * FROM vendedores ORDER BY fecha ASC LIMIT 1;


#OBTENER LOS COCHES CON MÁS UNIDADES VENDIDAS

SELECT co.*, e.cantidad AS 'ventas' FROM encargos e
INNER JOIN coches co ON co.id = e.coche_id
ORDER BY 2 DESC
LIMIT 3;


SELECT * FROM coches WHERE id IN (SELECT coche_id FROM encargos WHERE cantidad IN (SELECT MAX(cantidad) FROM encargos));