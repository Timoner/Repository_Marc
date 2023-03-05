for $libro in doc("llibreria.xml")/bib/libro
order by string-join($libro/autor/apellido)
return
  <libro>
    {concat($libro/titulo, " (", count($libro/autor/apellido), " autores)")}
  </libro>
