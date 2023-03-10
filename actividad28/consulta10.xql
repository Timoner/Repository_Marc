let $libro := doc("llibreria.xml")/bookstore/book
return <resultado>
        <minimo>{min($libro/price)}</minimo>
        <maximo>{min($libro/price)}</maximo>
       </resultado>
