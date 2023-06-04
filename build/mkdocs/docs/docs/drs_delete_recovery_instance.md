<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>drs_delete_recovery_instance</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a single Recovery Instance by ID

### Description

Deletes a single Recovery Instance by ID. This deletes the Recovery
Instance resource from Elastic Disaster Recovery. The Recovery Instance
must be disconnected first in order to delete it.

### Usage

    drs_delete_recovery_instance(recoveryInstanceID)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="drs_delete_recovery_instance_:_recoveryInstanceID">recoveryInstanceID</code></td>
<td><p>[required] The ID of the Recovery Instance to be
deleted.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_recovery_instance(
      recoveryInstanceID = "string"
    )
