<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kafka_get_compatible_kafka_versions</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets the Apache Kafka versions to which you can update the MSK cluster

### Description

Gets the Apache Kafka versions to which you can update the MSK cluster.

### Usage

    kafka_get_compatible_kafka_versions(ClusterArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="kafka_get_compatible_kafka_versions_:_ClusterArn">ClusterArn</code></td>
<td><p>The Amazon Resource Name (ARN) of the cluster check.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      CompatibleKafkaVersions = list(
        list(
          SourceVersion = "string",
          TargetVersions = list(
            "string"
          )
        )
      )
    )

### Request syntax

    svc$get_compatible_kafka_versions(
      ClusterArn = "string"
    )
