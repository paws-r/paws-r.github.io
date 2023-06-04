<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>inspector2_enable_delegated_admin_account</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Enables the Amazon Inspector delegated administrator for your Organizations organization

### Description

Enables the Amazon Inspector delegated administrator for your
Organizations organization.

### Usage

    inspector2_enable_delegated_admin_account(clientToken,
      delegatedAdminAccountId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="inspector2_enable_delegated_admin_account_:_clientToken">clientToken</code></td>
<td><p>The idempotency token for the request.</p></td>
</tr>
<tr class="even">
<td><code
id="inspector2_enable_delegated_admin_account_:_delegatedAdminAccountId">delegatedAdminAccountId</code></td>
<td><p>[required] The Amazon Web Services account ID of the Amazon
Inspector delegated administrator.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      delegatedAdminAccountId = "string"
    )

### Request syntax

    svc$enable_delegated_admin_account(
      clientToken = "string",
      delegatedAdminAccountId = "string"
    )
