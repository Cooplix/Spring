<#import "macros/common.ftl" as c>
<#import "macros/login.ftl" as l>

<@c.page>
Registration new user
${message}
<@l.login "/registration" />
</@c.page>