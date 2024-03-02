<!--  -->
[@cms.component content=componentNode /]

<!--  -->
[@cms.component content=componentNode contextAttributes={"indexString":indexString, "useIndex":useIndex}/]

<!--  -->
[#list components]
  <ul>
   [#items as component]
     <li>
       [@cms.component content=component /]
     </li>
   [/#items]      
  </ul>
[/#list]