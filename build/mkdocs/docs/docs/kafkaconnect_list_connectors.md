<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kafkaconnect_list_connectors</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of all the connectors in this account and Region

### Description

Returns a list of all the connectors in this account and Region. The
list is limited to connectors whose name starts with the specified
prefix. The response also includes a description of each of the listed
connectors.

### Usage

    kafkaconnect_list_connectors(connectorNamePrefix, maxResults, nextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="kafkaconnect_list_connectors_:_connectorNamePrefix">connectorNamePrefix</code></td>
<td><p>The name prefix that you want to use to search for and list
connectors.</p></td>
</tr>
<tr class="even">
<td><code
id="kafkaconnect_list_connectors_:_maxResults">maxResults</code></td>
<td><p>The maximum number of connectors to list in one
response.</p></td>
</tr>
<tr class="odd">
<td><code
id="kafkaconnect_list_connectors_:_nextToken">nextToken</code></td>
<td><p>If the response of a ListConnectors operation is truncated, it
will include a NextToken. Send this NextToken in a subsequent request to
continue listing from where the previous operation left off.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      connectors = list(
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
          workerConfiguration = list(
            revision = 123,
            workerConfigurationArn = "string"
          )
        )
      ),
      nextToken = "string"
    )

### Request syntax

    svc$list_connectors(
      connectorNamePrefix = "string",
      maxResults = 123,
      nextToken = "string"
    )
