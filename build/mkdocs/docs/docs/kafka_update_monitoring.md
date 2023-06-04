<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kafka_update_monitoring</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the monitoring settings for the cluster

### Description

Updates the monitoring settings for the cluster. You can use this
operation to specify which Apache Kafka metrics you want Amazon MSK to
send to Amazon CloudWatch. You can also specify settings for open
monitoring with Prometheus.

### Usage

    kafka_update_monitoring(ClusterArn, CurrentVersion, EnhancedMonitoring,
      OpenMonitoring, LoggingInfo)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="kafka_update_monitoring_:_ClusterArn">ClusterArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) that uniquely
identifies the cluster.</p></td>
</tr>
<tr class="even">
<td><code
id="kafka_update_monitoring_:_CurrentVersion">CurrentVersion</code></td>
<td><p>[required] The version of the MSK cluster to update. Cluster
versions aren't simple numbers. You can describe an MSK cluster to find
its version. When this update operation is successful, it generates a
new cluster version.</p></td>
</tr>
<tr class="odd">
<td><code
id="kafka_update_monitoring_:_EnhancedMonitoring">EnhancedMonitoring</code></td>
<td><p>Specifies which Apache Kafka metrics Amazon MSK gathers and sends
to Amazon CloudWatch for this cluster.</p></td>
</tr>
<tr class="even">
<td><code
id="kafka_update_monitoring_:_OpenMonitoring">OpenMonitoring</code></td>
<td><p>The settings for open monitoring.</p></td>
</tr>
<tr class="odd">
<td><code
id="kafka_update_monitoring_:_LoggingInfo">LoggingInfo</code></td>
<td></td>
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

    svc$update_monitoring(
      ClusterArn = "string",
      CurrentVersion = "string",
      EnhancedMonitoring = "DEFAULT"|"PER_BROKER"|"PER_TOPIC_PER_BROKER"|"PER_TOPIC_PER_PARTITION",
      OpenMonitoring = list(
        Prometheus = list(
          JmxExporter = list(
            EnabledInBroker = TRUE|FALSE
          ),
          NodeExporter = list(
            EnabledInBroker = TRUE|FALSE
          )
        )
      ),
      LoggingInfo = list(
        BrokerLogs = list(
          CloudWatchLogs = list(
            Enabled = TRUE|FALSE,
            LogGroup = "string"
          ),
          Firehose = list(
            DeliveryStream = "string",
            Enabled = TRUE|FALSE
          ),
          S3 = list(
            Bucket = "string",
            Enabled = TRUE|FALSE,
            Prefix = "string"
          )
        )
      )
    )
