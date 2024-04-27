<!DOCTYPE html>
<html xml:lang="en" lang="en" class="no-js">

<head>
    [@cms.page /]
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    [#-- Access from the page's content: The page's 'title' OR if non-existing, the page's node name. --]
    <title>
        ${content.title!content.@name}
    </title>
</head>

<body>
    [#if cmsfn.editMode]
        <div class="panel-heading">
            <h1 class="panel-title">Dear Author</h1>
            <h3 class="panel-title">
                ${model.test!"did not work!"}
            </h3>
        </div>
        <div class="panel-body">
            <p>This 'redirect' page will make a redirect on Public instance, and for testing on Author instance in "preview" mode.</p>
            <p>The page will either redirect to a manually set target page in the dialog, if no target is defined then to the first childpage found.</p>
        </div>
    [/#if]
</body>

</html>