<div class="shadow1">
	<div class="content">
	[#if "anonymous" == ctx.user.name || cmsfn.editMode]
			<p>you must <a href="${ctx.getContextPath()}/sportsandimports/login">login</a> or <a href="${ctx.getContextPath()}/sportsandimports/register">register</a> to can comment in this post</p>
	[#else]
<h4>Entry Comments</h4>
		<form action="" method="POST">
			Comment as: ${ctx.user.title!ctx.user.name} (this comment will be public for all blog visitors)<br/>
			<input type="hidden" name="action" value="postComment"/>
			<textarea rows="4" cols="50" name="comment" class="class="form-control"></textarea>
			<input type="hidden" name="father_id" value="${ctx.entry_id}" />
			<input type="hidden" name="csrf" value="${ctx.getAttribute('csrf')!''}" />
			<input type="submit" value="send comment" class="btn btn-primary"/>
[#if ctx.action?has_content && (ctx.action == "postComment")]
	[#assign errors = model.doSum(ctx.user.getIdentifier())![]]
	[#if errors?size > 0]
			<br/>Form errors:<br/>
		[#list errors]
			[#items as error]
			<p style="color:red">${error}</p><br/>
			[/#items]
		[/#list]
	[/#if]
[/#if]
		</form>
[/#if]
	</div>
</div>