<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>route53recoveryreadiness_delete_recovery_group</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a recovery group

### Description

Deletes a recovery group.

### Usage

    route53recoveryreadiness_delete_recovery_group(RecoveryGroupName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="route53recoveryreadiness_delete_recovery_group_:_RecoveryGroupName">RecoveryGroupName</code></td>
<td><p>[required] The name of a recovery group.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_recovery_group(
      RecoveryGroupName = "string"
    )
