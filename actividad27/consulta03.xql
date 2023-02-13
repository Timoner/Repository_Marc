for $libro in doc("books.xml")/bib/libro
where $libro/precio=65.95
return $libro