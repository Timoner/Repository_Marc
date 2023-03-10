for $titulo in doc("llibreria.xml")/bookstore/book
let $ano := $titulo/year
return <publicacion>{data($ano)}</publicacion>