for $titulo in doc("llibreria.xml")//titulo
return <titulo>{$titulo/text()}</titulo>