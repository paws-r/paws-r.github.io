<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>route53domains_accept_domain_transfer_from_another_aws_account</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Accepts the transfer of a domain from another Amazon Web Services account to the currentAmazon Web Services account

### Description

Accepts the transfer of a domain from another Amazon Web Services
account to the currentAmazon Web Services account. You initiate a
transfer between Amazon Web Services accounts using
`transfer_domain_to_another_aws_account`.

If you use the CLI command at
[accept-domain-transfer-from-another-aws-account](https://docs.aws.amazon.com/cli/latest/reference/route53domains/accept-domain-transfer-from-another-aws-account.html),
use JSON format as input instead of text because otherwise CLI will
throw an error from domain transfer input that includes single quotes.

Use either `list_operations` or `get_operation_detail` to determine
whether the operation succeeded. `get_operation_detail` provides
additional information, for example,
`⁠Domain Transfer from Aws Account 111122223333 has been cancelled⁠`.

### Usage

    route53domains_accept_domain_transfer_from_another_aws_account(
      DomainName, Password)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="route53domains_accept_domain_transfer_from_another_aws_account_:_DomainName">DomainName</code></td>
<td><p>[required] The name of the domain that was specified when another
Amazon Web Services account submitted a
<code>transfer_domain_to_another_aws_account</code> request.</p></td>
</tr>
<tr class="even">
<td><code
id="route53domains_accept_domain_transfer_from_another_aws_account_:_Password">Password</code></td>
<td><p>[required] The password that was returned by the
<code>transfer_domain_to_another_aws_account</code> request.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      OperationId = "string"
    )

### Request syntax

    svc$accept_domain_transfer_from_another_aws_account(
      DomainName = "string",
      Password = "string"
    )
