for $libro in doc("llibreria.xml")//book
order by $libro/@category, $libro/title
return $libro
