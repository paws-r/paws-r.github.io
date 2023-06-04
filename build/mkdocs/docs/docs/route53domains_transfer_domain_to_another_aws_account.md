<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>route53domains_transfer_domain_to_another_aws_account</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Transfers a domain from the current Amazon Web Services account to another Amazon Web Services account

### Description

Transfers a domain from the current Amazon Web Services account to
another Amazon Web Services account. Note the following:

-   The Amazon Web Services account that you're transferring the domain
    to must accept the transfer. If the other account doesn't accept the
    transfer within 3 days, we cancel the transfer. See
    `accept_domain_transfer_from_another_aws_account`.

-   You can cancel the transfer before the other account accepts it. See
    `cancel_domain_transfer_to_another_aws_account`.

-   The other account can reject the transfer. See
    `reject_domain_transfer_from_another_aws_account`.

When you transfer a domain from one Amazon Web Services account to
another, Route 53 doesn't transfer the hosted zone that is associated
with the domain. DNS resolution isn't affected if the domain and the
hosted zone are owned by separate accounts, so transferring the hosted
zone is optional. For information about transferring the hosted zone to
another Amazon Web Services account, see [Migrating a Hosted Zone to a
Different Amazon Web Services
Account](https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/hosted-zones-migrating.html)
in the *Amazon Route 53 Developer Guide*.

Use either `list_operations` or `get_operation_detail` to determine
whether the operation succeeded. `get_operation_detail` provides
additional information, for example,
`⁠Domain Transfer from Aws Account 111122223333 has been cancelled⁠`.

### Usage

    route53domains_transfer_domain_to_another_aws_account(DomainName,
      AccountId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="route53domains_transfer_domain_to_another_aws_account_:_DomainName">DomainName</code></td>
<td><p>[required] The name of the domain that you want to transfer from
the current Amazon Web Services account to another account.</p></td>
</tr>
<tr class="even">
<td><code
id="route53domains_transfer_domain_to_another_aws_account_:_AccountId">AccountId</code></td>
<td><p>[required] The account ID of the Amazon Web Services account that
you want to transfer the domain to, for example,
<code>111122223333</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      OperationId = "string",
      Password = "string"
    )

### Request syntax

    svc$transfer_domain_to_another_aws_account(
      DomainName = "string",
      AccountId = "string"
    )
