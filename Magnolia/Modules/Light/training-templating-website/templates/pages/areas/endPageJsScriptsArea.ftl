[#--  
    [#if def.parameters.resfnStrings?has_content]
        [#list def.parameters.resfnStrings?values as resfnString]
            ${resfn.cachedJs(resfnString)}
        [/#list]
    [/#if]  
--]

[#-- Including JS manually:
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="${ctx.contextPath}/.resources/training-templating-website/webresources/jquery.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="${ctx.contextPath}/.resources/training-templating-website/webresources/bootstrap.min.js"></script>
--]
 
[#-- Using the 'resfn' for a more dynamic approach. --]
${resfn.cachedJs(["/training-templating-website.*jquery.*js", "/training-templating-website.*bootstrap.*js"]) }

<!-- endPageJsScripts -->
[#-- For loading the JS resources you can link them manually. It is the inner path within the light module that always follows '${ctx.contextPath}/.resources' --]
[@cms.area name="endPageJsScripts"/]
<!-- End: endPageJsScripts -->