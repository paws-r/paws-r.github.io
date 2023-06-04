<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>inspector2_disable_delegated_admin_account</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Disables the Amazon Inspector delegated administrator for your organization

### Description

Disables the Amazon Inspector delegated administrator for your
organization.

### Usage

    inspector2_disable_delegated_admin_account(delegatedAdminAccountId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="inspector2_disable_delegated_admin_account_:_delegatedAdminAccountId">delegatedAdminAccountId</code></td>
<td><p>[required] The Amazon Web Services account ID of the current
Amazon Inspector delegated administrator.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      delegatedAdminAccountId = "string"
    )

### Request syntax

    svc$disable_delegated_admin_account(
      delegatedAdminAccountId = "string"
    )
