<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>route53recoveryreadiness_update_recovery_group</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates a recovery group

### Description

Updates a recovery group.

### Usage

    route53recoveryreadiness_update_recovery_group(Cells, RecoveryGroupName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="route53recoveryreadiness_update_recovery_group_:_Cells">Cells</code></td>
<td><p>[required] A list of cell Amazon Resource Names (ARNs). This list
completely replaces the previous list.</p></td>
</tr>
<tr class="even">
<td><code
id="route53recoveryreadiness_update_recovery_group_:_RecoveryGroupName">RecoveryGroupName</code></td>
<td><p>[required] The name of a recovery group.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Cells = list(
        "string"
      ),
      RecoveryGroupArn = "string",
      RecoveryGroupName = "string",
      Tags = list(
        "string"
      )
    )

### Request syntax

    svc$update_recovery_group(
      Cells = list(
        "string"
      ),
      RecoveryGroupName = "string"
    )
