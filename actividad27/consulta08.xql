for $libro in distinct-values(doc("books.xml")/bib/libro/autor/apellido)
order by $libro
return data($libro)