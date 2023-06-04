<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>route53domains_cancel_domain_transfer_to_another_aws_account</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Cancels the transfer of a domain from the current Amazon Web Services account to another Amazon Web Services account

### Description

Cancels the transfer of a domain from the current Amazon Web Services
account to another Amazon Web Services account. You initiate a transfer
betweenAmazon Web Services accounts using
`transfer_domain_to_another_aws_account`.

You must cancel the transfer before the other Amazon Web Services
account accepts the transfer using
`accept_domain_transfer_from_another_aws_account`.

Use either `list_operations` or `get_operation_detail` to determine
whether the operation succeeded. `get_operation_detail` provides
additional information, for example,
`⁠Domain Transfer from Aws Account 111122223333 has been cancelled⁠`.

### Usage

    route53domains_cancel_domain_transfer_to_another_aws_account(DomainName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="route53domains_cancel_domain_transfer_to_another_aws_account_:_DomainName">DomainName</code></td>
<td><p>[required] The name of the domain for which you want to cancel
the transfer to another Amazon Web Services account.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      OperationId = "string"
    )

### Request syntax

    svc$cancel_domain_transfer_to_another_aws_account(
      DomainName = "string"
    )
