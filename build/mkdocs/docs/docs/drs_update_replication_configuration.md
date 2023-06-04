<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>drs_update_replication_configuration</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Allows you to update a ReplicationConfiguration by Source Server ID

### Description

Allows you to update a ReplicationConfiguration by Source Server ID.

### Usage

    drs_update_replication_configuration(associateDefaultSecurityGroup,
      autoReplicateNewDisks, bandwidthThrottling, createPublicIP,
      dataPlaneRouting, defaultLargeStagingDiskType, ebsEncryption,
      ebsEncryptionKeyArn, name, pitPolicy, replicatedDisks,
      replicationServerInstanceType, replicationServersSecurityGroupsIDs,
      sourceServerID, stagingAreaSubnetId, stagingAreaTags,
      useDedicatedReplicationServer)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="drs_update_replication_configuration_:_associateDefaultSecurityGroup">associateDefaultSecurityGroup</code></td>
<td><p>Whether to associate the default Elastic Disaster Recovery
Security group with the Replication Configuration.</p></td>
</tr>
<tr class="even">
<td><code
id="drs_update_replication_configuration_:_autoReplicateNewDisks">autoReplicateNewDisks</code></td>
<td><p>Whether to allow the AWS replication agent to automatically
replicate newly added disks.</p></td>
</tr>
<tr class="odd">
<td><code
id="drs_update_replication_configuration_:_bandwidthThrottling">bandwidthThrottling</code></td>
<td><p>Configure bandwidth throttling for the outbound data transfer
rate of the Source Server in Mbps.</p></td>
</tr>
<tr class="even">
<td><code
id="drs_update_replication_configuration_:_createPublicIP">createPublicIP</code></td>
<td><p>Whether to create a Public IP for the Recovery Instance by
default.</p></td>
</tr>
<tr class="odd">
<td><code
id="drs_update_replication_configuration_:_dataPlaneRouting">dataPlaneRouting</code></td>
<td><p>The data plane routing mechanism that will be used for
replication.</p></td>
</tr>
<tr class="even">
<td><code
id="drs_update_replication_configuration_:_defaultLargeStagingDiskType">defaultLargeStagingDiskType</code></td>
<td><p>The Staging Disk EBS volume type to be used during
replication.</p></td>
</tr>
<tr class="odd">
<td><code
id="drs_update_replication_configuration_:_ebsEncryption">ebsEncryption</code></td>
<td><p>The type of EBS encryption to be used during
replication.</p></td>
</tr>
<tr class="even">
<td><code
id="drs_update_replication_configuration_:_ebsEncryptionKeyArn">ebsEncryptionKeyArn</code></td>
<td><p>The ARN of the EBS encryption key to be used during
replication.</p></td>
</tr>
<tr class="odd">
<td><code
id="drs_update_replication_configuration_:_name">name</code></td>
<td><p>The name of the Replication Configuration.</p></td>
</tr>
<tr class="even">
<td><code
id="drs_update_replication_configuration_:_pitPolicy">pitPolicy</code></td>
<td><p>The Point in time (PIT) policy to manage snapshots taken during
replication.</p></td>
</tr>
<tr class="odd">
<td><code
id="drs_update_replication_configuration_:_replicatedDisks">replicatedDisks</code></td>
<td><p>The configuration of the disks of the Source Server to be
replicated.</p></td>
</tr>
<tr class="even">
<td><code
id="drs_update_replication_configuration_:_replicationServerInstanceType">replicationServerInstanceType</code></td>
<td><p>The instance type to be used for the replication server.</p></td>
</tr>
<tr class="odd">
<td><code
id="drs_update_replication_configuration_:_replicationServersSecurityGroupsIDs">replicationServersSecurityGroupsIDs</code></td>
<td><p>The security group IDs that will be used by the replication
server.</p></td>
</tr>
<tr class="even">
<td><code
id="drs_update_replication_configuration_:_sourceServerID">sourceServerID</code></td>
<td><p>[required] The ID of the Source Server for this Replication
Configuration.</p></td>
</tr>
<tr class="odd">
<td><code
id="drs_update_replication_configuration_:_stagingAreaSubnetId">stagingAreaSubnetId</code></td>
<td><p>The subnet to be used by the replication staging area.</p></td>
</tr>
<tr class="even">
<td><code
id="drs_update_replication_configuration_:_stagingAreaTags">stagingAreaTags</code></td>
<td><p>A set of tags to be associated with all resources created in the
replication staging area: EC2 replication server, EBS volumes, EBS
snapshots, etc.</p></td>
</tr>
<tr class="odd">
<td><code
id="drs_update_replication_configuration_:_useDedicatedReplicationServer">useDedicatedReplicationServer</code></td>
<td><p>Whether to use a dedicated Replication Server in the replication
staging area.</p></td>
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

    svc$update_replication_configuration(
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
