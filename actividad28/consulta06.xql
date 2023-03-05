<publicación>{
  for $año in distinct-values(doc("llibreriaxml")//book/year)
  let $total := count(doc("llibreria.xml")//book[year = $año])
  return <año total="{$total}">{$año}</año>
}</publicación>
