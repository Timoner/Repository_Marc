for $libro in doc("books.xml")/bib/libro[count(autor)>=2]
return concat(data($libro/@anyo),"->",data($libro/titulo))