for $baile in doc("Fexamn.xml")/ClasesDeBaile/Baile
where $baile/Precio < "35" and $baile/Sala = "2"
return $baile