<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>route53recoveryreadiness_create_recovery_group</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a recovery group in an account

### Description

Creates a recovery group in an account. A recovery group corresponds to
an application and includes a list of the cells that make up the
application.

### Usage

    route53recoveryreadiness_create_recovery_group(Cells, RecoveryGroupName,
      Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="route53recoveryreadiness_create_recovery_group_:_Cells">Cells</code></td>
<td><p>A list of the cell Amazon Resource Names (ARNs) in the recovery
group.</p></td>
</tr>
<tr class="even">
<td><code
id="route53recoveryreadiness_create_recovery_group_:_RecoveryGroupName">RecoveryGroupName</code></td>
<td><p>[required] The name of the recovery group to create.</p></td>
</tr>
<tr class="odd">
<td><code
id="route53recoveryreadiness_create_recovery_group_:_Tags">Tags</code></td>
<td></td>
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

    svc$create_recovery_group(
      Cells = list(
        "string"
      ),
      RecoveryGroupName = "string",
      Tags = list(
        "string"
      )
    )
