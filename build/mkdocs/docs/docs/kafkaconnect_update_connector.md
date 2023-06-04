<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kafkaconnect_update_connector</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the specified connector

### Description

Updates the specified connector.

### Usage

    kafkaconnect_update_connector(capacity, connectorArn, currentVersion)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="kafkaconnect_update_connector_:_capacity">capacity</code></td>
<td><p>[required] The target capacity.</p></td>
</tr>
<tr class="even">
<td><code
id="kafkaconnect_update_connector_:_connectorArn">connectorArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the connector that
you want to update.</p></td>
</tr>
<tr class="odd">
<td><code
id="kafkaconnect_update_connector_:_currentVersion">currentVersion</code></td>
<td><p>[required] The current version of the connector that you want to
update.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      connectorArn = "string",
      connectorState = "RUNNING"|"CREATING"|"UPDATING"|"DELETING"|"FAILED"
    )

### Request syntax

    svc$update_connector(
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
      currentVersion = "string"
    )
