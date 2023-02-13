for $libro in doc("books.xml")/bib/libro
return <libro>{data($libro/titulo)} - autores: {count($libro/autor)}</libro>