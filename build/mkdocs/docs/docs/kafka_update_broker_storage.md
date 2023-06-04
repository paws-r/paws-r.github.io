<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kafka_update_broker_storage</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the EBS storage associated with MSK brokers

### Description

Updates the EBS storage associated with MSK brokers.

### Usage

    kafka_update_broker_storage(ClusterArn, CurrentVersion,
      TargetBrokerEBSVolumeInfo)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="kafka_update_broker_storage_:_ClusterArn">ClusterArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) that uniquely
identifies the cluster.</p></td>
</tr>
<tr class="even">
<td><code
id="kafka_update_broker_storage_:_CurrentVersion">CurrentVersion</code></td>
<td><p>[required] The version of cluster to update from. A successful
operation will then generate a new version.</p></td>
</tr>
<tr class="odd">
<td><code
id="kafka_update_broker_storage_:_TargetBrokerEBSVolumeInfo">TargetBrokerEBSVolumeInfo</code></td>
<td><p>[required] Describes the target volume size and the ID of the
broker to apply the update to.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ClusterArn = "string",
      ClusterOperationArn = "string"
    )

### Request syntax

    svc$update_broker_storage(
      ClusterArn = "string",
      CurrentVersion = "string",
      TargetBrokerEBSVolumeInfo = list(
        list(
          KafkaBrokerNodeId = "string",
          ProvisionedThroughput = list(
            Enabled = TRUE|FALSE,
            VolumeThroughput = 123
          ),
          VolumeSizeGB = 123
        )
      )
    )
