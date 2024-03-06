this.execute = function () {
    if (!cmsfn.isEditMode()) {
        let redirectToPage = this.getRedirectLinkManuallyDefined()
        if (StringUtils.isBlank(redirectToPage)) {
            redirectToPage = this.getRedirectLinkToFirstChild();
        }
 
        if (!StringUtils.isEmpty(redirectToPage)) {
            ctx.getResponse().sendRedirect(redirectToPage);
 
        } else {
            ctx.getResponse().sendError(HttpServletResponse.SC_NOT_FOUND);
        }
 
        if (cmsfn.isPublicInstance() || !StringUtils.isEmpty(redirectToPage)) {
            return RenderingModel.SKIP_RENDERING;
        }
    }
    return "";
}
 
this.getRedirectLinkToFirstChild = function () {
    this.log.info("redirectLinkPathToFirstChild")
    const allChildren = NodeUtil.getNodes(content.getJCRNode(), NodeTypes.Page.NAME);
    const iterator = allChildren.iterator();
    if (iterator.hasNext()) {
        return cmsfn.link(iterator.next());
    }
    return null;
}

[#--  Declare your Javascript object  --]
var RedirectModel = function () {
}

[#--  Instantiate the object  --]
new RedirectModel()