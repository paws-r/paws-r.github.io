<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>directconnect_disassociate_connection_from_lag</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Disassociates a connection from a link aggregation group (LAG)

### Description

Disassociates a connection from a link aggregation group (LAG). The
connection is interrupted and re-established as a standalone connection
(the connection is not deleted; to delete the connection, use the
`delete_connection` request). If the LAG has associated virtual
interfaces or hosted connections, they remain associated with the LAG. A
disassociated connection owned by an Direct Connect Partner is
automatically converted to an interconnect.

If disassociating the connection would cause the LAG to fall below its
setting for minimum number of operational connections, the request
fails, except when it's the last member of the LAG. If all connections
are disassociated, the LAG continues to exist as an empty LAG with no
physical connections.

### Usage

    directconnect_disassociate_connection_from_lag(connectionId, lagId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="directconnect_disassociate_connection_from_lag_:_connectionId">connectionId</code></td>
<td><p>[required] The ID of the connection.</p></td>
</tr>
<tr class="even">
<td><code
id="directconnect_disassociate_connection_from_lag_:_lagId">lagId</code></td>
<td><p>[required] The ID of the LAG.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ownerAccount = "string",
      connectionId = "string",
      connectionName = "string",
      connectionState = "ordering"|"requested"|"pending"|"available"|"down"|"deleting"|"deleted"|"rejected"|"unknown",
      region = "string",
      location = "string",
      bandwidth = "string",
      vlan = 123,
      partnerName = "string",
      loaIssueTime = as.POSIXct(
        "2015-01-01"
      ),
      lagId = "string",
      awsDevice = "string",
      jumboFrameCapable = TRUE|FALSE,
      awsDeviceV2 = "string",
      awsLogicalDeviceId = "string",
      hasLogicalRedundancy = "unknown"|"yes"|"no",
      tags = list(
        list(
          key = "string",
          value = "string"
        )
      ),
      providerName = "string",
      macSecCapable = TRUE|FALSE,
      portEncryptionStatus = "string",
      encryptionMode = "string",
      macSecKeys = list(
        list(
          secretARN = "string",
          ckn = "string",
          state = "string",
          startOn = "string"
        )
      )
    )

### Request syntax

    svc$disassociate_connection_from_lag(
      connectionId = "string",
      lagId = "string"
    )
