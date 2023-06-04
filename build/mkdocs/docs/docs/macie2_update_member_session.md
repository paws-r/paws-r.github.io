<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>macie2_update_member_session</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Enables an Amazon Macie administrator to suspend or re-enable Macie for a member account

### Description

Enables an Amazon Macie administrator to suspend or re-enable Macie for
a member account.

### Usage

    macie2_update_member_session(id, status)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="macie2_update_member_session_:_id">id</code></td>
<td><p>[required] The unique identifier for the Amazon Macie resource
that the request applies to.</p></td>
</tr>
<tr class="even">
<td><code id="macie2_update_member_session_:_status">status</code></td>
<td><p>[required] Specifies the new status for the account. Valid values
are: ENABLED, resume all Amazon Macie activities for the account; and,
PAUSED, suspend all Macie activities for the account.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_member_session(
      id = "string",
      status = "PAUSED"|"ENABLED"
    )
