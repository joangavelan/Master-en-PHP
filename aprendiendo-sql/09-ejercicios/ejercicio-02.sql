#MODIFICAR LA COMISIÓN DE LOS VENDEDORES A 0.5% CUANDO SU SUELDO SEA MAYOR A 50000

UPDATE vendedores SET comision=2 WHERE sueldo > 50000;