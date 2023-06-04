<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>route53recoveryreadiness_get_recovery_group</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets details about a recovery group, including a list of the cells that are included in it

### Description

Gets details about a recovery group, including a list of the cells that
are included in it.

### Usage

    route53recoveryreadiness_get_recovery_group(RecoveryGroupName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="route53recoveryreadiness_get_recovery_group_:_RecoveryGroupName">RecoveryGroupName</code></td>
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

    svc$get_recovery_group(
      RecoveryGroupName = "string"
    )
