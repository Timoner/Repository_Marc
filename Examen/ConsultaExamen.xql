for $u in //usuario
let $nombre := $u/nombre
let $actividades :=
  for $a in $u/actividades/actividad
  order by $a/dia, $a/hora
  return concat($a/nombre/text(), ' el día ', $a/dia/text(), ' a las ', $a/hora/text())
order by $nombre
return concat($nombre, ': ', string-join($actividades, ', '), '&#10;')
