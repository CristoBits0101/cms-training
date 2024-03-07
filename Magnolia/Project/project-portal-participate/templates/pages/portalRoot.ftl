<!DOCTYPE html>
<html xml:lang="${cmsfn.language()}" lang="${cmsfn.language()}">

<head>

    [#-- Page type template --]
    [@cms.page /]

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>
        ${content.windowTitle!content.navigationTitle!content.title!content.@name}
    </title>
    ${resfn.css("/training-templating-website/webresources/css/.*css")}
</head>