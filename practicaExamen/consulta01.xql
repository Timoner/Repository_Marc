for $nombres in doc("Fexamn.xml")/ClasesDeBaile/Baile
return concat ("Nombre profesor: ",$nombres/Profesor)