for $usuario in document("Examen.xml")/negocio
let $nombre := $usuario/nombre/text()
let $actividad := $usuario/actividad/text()
for $dia in $usuario/dias/dia
for $hora in $dia/horas/hora
order by $nombre, $dia/@nombre
return concat($nombre, " - ", $actividad, " - ", $dia/@nombre, " - ", $hora/@inicio, " - ", $hora/@fin)
