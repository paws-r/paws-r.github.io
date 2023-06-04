<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>drs_update_failback_replication_configuration</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Allows you to update the failback replication configuration of a Recovery Instance by ID

### Description

Allows you to update the failback replication configuration of a
Recovery Instance by ID.

### Usage

    drs_update_failback_replication_configuration(bandwidthThrottling, name,
      recoveryInstanceID, usePrivateIP)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="drs_update_failback_replication_configuration_:_bandwidthThrottling">bandwidthThrottling</code></td>
<td><p>Configure bandwidth throttling for the outbound data transfer
rate of the Recovery Instance in Mbps.</p></td>
</tr>
<tr class="even">
<td><code
id="drs_update_failback_replication_configuration_:_name">name</code></td>
<td><p>The name of the Failback Replication Configuration.</p></td>
</tr>
<tr class="odd">
<td><code
id="drs_update_failback_replication_configuration_:_recoveryInstanceID">recoveryInstanceID</code></td>
<td><p>[required] The ID of the Recovery Instance.</p></td>
</tr>
<tr class="even">
<td><code
id="drs_update_failback_replication_configuration_:_usePrivateIP">usePrivateIP</code></td>
<td><p>Whether to use Private IP for the failback replication of the
Recovery Instance.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_failback_replication_configuration(
      bandwidthThrottling = 123,
      name = "string",
      recoveryInstanceID = "string",
      usePrivateIP = TRUE|FALSE
    )
