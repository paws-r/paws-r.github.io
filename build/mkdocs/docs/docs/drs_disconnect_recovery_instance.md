<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>drs_disconnect_recovery_instance</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Disconnect a Recovery Instance from Elastic Disaster Recovery

### Description

Disconnect a Recovery Instance from Elastic Disaster Recovery. Data
replication is stopped immediately. All AWS resources created by Elastic
Disaster Recovery for enabling the replication of the Recovery Instance
will be terminated / deleted within 90 minutes. If the agent on the
Recovery Instance has not been prevented from communicating with the
Elastic Disaster Recovery service, then it will receive a command to
uninstall itself (within approximately 10 minutes). The following
properties of the Recovery Instance will be changed immediately:
dataReplicationInfo.dataReplicationState will be set to DISCONNECTED;
The totalStorageBytes property for each of
dataReplicationInfo.replicatedDisks will be set to zero;
dataReplicationInfo.lagDuration and dataReplicationInfo.lagDuration will
be nullified.

### Usage

    drs_disconnect_recovery_instance(recoveryInstanceID)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="drs_disconnect_recovery_instance_:_recoveryInstanceID">recoveryInstanceID</code></td>
<td><p>[required] The ID of the Recovery Instance to
disconnect.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$disconnect_recovery_instance(
      recoveryInstanceID = "string"
    )
