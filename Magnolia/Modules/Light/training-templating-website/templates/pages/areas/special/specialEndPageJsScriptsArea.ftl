[#-- Get the site definition --]
[#assign site = sitefn.site()!]
[#-- Get the theme configuration defined for this site --]
[#assign theme = sitefn.theme(site)!]
 
[#-- Using a 'theme' for even more dynamic functionality as infinitive cache-able resources. --]
[#list theme.jsFiles as jsFile]
    <script src="${jsFile.link}"></script>
[/#list]
 
<!-- Info:
This example used the site's theme to include JS recourses configured within the theme.
 
In the end atm no real difference of JS recourses are added here compared to the default 'endPageJsScriptsArea.ftl' script.
But with this setup, one could now include any kind of additional or different JS  resources needed
for this specific page compared to the default and site wide used 'endPageJsScriptsArea.ftl' script."
-->