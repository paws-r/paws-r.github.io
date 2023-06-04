<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>directconnect_update_lag</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the attributes of the specified link aggregation group (LAG)

### Description

Updates the attributes of the specified link aggregation group (LAG).

You can update the following LAG attributes:

-   The name of the LAG.

-   The value for the minimum number of connections that must be
    operational for the LAG itself to be operational.

-   The LAG's MACsec encryption mode.

    Amazon Web Services assigns this value to each connection which is
    part of the LAG.

-   The tags

If you adjust the threshold value for the minimum number of operational
connections, ensure that the new value does not cause the LAG to fall
below the threshold and become non-operational.

### Usage

    directconnect_update_lag(lagId, lagName, minimumLinks, encryptionMode)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="directconnect_update_lag_:_lagId">lagId</code></td>
<td><p>[required] The ID of the LAG.</p></td>
</tr>
<tr class="even">
<td><code id="directconnect_update_lag_:_lagName">lagName</code></td>
<td><p>The name of the LAG.</p></td>
</tr>
<tr class="odd">
<td><code
id="directconnect_update_lag_:_minimumLinks">minimumLinks</code></td>
<td><p>The minimum number of physical connections that must be
operational for the LAG itself to be operational.</p></td>
</tr>
<tr class="even">
<td><code
id="directconnect_update_lag_:_encryptionMode">encryptionMode</code></td>
<td><p>The LAG MAC Security (MACsec) encryption mode.</p>
<p>Amazon Web Services applies the value to all connections which are
part of the LAG.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      connectionsBandwidth = "string",
      numberOfConnections = 123,
      lagId = "string",
      ownerAccount = "string",
      lagName = "string",
      lagState = "requested"|"pending"|"available"|"down"|"deleting"|"deleted"|"unknown",
      location = "string",
      region = "string",
      minimumLinks = 123,
      awsDevice = "string",
      awsDeviceV2 = "string",
      awsLogicalDeviceId = "string",
      connections = list(
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
      ),
      allowsHostedConnections = TRUE|FALSE,
      jumboFrameCapable = TRUE|FALSE,
      hasLogicalRedundancy = "unknown"|"yes"|"no",
      tags = list(
        list(
          key = "string",
          value = "string"
        )
      ),
      providerName = "string",
      macSecCapable = TRUE|FALSE,
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

    svc$update_lag(
      lagId = "string",
      lagName = "string",
      minimumLinks = 123,
      encryptionMode = "string"
    )
