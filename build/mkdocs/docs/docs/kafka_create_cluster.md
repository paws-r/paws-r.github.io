<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kafka_create_cluster</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a new MSK cluster

### Description

Creates a new MSK cluster.

### Usage

    kafka_create_cluster(BrokerNodeGroupInfo, ClientAuthentication,
      ClusterName, ConfigurationInfo, EncryptionInfo, EnhancedMonitoring,
      OpenMonitoring, KafkaVersion, LoggingInfo, NumberOfBrokerNodes, Tags,
      StorageMode)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="kafka_create_cluster_:_BrokerNodeGroupInfo">BrokerNodeGroupInfo</code></td>
<td><p>[required] Information about the broker nodes in the
cluster.</p></td>
</tr>
<tr class="even">
<td><code
id="kafka_create_cluster_:_ClientAuthentication">ClientAuthentication</code></td>
<td><p>Includes all client authentication related information.</p></td>
</tr>
<tr class="odd">
<td><code
id="kafka_create_cluster_:_ClusterName">ClusterName</code></td>
<td><p>[required] The name of the cluster.</p></td>
</tr>
<tr class="even">
<td><code
id="kafka_create_cluster_:_ConfigurationInfo">ConfigurationInfo</code></td>
<td><p>Represents the configuration that you want MSK to use for the
brokers in a cluster.</p></td>
</tr>
<tr class="odd">
<td><code
id="kafka_create_cluster_:_EncryptionInfo">EncryptionInfo</code></td>
<td><p>Includes all encryption-related information.</p></td>
</tr>
<tr class="even">
<td><code
id="kafka_create_cluster_:_EnhancedMonitoring">EnhancedMonitoring</code></td>
<td><p>Specifies the level of monitoring for the MSK cluster. The
possible values are DEFAULT, PER_BROKER, PER_TOPIC_PER_BROKER, and
PER_TOPIC_PER_PARTITION.</p></td>
</tr>
<tr class="odd">
<td><code
id="kafka_create_cluster_:_OpenMonitoring">OpenMonitoring</code></td>
<td><p>The settings for open monitoring.</p></td>
</tr>
<tr class="even">
<td><code
id="kafka_create_cluster_:_KafkaVersion">KafkaVersion</code></td>
<td><p>[required] The version of Apache Kafka.</p></td>
</tr>
<tr class="odd">
<td><code
id="kafka_create_cluster_:_LoggingInfo">LoggingInfo</code></td>
<td></td>
</tr>
<tr class="even">
<td><code
id="kafka_create_cluster_:_NumberOfBrokerNodes">NumberOfBrokerNodes</code></td>
<td><p>[required] The number of broker nodes in the cluster.</p></td>
</tr>
<tr class="odd">
<td><code id="kafka_create_cluster_:_Tags">Tags</code></td>
<td><p>Create tags when creating the cluster.</p></td>
</tr>
<tr class="even">
<td><code
id="kafka_create_cluster_:_StorageMode">StorageMode</code></td>
<td><p>This controls storage mode for supported storage tiers.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ClusterArn = "string",
      ClusterName = "string",
      State = "ACTIVE"|"CREATING"|"DELETING"|"FAILED"|"HEALING"|"MAINTENANCE"|"REBOOTING_BROKER"|"UPDATING"
    )

### Request syntax

    svc$create_cluster(
      BrokerNodeGroupInfo = list(
        BrokerAZDistribution = "DEFAULT",
        ClientSubnets = list(
          "string"
        ),
        InstanceType = "string",
        SecurityGroups = list(
          "string"
        ),
        StorageInfo = list(
          EbsStorageInfo = list(
            ProvisionedThroughput = list(
              Enabled = TRUE|FALSE,
              VolumeThroughput = 123
            ),
            VolumeSize = 123
          )
        ),
        ConnectivityInfo = list(
          PublicAccess = list(
            Type = "string"
          ),
          VpcConnectivity = list(
            ClientAuthentication = list(
              Sasl = list(
                Scram = list(
                  Enabled = TRUE|FALSE
                ),
                Iam = list(
                  Enabled = TRUE|FALSE
                )
              ),
              Tls = list(
                Enabled = TRUE|FALSE
              )
            )
          )
        ),
        ZoneIds = list(
          "string"
        )
      ),
      ClientAuthentication = list(
        Sasl = list(
          Scram = list(
            Enabled = TRUE|FALSE
          ),
          Iam = list(
            Enabled = TRUE|FALSE
          )
        ),
        Tls = list(
          CertificateAuthorityArnList = list(
            "string"
          ),
          Enabled = TRUE|FALSE
        ),
        Unauthenticated = list(
          Enabled = TRUE|FALSE
        )
      ),
      ClusterName = "string",
      ConfigurationInfo = list(
        Arn = "string",
        Revision = 123
      ),
      EncryptionInfo = list(
        EncryptionAtRest = list(
          DataVolumeKMSKeyId = "string"
        ),
        EncryptionInTransit = list(
          ClientBroker = "TLS"|"TLS_PLAINTEXT"|"PLAINTEXT",
          InCluster = TRUE|FALSE
        )
      ),
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
      KafkaVersion = "string",
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
      ),
      NumberOfBrokerNodes = 123,
      Tags = list(
        "string"
      ),
      StorageMode = "LOCAL"|"TIERED"
    )
