#MODIFICAR LA COMISIÓN DE LOS VENDEDORES A 0.5% CUANDO SU SUELDO SEA MAYOR O IGUAL A 50000

UPDATE vendedores SET comision=0.5 WHERE sueldo >= 50000;