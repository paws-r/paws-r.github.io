<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>route53domains_delete_domain</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## This operation deletes the specified domain

### Description

This operation deletes the specified domain. This action is permanent.
For more information, see [Deleting a domain name
registration](https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/domain-delete.html).

To transfer the domain registration to another registrar, use the
transfer process that’s provided by the registrar to which you want to
transfer the registration. Otherwise, the following apply:

1.  You can’t get a refund for the cost of a deleted domain
    registration.

2.  The registry for the top-level domain might hold the domain name for
    a brief time before releasing it for other users to register (varies
    by registry).

3.  When the registration has been deleted, we'll send you a
    confirmation to the registrant contact. The email will come from
    `noreply@domainnameverification.net` or
    `noreply@registrar.amazon.com`.

### Usage

    route53domains_delete_domain(DomainName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="route53domains_delete_domain_:_DomainName">DomainName</code></td>
<td><p>[required] Name of the domain to be deleted.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      OperationId = "string"
    )

### Request syntax

    svc$delete_domain(
      DomainName = "string"
    )
