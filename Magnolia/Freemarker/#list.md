<!--  -->
[#list javaClass.getSomeCollection() as elem]
    <li>${elem.title!}</li>
[/#list]

<!--  -->
[#list javaClass.getSomeCollection() ]
  //empty collection save
    [#items as elem]
      <li>${elem.title!}</li>
    [/#items]
[#else]
  //executed on empty collection (else is optional)
[/#list]