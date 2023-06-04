<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workmail_update_default_mail_domain</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the default mail domain for an organization

### Description

Updates the default mail domain for an organization. The default mail
domain is used by the WorkMail AWS Console to suggest an email address
when enabling a mail user. You can only have one default domain.

### Usage

    workmail_update_default_mail_domain(OrganizationId, DomainName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="workmail_update_default_mail_domain_:_OrganizationId">OrganizationId</code></td>
<td><p>[required] The WorkMail organization for which to list
domains.</p></td>
</tr>
<tr class="even">
<td><code
id="workmail_update_default_mail_domain_:_DomainName">DomainName</code></td>
<td><p>[required] The domain name that will become the default
domain.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_default_mail_domain(
      OrganizationId = "string",
      DomainName = "string"
    )
