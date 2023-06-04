<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>inspector2_disassociate_member</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Disassociates a member account from an Amazon Inspector delegated administrator

### Description

Disassociates a member account from an Amazon Inspector delegated
administrator.

### Usage

    inspector2_disassociate_member(accountId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="inspector2_disassociate_member_:_accountId">accountId</code></td>
<td><p>[required] The Amazon Web Services account ID of the member
account to disassociate.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      accountId = "string"
    )

### Request syntax

    svc$disassociate_member(
      accountId = "string"
    )
