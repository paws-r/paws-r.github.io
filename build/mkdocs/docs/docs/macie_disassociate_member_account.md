<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>macie_disassociate_member_account</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## (Discontinued) Removes the specified member account from Amazon Macie Classic

### Description

(Discontinued) Removes the specified member account from Amazon Macie
Classic.

### Usage

    macie_disassociate_member_account(memberAccountId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="macie_disassociate_member_account_:_memberAccountId">memberAccountId</code></td>
<td><p>[required] (Discontinued) The ID of the member account that you
want to remove from Amazon Macie Classic.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$disassociate_member_account(
      memberAccountId = "string"
    )
