<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>drs_get_failback_replication_configuration</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists all Failback ReplicationConfigurations, filtered by Recovery Instance ID

### Description

Lists all Failback ReplicationConfigurations, filtered by Recovery
Instance ID.

### Usage

    drs_get_failback_replication_configuration(recoveryInstanceID)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="drs_get_failback_replication_configuration_:_recoveryInstanceID">recoveryInstanceID</code></td>
<td><p>[required] The ID of the Recovery Instance whose failback
replication configuration should be returned.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      bandwidthThrottling = 123,
      name = "string",
      recoveryInstanceID = "string",
      usePrivateIP = TRUE|FALSE
    )

### Request syntax

    svc$get_failback_replication_configuration(
      recoveryInstanceID = "string"
    )
