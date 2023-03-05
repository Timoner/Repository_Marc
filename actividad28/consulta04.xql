for $titulo in doc("llibreria.xml")//book[price <= 30]/title
return $titulo/text()
