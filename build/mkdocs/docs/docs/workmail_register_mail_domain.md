<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workmail_register_mail_domain</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Registers a new domain in WorkMail and SES, and configures it for use by WorkMail

### Description

Registers a new domain in WorkMail and SES, and configures it for use by
WorkMail. Emails received by SES for this domain are routed to the
specified WorkMail organization, and WorkMail has permanent permission
to use the specified domain for sending your users' emails.

### Usage

    workmail_register_mail_domain(ClientToken, OrganizationId, DomainName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="workmail_register_mail_domain_:_ClientToken">ClientToken</code></td>
<td><p>Idempotency token used when retrying requests.</p></td>
</tr>
<tr class="even">
<td><code
id="workmail_register_mail_domain_:_OrganizationId">OrganizationId</code></td>
<td><p>[required] The WorkMail organization under which you're creating
the domain.</p></td>
</tr>
<tr class="odd">
<td><code
id="workmail_register_mail_domain_:_DomainName">DomainName</code></td>
<td><p>[required] The name of the mail domain to create in WorkMail and
SES.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$register_mail_domain(
      ClientToken = "string",
      OrganizationId = "string",
      DomainName = "string"
    )
