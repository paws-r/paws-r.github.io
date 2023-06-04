<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>route53domains_get_contact_reachability_status</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## For operations that require confirmation that the email address for the registrant contact is valid, such as registering a new domain, this operation returns information about whether the registrant contact has responded

### Description

For operations that require confirmation that the email address for the
registrant contact is valid, such as registering a new domain, this
operation returns information about whether the registrant contact has
responded.

If you want us to resend the email, use the
`resend_contact_reachability_email` operation.

### Usage

    route53domains_get_contact_reachability_status(domainName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="route53domains_get_contact_reachability_status_:_domainName">domainName</code></td>
<td><p>The name of the domain for which you want to know whether the
registrant contact has confirmed that the email address is
valid.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      domainName = "string",
      status = "PENDING"|"DONE"|"EXPIRED"
    )

### Request syntax

    svc$get_contact_reachability_status(
      domainName = "string"
    )
