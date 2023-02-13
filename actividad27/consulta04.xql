for $libro in doc("books.xml")/bib/libro
where $libro/@anyo<2000
return $libro