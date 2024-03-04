[#-- Get the site definition --]
[#assign site = sitefn.site()!]
[#-- Get the theme configuration defined for this site --]
[#assign theme = sitefn.theme(site)!]
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="${content.description!content.abstract!}">
<meta name="keywords" content="${content.keywords!}">
<meta name="author" content="">
[#-- Access from the page's content: The page's 'title' OR if non-existing, the page's node name. --]
<title>
    ${content.title!content.@name}
</title>
[#-- Using a 'theme' for even more dynamic functionality as infinitive cache-able resources. --]
[#list theme.cssFiles as cssFile]
<link rel="stylesheet" href="${cssFile.link}" media="${cssFile.media}" />
[/#list]
<!-- Info:
This example used the site's theme to include recourses configured within the theme.
In the end atm no real difference of recourses are added here compared to the default 'htmlHeaderArea.ftl' script.
But with this setup, one could now include any kind of additional or different resources needed
for this specific page compared to the default and site wide used 'htmlHeaderArea.ftl' script."
-->