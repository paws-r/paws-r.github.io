<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>directconnect_create_connection</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a connection between a customer network and a specific Direct Connect location

### Description

Creates a connection between a customer network and a specific Direct
Connect location.

A connection links your internal network to an Direct Connect location
over a standard Ethernet fiber-optic cable. One end of the cable is
connected to your router, the other to an Direct Connect router.

To find the locations for your Region, use `describe_locations`.

You can automatically add the new connection to a link aggregation group
(LAG) by specifying a LAG ID in the request. This ensures that the new
connection is allocated on the same Direct Connect endpoint that hosts
the specified LAG. If there are no available ports on the endpoint, the
request fails and no connection is created.

### Usage

    directconnect_create_connection(location, bandwidth, connectionName,
      lagId, tags, providerName, requestMACSec)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="directconnect_create_connection_:_location">location</code></td>
<td><p>[required] The location of the connection.</p></td>
</tr>
<tr class="even">
<td><code
id="directconnect_create_connection_:_bandwidth">bandwidth</code></td>
<td><p>[required] The bandwidth of the connection.</p></td>
</tr>
<tr class="odd">
<td><code
id="directconnect_create_connection_:_connectionName">connectionName</code></td>
<td><p>[required] The name of the connection.</p></td>
</tr>
<tr class="even">
<td><code id="directconnect_create_connection_:_lagId">lagId</code></td>
<td><p>The ID of the LAG.</p></td>
</tr>
<tr class="odd">
<td><code id="directconnect_create_connection_:_tags">tags</code></td>
<td><p>The tags to associate with the lag.</p></td>
</tr>
<tr class="even">
<td><code
id="directconnect_create_connection_:_providerName">providerName</code></td>
<td><p>The name of the service provider associated with the requested
connection.</p></td>
</tr>
<tr class="odd">
<td><code
id="directconnect_create_connection_:_requestMACSec">requestMACSec</code></td>
<td><p>Indicates whether you want the connection to support MAC Security
(MACsec).</p>
<p>MAC Security (MACsec) is only available on dedicated connections. For
information about MAC Security (MACsec) prerequisties, see <a
href="https://docs.aws.amazon.com/directconnect/latest/UserGuide/direct-connect-mac-sec-getting-started.html#mac-sec-prerequisites">MACsec
prerequisties</a> in the <em>Direct Connect User Guide</em>.</p></td>
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

    svc$create_connection(
      location = "string",
      bandwidth = "string",
      connectionName = "string",
      lagId = "string",
      tags = list(
        list(
          key = "string",
          value = "string"
        )
      ),
      providerName = "string",
      requestMACSec = TRUE|FALSE
    )
