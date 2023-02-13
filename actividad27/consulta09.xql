for $libro in doc("books.xml")/bib/libro
return <result>{data($libro/titulo)}{data($libro/autor)}</result>