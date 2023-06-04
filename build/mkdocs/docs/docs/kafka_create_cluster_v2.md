<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kafka_create_cluster_v2</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a new MSK cluster

### Description

Creates a new MSK cluster.

### Usage

    kafka_create_cluster_v2(ClusterName, Tags, Provisioned, Serverless)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="kafka_create_cluster_v2_:_ClusterName">ClusterName</code></td>
<td><p>[required] The name of the cluster.</p></td>
</tr>
<tr class="even">
<td><code id="kafka_create_cluster_v2_:_Tags">Tags</code></td>
<td><p>A map of tags that you want the cluster to have.</p></td>
</tr>
<tr class="odd">
<td><code
id="kafka_create_cluster_v2_:_Provisioned">Provisioned</code></td>
<td><p>Information about the provisioned cluster.</p></td>
</tr>
<tr class="even">
<td><code
id="kafka_create_cluster_v2_:_Serverless">Serverless</code></td>
<td><p>Information about the serverless cluster.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ClusterArn = "string",
      ClusterName = "string",
      State = "ACTIVE"|"CREATING"|"DELETING"|"FAILED"|"HEALING"|"MAINTENANCE"|"REBOOTING_BROKER"|"UPDATING",
      ClusterType = "PROVISIONED"|"SERVERLESS"
    )

### Request syntax

    svc$create_cluster_v2(
      ClusterName = "string",
      Tags = list(
        "string"
      ),
      Provisioned = list(
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
        StorageMode = "LOCAL"|"TIERED"
      ),
      Serverless = list(
        VpcConfigs = list(
          list(
            SubnetIds = list(
              "string"
            ),
            SecurityGroupIds = list(
              "string"
            )
          )
        ),
        ClientAuthentication = list(
          Sasl = list(
            Iam = list(
              Enabled = TRUE|FALSE
            )
          )
        )
      )
    )
