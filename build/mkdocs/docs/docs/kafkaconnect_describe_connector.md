<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kafkaconnect_describe_connector</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns summary information about the connector

### Description

Returns summary information about the connector.

### Usage

    kafkaconnect_describe_connector(connectorArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="kafkaconnect_describe_connector_:_connectorArn">connectorArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the connector that
you want to describe.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      capacity = list(
        autoScaling = list(
          maxWorkerCount = 123,
          mcuCount = 123,
          minWorkerCount = 123,
          scaleInPolicy = list(
            cpuUtilizationPercentage = 123
          ),
          scaleOutPolicy = list(
            cpuUtilizationPercentage = 123
          )
        ),
        provisionedCapacity = list(
          mcuCount = 123,
          workerCount = 123
        )
      ),
      connectorArn = "string",
      connectorConfiguration = list(
        "string"
      ),
      connectorDescription = "string",
      connectorName = "string",
      connectorState = "RUNNING"|"CREATING"|"UPDATING"|"DELETING"|"FAILED",
      creationTime = as.POSIXct(
        "2015-01-01"
      ),
      currentVersion = "string",
      kafkaCluster = list(
        apacheKafkaCluster = list(
          bootstrapServers = "string",
          vpc = list(
            securityGroups = list(
              "string"
            ),
            subnets = list(
              "string"
            )
          )
        )
      ),
      kafkaClusterClientAuthentication = list(
        authenticationType = "NONE"|"IAM"
      ),
      kafkaClusterEncryptionInTransit = list(
        encryptionType = "PLAINTEXT"|"TLS"
      ),
      kafkaConnectVersion = "string",
      logDelivery = list(
        workerLogDelivery = list(
          cloudWatchLogs = list(
            enabled = TRUE|FALSE,
            logGroup = "string"
          ),
          firehose = list(
            deliveryStream = "string",
            enabled = TRUE|FALSE
          ),
          s3 = list(
            bucket = "string",
            enabled = TRUE|FALSE,
            prefix = "string"
          )
        )
      ),
      plugins = list(
        list(
          customPlugin = list(
            customPluginArn = "string",
            revision = 123
          )
        )
      ),
      serviceExecutionRoleArn = "string",
      stateDescription = list(
        code = "string",
        message = "string"
      ),
      workerConfiguration = list(
        revision = 123,
        workerConfigurationArn = "string"
      )
    )

### Request syntax

    svc$describe_connector(
      connectorArn = "string"
    )
