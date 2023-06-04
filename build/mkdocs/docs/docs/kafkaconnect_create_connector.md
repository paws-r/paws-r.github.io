<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kafkaconnect_create_connector</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a connector using the specified properties

### Description

Creates a connector using the specified properties.

### Usage

    kafkaconnect_create_connector(capacity, connectorConfiguration,
      connectorDescription, connectorName, kafkaCluster,
      kafkaClusterClientAuthentication, kafkaClusterEncryptionInTransit,
      kafkaConnectVersion, logDelivery, plugins, serviceExecutionRoleArn,
      workerConfiguration)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="kafkaconnect_create_connector_:_capacity">capacity</code></td>
<td><p>[required] Information about the capacity allocated to the
connector. Exactly one of the two properties must be specified.</p></td>
</tr>
<tr class="even">
<td><code
id="kafkaconnect_create_connector_:_connectorConfiguration">connectorConfiguration</code></td>
<td><p>[required] A map of keys to values that represent the
configuration for the connector.</p></td>
</tr>
<tr class="odd">
<td><code
id="kafkaconnect_create_connector_:_connectorDescription">connectorDescription</code></td>
<td><p>A summary description of the connector.</p></td>
</tr>
<tr class="even">
<td><code
id="kafkaconnect_create_connector_:_connectorName">connectorName</code></td>
<td><p>[required] The name of the connector.</p></td>
</tr>
<tr class="odd">
<td><code
id="kafkaconnect_create_connector_:_kafkaCluster">kafkaCluster</code></td>
<td><p>[required] Specifies which Apache Kafka cluster to connect
to.</p></td>
</tr>
<tr class="even">
<td><code
id="kafkaconnect_create_connector_:_kafkaClusterClientAuthentication">kafkaClusterClientAuthentication</code></td>
<td><p>[required] Details of the client authentication used by the
Apache Kafka cluster.</p></td>
</tr>
<tr class="odd">
<td><code
id="kafkaconnect_create_connector_:_kafkaClusterEncryptionInTransit">kafkaClusterEncryptionInTransit</code></td>
<td><p>[required] Details of encryption in transit to the Apache Kafka
cluster.</p></td>
</tr>
<tr class="even">
<td><code
id="kafkaconnect_create_connector_:_kafkaConnectVersion">kafkaConnectVersion</code></td>
<td><p>[required] The version of Kafka Connect. It has to be compatible
with both the Apache Kafka cluster's version and the plugins.</p></td>
</tr>
<tr class="odd">
<td><code
id="kafkaconnect_create_connector_:_logDelivery">logDelivery</code></td>
<td><p>Details about log delivery.</p></td>
</tr>
<tr class="even">
<td><code
id="kafkaconnect_create_connector_:_plugins">plugins</code></td>
<td><p>[required] Specifies which plugins to use for the
connector.</p></td>
</tr>
<tr class="odd">
<td><code
id="kafkaconnect_create_connector_:_serviceExecutionRoleArn">serviceExecutionRoleArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the IAM role used by
the connector to access the Amazon Web Services resources that it needs.
The types of resources depends on the logic of the connector. For
example, a connector that has Amazon S3 as a destination must have
permissions that allow it to write to the S3 destination
bucket.</p></td>
</tr>
<tr class="even">
<td><code
id="kafkaconnect_create_connector_:_workerConfiguration">workerConfiguration</code></td>
<td><p>Specifies which worker configuration to use with the
connector.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      connectorArn = "string",
      connectorName = "string",
      connectorState = "RUNNING"|"CREATING"|"UPDATING"|"DELETING"|"FAILED"
    )

### Request syntax

    svc$create_connector(
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
      connectorConfiguration = list(
        "string"
      ),
      connectorDescription = "string",
      connectorName = "string",
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
      workerConfiguration = list(
        revision = 123,
        workerConfigurationArn = "string"
      )
    )
