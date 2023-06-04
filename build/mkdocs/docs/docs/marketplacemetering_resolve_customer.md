<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>marketplacemetering_resolve_customer</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## ResolveCustomer is called by a SaaS application during the registration process

### Description

`resolve_customer` is called by a SaaS application during the
registration process. When a buyer visits your website during the
registration process, the buyer submits a registration token through
their browser. The registration token is resolved through this API to
obtain a `CustomerIdentifier` along with the `CustomerAWSAccountId` and
`ProductCode`.

The API needs to called from the seller account id used to publish the
SaaS application to successfully resolve the token.

For an example of using `resolve_customer`, see [ResolveCustomer code
example](https://docs.aws.amazon.com/marketplace/latest/userguide/saas-code-examples.html#saas-resolvecustomer-example)
in the *AWS Marketplace Seller Guide*.

### Usage

    marketplacemetering_resolve_customer(RegistrationToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="marketplacemetering_resolve_customer_:_RegistrationToken">RegistrationToken</code></td>
<td><p>[required] When a buyer visits your website during the
registration process, the buyer submits a registration token through the
browser. The registration token is resolved to obtain a
<code>CustomerIdentifier</code> along with the
<code>CustomerAWSAccountId</code> and <code>ProductCode</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      CustomerIdentifier = "string",
      ProductCode = "string",
      CustomerAWSAccountId = "string"
    )

### Request syntax

    svc$resolve_customer(
      RegistrationToken = "string"
    )
