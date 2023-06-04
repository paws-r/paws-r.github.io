<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kafka_list_cluster_operations</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of all the operations that have been performed on the specified MSK cluster

### Description

Returns a list of all the operations that have been performed on the
specified MSK cluster.

### Usage

    kafka_list_cluster_operations(ClusterArn, MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="kafka_list_cluster_operations_:_ClusterArn">ClusterArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) that uniquely
identifies the cluster.</p></td>
</tr>
<tr class="even">
<td><code
id="kafka_list_cluster_operations_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return in the response. If there
are more results, the response includes a NextToken parameter.</p></td>
</tr>
<tr class="odd">
<td><code
id="kafka_list_cluster_operations_:_NextToken">NextToken</code></td>
<td><p>The paginated results marker. When the result of the operation is
truncated, the call returns NextToken in the response. To get the next
batch, provide this token in your next request.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ClusterOperationInfoList = list(
        list(
          ClientRequestId = "string",
          ClusterArn = "string",
          CreationTime = as.POSIXct(
            "2015-01-01"
          ),
          EndTime = as.POSIXct(
            "2015-01-01"
          ),
          ErrorInfo = list(
            ErrorCode = "string",
            ErrorString = "string"
          ),
          OperationArn = "string",
          OperationState = "string",
          OperationSteps = list(
            list(
              StepInfo = list(
                StepStatus = "string"
              ),
              StepName = "string"
            )
          ),
          OperationType = "string",
          SourceClusterInfo = list(
            BrokerEBSVolumeInfo = list(
              list(
                KafkaBrokerNodeId = "string",
                ProvisionedThroughput = list(
                  Enabled = TRUE|FALSE,
                  VolumeThroughput = 123
                ),
                VolumeSizeGB = 123
              )
            ),
            ConfigurationInfo = list(
              Arn = "string",
              Revision = 123
            ),
            NumberOfBrokerNodes = 123,
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
            InstanceType = "string",
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
            EncryptionInfo = list(
              EncryptionAtRest = list(
                DataVolumeKMSKeyId = "string"
              ),
              EncryptionInTransit = list(
                ClientBroker = "TLS"|"TLS_PLAINTEXT"|"PLAINTEXT",
                InCluster = TRUE|FALSE
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
            StorageMode = "LOCAL"|"TIERED"
          ),
          TargetClusterInfo = list(
            BrokerEBSVolumeInfo = list(
              list(
                KafkaBrokerNodeId = "string",
                ProvisionedThroughput = list(
                  Enabled = TRUE|FALSE,
                  VolumeThroughput = 123
                ),
                VolumeSizeGB = 123
              )
            ),
            ConfigurationInfo = list(
              Arn = "string",
              Revision = 123
            ),
            NumberOfBrokerNodes = 123,
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
            InstanceType = "string",
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
            EncryptionInfo = list(
              EncryptionAtRest = list(
                DataVolumeKMSKeyId = "string"
              ),
              EncryptionInTransit = list(
                ClientBroker = "TLS"|"TLS_PLAINTEXT"|"PLAINTEXT",
                InCluster = TRUE|FALSE
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
            StorageMode = "LOCAL"|"TIERED"
          ),
          VpcConnectionInfo = list(
            VpcConnectionArn = "string",
            Owner = "string",
            UserIdentity = list(
              Type = "AWSACCOUNT"|"AWSSERVICE",
              PrincipalId = "string"
            ),
            CreationTime = as.POSIXct(
              "2015-01-01"
            )
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_cluster_operations(
      ClusterArn = "string",
      MaxResults = 123,
      NextToken = "string"
    )
