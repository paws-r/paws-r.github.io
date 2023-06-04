<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>directconnect_update_connection</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the Direct Connect dedicated connection configuration

### Description

Updates the Direct Connect dedicated connection configuration.

You can update the following parameters for a connection:

-   The connection name

-   The connection's MAC Security (MACsec) encryption mode.

### Usage

    directconnect_update_connection(connectionId, connectionName,
      encryptionMode)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="directconnect_update_connection_:_connectionId">connectionId</code></td>
<td><p>[required] The ID of the dedicated connection.</p>
<p>You can use <code>describe_connections</code> to retrieve the
connection ID.</p></td>
</tr>
<tr class="even">
<td><code
id="directconnect_update_connection_:_connectionName">connectionName</code></td>
<td><p>The name of the connection.</p></td>
</tr>
<tr class="odd">
<td><code
id="directconnect_update_connection_:_encryptionMode">encryptionMode</code></td>
<td><p>The connection MAC Security (MACsec) encryption mode.</p>
<p>The valid values are <code>no_encrypt</code>,
<code>should_encrypt</code>, and <code>must_encrypt</code>.</p></td>
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

    svc$update_connection(
      connectionId = "string",
      connectionName = "string",
      encryptionMode = "string"
    )
