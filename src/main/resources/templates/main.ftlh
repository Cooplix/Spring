<#import "macros/common.ftlh" as c>
<#import "macros/login.ftlh" as l>

<@c.page>
    <div>
        <@l.logout />
        <span><a href="/user">User list</a></span>
    </div>
    <div>
        <form method="post">
            <input type="text" name="text" placeholder="Enter messages" />
            <input type="text" name="tag" placeholder="tag">
            <input type="file" name="file">
            <input type="hidden" name="_csrf" value="${_csrf.token}" />
            <button type="submit">Add</button>
        </form>
    </div>
    <div>List of messages</div>
    <form method="get" action="/main">
        <input type="text" name="filter" value="${filter?ifExists}">
        <button type="submit">Find</button>
    </form>
    <#list messages as message>
        <div>
            <b>${message.id}</b>
            <span>${message.text}</span>
            <i>${message.tag}</i>
            <strong>${message.authorName}</strong>
            <div>
                <#if message.filename??>
                    <img src = "img/${message.filename}">
                </#if>
            </div>
        </div>
    <#else>
        No message
    </#list>
</@c.page>