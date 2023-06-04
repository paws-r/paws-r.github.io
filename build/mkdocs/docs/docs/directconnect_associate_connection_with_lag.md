<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>directconnect_associate_connection_with_lag</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Associates an existing connection with a link aggregation group (LAG)

### Description

Associates an existing connection with a link aggregation group (LAG).
The connection is interrupted and re-established as a member of the LAG
(connectivity to Amazon Web Services is interrupted). The connection
must be hosted on the same Direct Connect endpoint as the LAG, and its
bandwidth must match the bandwidth for the LAG. You can re-associate a
connection that's currently associated with a different LAG; however, if
removing the connection would cause the original LAG to fall below its
setting for minimum number of operational connections, the request
fails.

Any virtual interfaces that are directly associated with the connection
are automatically re-associated with the LAG. If the connection was
originally associated with a different LAG, the virtual interfaces
remain associated with the original LAG.

For interconnects, any hosted connections are automatically
re-associated with the LAG. If the interconnect was originally
associated with a different LAG, the hosted connections remain
associated with the original LAG.

### Usage

    directconnect_associate_connection_with_lag(connectionId, lagId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="directconnect_associate_connection_with_lag_:_connectionId">connectionId</code></td>
<td><p>[required] The ID of the connection.</p></td>
</tr>
<tr class="even">
<td><code
id="directconnect_associate_connection_with_lag_:_lagId">lagId</code></td>
<td><p>[required] The ID of the LAG with which to associate the
connection.</p></td>
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

    svc$associate_connection_with_lag(
      connectionId = "string",
      lagId = "string"
    )
