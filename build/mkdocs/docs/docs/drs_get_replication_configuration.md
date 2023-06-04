<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>drs_get_replication_configuration</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets a ReplicationConfiguration, filtered by Source Server ID

### Description

Gets a ReplicationConfiguration, filtered by Source Server ID.

### Usage

    drs_get_replication_configuration(sourceServerID)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="drs_get_replication_configuration_:_sourceServerID">sourceServerID</code></td>
<td><p>[required] The ID of the Source Serve for this Replication
Configuration.r</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      associateDefaultSecurityGroup = TRUE|FALSE,
      autoReplicateNewDisks = TRUE|FALSE,
      bandwidthThrottling = 123,
      createPublicIP = TRUE|FALSE,
      dataPlaneRouting = "PRIVATE_IP"|"PUBLIC_IP",
      defaultLargeStagingDiskType = "GP2"|"GP3"|"ST1"|"AUTO",
      ebsEncryption = "DEFAULT"|"CUSTOM",
      ebsEncryptionKeyArn = "string",
      name = "string",
      pitPolicy = list(
        list(
          enabled = TRUE|FALSE,
          interval = 123,
          retentionDuration = 123,
          ruleID = 123,
          units = "MINUTE"|"HOUR"|"DAY"
        )
      ),
      replicatedDisks = list(
        list(
          deviceName = "string",
          iops = 123,
          isBootDisk = TRUE|FALSE,
          optimizedStagingDiskType = "AUTO"|"GP2"|"GP3"|"IO1"|"SC1"|"ST1"|"STANDARD",
          stagingDiskType = "AUTO"|"GP2"|"GP3"|"IO1"|"SC1"|"ST1"|"STANDARD",
          throughput = 123
        )
      ),
      replicationServerInstanceType = "string",
      replicationServersSecurityGroupsIDs = list(
        "string"
      ),
      sourceServerID = "string",
      stagingAreaSubnetId = "string",
      stagingAreaTags = list(
        "string"
      ),
      useDedicatedReplicationServer = TRUE|FALSE
    )

### Request syntax

    svc$get_replication_configuration(
      sourceServerID = "string"
    )
