<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workmail_deregister_mail_domain</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Removes a domain from WorkMail, stops email routing to WorkMail, and removes the authorization allowing WorkMail use

### Description

Removes a domain from WorkMail, stops email routing to WorkMail, and
removes the authorization allowing WorkMail use. SES keeps the domain
because other applications may use it. You must first remove any email
address used by WorkMail entities before you remove the domain.

### Usage

    workmail_deregister_mail_domain(OrganizationId, DomainName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="workmail_deregister_mail_domain_:_OrganizationId">OrganizationId</code></td>
<td><p>[required] The WorkMail organization for which the domain will be
deregistered.</p></td>
</tr>
<tr class="even">
<td><code
id="workmail_deregister_mail_domain_:_DomainName">DomainName</code></td>
<td><p>[required] The domain to deregister in WorkMail and SES.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$deregister_mail_domain(
      OrganizationId = "string",
      DomainName = "string"
    )
