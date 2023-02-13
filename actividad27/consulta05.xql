for $libro in doc("books.xml")/bib/libro
where $libro/editorial = "Addison-Wesley" and $libro/@anyo > 1992
return concat(data($libro/@anyo), "->", data($libro/titulo))