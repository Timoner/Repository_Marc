for $book in doc("llibreria.xml")//book
let $price_with_tax := $book/price * 1.15
order by $price_with_tax
return
  <book>
    <title>{$book/title/text()}</title>
    <price>{$book/price/text()}</price>
    <price_with_tax>{format-number($price_with_tax, '#.##')}</price_with_tax>
  </book>
