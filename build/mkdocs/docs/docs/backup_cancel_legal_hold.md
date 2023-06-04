<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>backup_cancel_legal_hold</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## This action removes the specified legal hold on a recovery point

### Description

This action removes the specified legal hold on a recovery point. This
action can only be performed by a user with sufficient permissions.

### Usage

    backup_cancel_legal_hold(LegalHoldId, CancelDescription,
      RetainRecordInDays)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="backup_cancel_legal_hold_:_LegalHoldId">LegalHoldId</code></td>
<td><p>[required] Legal hold ID required to remove the specified legal
hold on a recovery point.</p></td>
</tr>
<tr class="even">
<td><code
id="backup_cancel_legal_hold_:_CancelDescription">CancelDescription</code></td>
<td><p>[required] String describing the reason for removing the legal
hold.</p></td>
</tr>
<tr class="odd">
<td><code
id="backup_cancel_legal_hold_:_RetainRecordInDays">RetainRecordInDays</code></td>
<td><p>The integer amount in days specifying amount of days after this
API operation to remove legal hold.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$cancel_legal_hold(
      LegalHoldId = "string",
      CancelDescription = "string",
      RetainRecordInDays = 123
    )
