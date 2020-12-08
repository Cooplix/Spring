<#import "macros/common.ftlh" as c>
<#import "macros/login.ftlh" as l>

<@c.page>
    Registration new user
    ${message?ifExist}
    <@l.login "/registration" />
</@c.page>