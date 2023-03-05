for $libro in doc("llibreria.xml")//book[year = 2005]
return <lib2005>
         <titulo>{$libro/title/text()}</titulo>
         <autor>{$libro/author/text()}</autor>
       </lib2005>
