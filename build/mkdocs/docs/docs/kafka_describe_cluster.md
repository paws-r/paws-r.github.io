<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kafka_describe_cluster</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a description of the MSK cluster whose Amazon Resource Name (ARN) is specified in the request

### Description

Returns a description of the MSK cluster whose Amazon Resource Name
(ARN) is specified in the request.

### Usage

    kafka_describe_cluster(ClusterArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="kafka_describe_cluster_:_ClusterArn">ClusterArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) that uniquely
identifies the cluster.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ClusterInfo = list(
        ActiveOperationArn = "string",
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
        ClusterArn = "string",
        ClusterName = "string",
        CreationTime = as.POSIXct(
          "2015-01-01"
        ),
        CurrentBrokerSoftwareInfo = list(
          ConfigurationArn = "string",
          ConfigurationRevision = 123,
          KafkaVersion = "string"
        ),
        CurrentVersion = "string",
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
        State = "ACTIVE"|"CREATING"|"DELETING"|"FAILED"|"HEALING"|"MAINTENANCE"|"REBOOTING_BROKER"|"UPDATING",
        StateInfo = list(
          Code = "string",
          Message = "string"
        ),
        Tags = list(
          "string"
        ),
        ZookeeperConnectString = "string",
        ZookeeperConnectStringTls = "string",
        StorageMode = "LOCAL"|"TIERED"
      )
    )

### Request syntax

    svc$describe_cluster(
      ClusterArn = "string"
    )
