for $libro in doc("books.xml")/bib/libro
order by $libro/@anyo
return concat(data($libro/titulo), "->" ,data($libro/@anyo))