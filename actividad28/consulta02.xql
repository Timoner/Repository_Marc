for $libro in doc("llibreria.xml")//book
where $libro/price <= 30
return $libro
