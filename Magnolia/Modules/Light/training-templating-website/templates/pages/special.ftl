<!DOCTYPE html>
<html xml:lang="${cmsfn.language()}" lang="${cmsfn.language()}">

<head>
    [@cms.page /]
    [#-- htmlHeader --]
    [@cms.area name="htmlHeader"/]
    [#-- End: htmlHeader --]
</head>

<body>
    <div class="container">
        [#-- Navigation --]
        [@cms.area name="navigation"/]
        [#-- End: Navigation --]
        [#-- Page Header --]
        [@cms.area name="pageHeader" /]
        [#-- End: Page Header --]
        [#-- Main Area --]
        [#-- 'main' Area containing Components: 'textImage' & 'twoColumns' --]
        [@cms.area name="main" /]
        [#-- End: Main Area--]
        [#-- Footer --]
        [#-- 'footer' Area containing Components: MTK's 'Text and image' component. --]
        [@cms.area name="footer"/]
        [#-- End: Footer --]
    </div>
    [#-- endPageJsScripts --]
    [@cms.area name="endPageJsScripts"/]
    [#-- End: endPageJsScripts --]
</body>

</html>