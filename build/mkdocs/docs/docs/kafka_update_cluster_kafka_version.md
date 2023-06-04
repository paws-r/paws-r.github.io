<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kafka_update_cluster_kafka_version</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the Apache Kafka version for the cluster

### Description

Updates the Apache Kafka version for the cluster.

### Usage

    kafka_update_cluster_kafka_version(ClusterArn, ConfigurationInfo,
      CurrentVersion, TargetKafkaVersion)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="kafka_update_cluster_kafka_version_:_ClusterArn">ClusterArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the cluster to be
updated.</p></td>
</tr>
<tr class="even">
<td><code
id="kafka_update_cluster_kafka_version_:_ConfigurationInfo">ConfigurationInfo</code></td>
<td><p>The custom configuration that should be applied on the new
version of cluster.</p></td>
</tr>
<tr class="odd">
<td><code
id="kafka_update_cluster_kafka_version_:_CurrentVersion">CurrentVersion</code></td>
<td><p>[required] Current cluster version.</p></td>
</tr>
<tr class="even">
<td><code
id="kafka_update_cluster_kafka_version_:_TargetKafkaVersion">TargetKafkaVersion</code></td>
<td><p>[required] Target Kafka version.</p></td>
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

    svc$update_cluster_kafka_version(
      ClusterArn = "string",
      ConfigurationInfo = list(
        Arn = "string",
        Revision = 123
      ),
      CurrentVersion = "string",
      TargetKafkaVersion = "string"
    )
