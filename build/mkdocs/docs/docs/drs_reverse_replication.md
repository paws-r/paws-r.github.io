<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>drs_reverse_replication</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Start replication to origin / target region - applies only to protected instances that originated in EC2

### Description

Start replication to origin / target region - applies only to protected
instances that originated in EC2. For recovery instances on target
region - starts replication back to origin region. For failback
instances on origin region - starts replication to target region to
re-protect them.

### Usage

    drs_reverse_replication(recoveryInstanceID)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="drs_reverse_replication_:_recoveryInstanceID">recoveryInstanceID</code></td>
<td><p>[required] The ID of the Recovery Instance that we want to
reverse the replication for.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      reversedDirectionSourceServerArn = "string"
    )

### Request syntax

    svc$reverse_replication(
      recoveryInstanceID = "string"
    )
