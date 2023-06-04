<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>drs_describe_replication_configuration_templates</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists all ReplicationConfigurationTemplates, filtered by Source Server IDs

### Description

Lists all ReplicationConfigurationTemplates, filtered by Source Server
IDs.

### Usage

    drs_describe_replication_configuration_templates(maxResults, nextToken,
      replicationConfigurationTemplateIDs)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="drs_describe_replication_configuration_templates_:_maxResults">maxResults</code></td>
<td><p>Maximum number of Replication Configuration Templates to
retrieve.</p></td>
</tr>
<tr class="even">
<td><code
id="drs_describe_replication_configuration_templates_:_nextToken">nextToken</code></td>
<td><p>The token of the next Replication Configuration Template to
retrieve.</p></td>
</tr>
<tr class="odd">
<td><code
id="drs_describe_replication_configuration_templates_:_replicationConfigurationTemplateIDs">replicationConfigurationTemplateIDs</code></td>
<td><p>The IDs of the Replication Configuration Templates to retrieve.
An empty list means all Replication Configuration Templates.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      items = list(
        list(
          arn = "string",
          associateDefaultSecurityGroup = TRUE|FALSE,
          autoReplicateNewDisks = TRUE|FALSE,
          bandwidthThrottling = 123,
          createPublicIP = TRUE|FALSE,
          dataPlaneRouting = "PRIVATE_IP"|"PUBLIC_IP",
          defaultLargeStagingDiskType = "GP2"|"GP3"|"ST1"|"AUTO",
          ebsEncryption = "DEFAULT"|"CUSTOM",
          ebsEncryptionKeyArn = "string",
          pitPolicy = list(
            list(
              enabled = TRUE|FALSE,
              interval = 123,
              retentionDuration = 123,
              ruleID = 123,
              units = "MINUTE"|"HOUR"|"DAY"
            )
          ),
          replicationConfigurationTemplateID = "string",
          replicationServerInstanceType = "string",
          replicationServersSecurityGroupsIDs = list(
            "string"
          ),
          stagingAreaSubnetId = "string",
          stagingAreaTags = list(
            "string"
          ),
          tags = list(
            "string"
          ),
          useDedicatedReplicationServer = TRUE|FALSE
        )
      ),
      nextToken = "string"
    )

### Request syntax

    svc$describe_replication_configuration_templates(
      maxResults = 123,
      nextToken = "string",
      replicationConfigurationTemplateIDs = list(
        "string"
      )
    )
