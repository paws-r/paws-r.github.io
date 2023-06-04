<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kafkaconnect_delete_connector</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the specified connector

### Description

Deletes the specified connector.

### Usage

    kafkaconnect_delete_connector(connectorArn, currentVersion)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="kafkaconnect_delete_connector_:_connectorArn">connectorArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the connector that
you want to delete.</p></td>
</tr>
<tr class="even">
<td><code
id="kafkaconnect_delete_connector_:_currentVersion">currentVersion</code></td>
<td><p>The current version of the connector that you want to
delete.</p></td>
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

    svc$delete_connector(
      connectorArn = "string",
      currentVersion = "string"
    )
