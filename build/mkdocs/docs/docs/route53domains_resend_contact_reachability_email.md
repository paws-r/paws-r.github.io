<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>route53domains_resend_contact_reachability_email</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## For operations that require confirmation that the email address for the registrant contact is valid, such as registering a new domain, this operation resends the confirmation email to the current email address for the registrant contact

### Description

For operations that require confirmation that the email address for the
registrant contact is valid, such as registering a new domain, this
operation resends the confirmation email to the current email address
for the registrant contact.

### Usage

    route53domains_resend_contact_reachability_email(domainName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="route53domains_resend_contact_reachability_email_:_domainName">domainName</code></td>
<td><p>The name of the domain for which you want Route 53 to resend a
confirmation email to the registrant contact.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      domainName = "string",
      emailAddress = "string",
      isAlreadyVerified = TRUE|FALSE
    )

### Request syntax

    svc$resend_contact_reachability_email(
      domainName = "string"
    )
