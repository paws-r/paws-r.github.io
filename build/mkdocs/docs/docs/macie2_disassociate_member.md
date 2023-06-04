<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>macie2_disassociate_member</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Disassociates an Amazon Macie administrator account from a member account

### Description

Disassociates an Amazon Macie administrator account from a member
account.

### Usage

    macie2_disassociate_member(id)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="macie2_disassociate_member_:_id">id</code></td>
<td><p>[required] The unique identifier for the Amazon Macie resource
that the request applies to.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$disassociate_member(
      id = "string"
    )
