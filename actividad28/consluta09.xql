<libros>{
  for $titulo in doc("llibreria.xml")//book/title
  return <titulo>{$titulo/text()}</titulo>
}
<total>{count(doc("llibreria.xml")//book)}</total>
</libros>
