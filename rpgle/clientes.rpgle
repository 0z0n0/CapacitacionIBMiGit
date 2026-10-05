**FREE
//cambios realizados en mi PC local.
// Modificacion realizada por otro programador
// feat: implementar cálculo de fin de mes

ctl-opt option(*nodebugio : *srcstmt) datfmt(*iso);

// Definición de parámetros: Fecha de entrada y Fecha de fin de mes calculada
dcl-pi *n;
  p_fecha  date(*iso);
  p_finMes date(*iso);
end-pi;

// Lógica para calcular el último día del mes:
// 1. Sumamos un mes a la fecha proporcionada.
// 2. Restamos la cantidad de días de esa nueva fecha para retroceder al último día del mes anterior.
p_finMes = p_fecha + %months(1);
p_finMes = p_finMes - %days(%subdt(p_finMes:*d));

*inlr = *on;
