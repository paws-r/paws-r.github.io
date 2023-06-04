<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>macie2_delete_member</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the association between an Amazon Macie administrator account and an account

### Description

Deletes the association between an Amazon Macie administrator account
and an account.

### Usage

    macie2_delete_member(id)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="macie2_delete_member_:_id">id</code></td>
<td><p>[required] The unique identifier for the Amazon Macie resource
that the request applies to.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_member(
      id = "string"
    )
