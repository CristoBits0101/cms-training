<!DOCTYPE html>
<html xml:lang="${cmsfn.language()}" lang="${cmsfn.language()}">

<head>
    [@cms.page /]
    [#--  Area semántica  --]
    [@cms.area name="htmlHeader"/]  
</head>

<body>
    <div class="container">
        [@cms.area name="navigation"/]
        [@cms.area name="pageHeader" /]
        [@cms.area name="main" /]
        [@cms.area name="footer"/]
    </div>
    [@cms.area name="endPageJsScripts"/]
</body>

</html>