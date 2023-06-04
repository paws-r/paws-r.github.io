<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>directconnect_create_lag</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a link aggregation group (LAG) with the specified number of bundled physical dedicated connections between the customer network and a specific Direct Connect location

### Description

Creates a link aggregation group (LAG) with the specified number of
bundled physical dedicated connections between the customer network and
a specific Direct Connect location. A LAG is a logical interface that
uses the Link Aggregation Control Protocol (LACP) to aggregate multiple
interfaces, enabling you to treat them as a single interface.

All connections in a LAG must use the same bandwidth (either 1Gbps or
10Gbps) and must terminate at the same Direct Connect endpoint.

You can have up to 10 dedicated connections per LAG. Regardless of this
limit, if you request more connections for the LAG than Direct Connect
can allocate on a single endpoint, no LAG is created.

You can specify an existing physical dedicated connection or
interconnect to include in the LAG (which counts towards the total
number of connections). Doing so interrupts the current physical
dedicated connection, and re-establishes them as a member of the LAG.
The LAG will be created on the same Direct Connect endpoint to which the
dedicated connection terminates. Any virtual interfaces associated with
the dedicated connection are automatically disassociated and
re-associated with the LAG. The connection ID does not change.

If the Amazon Web Services account used to create a LAG is a registered
Direct Connect Partner, the LAG is automatically enabled to host
sub-connections. For a LAG owned by a partner, any associated virtual
interfaces cannot be directly configured.

### Usage

    directconnect_create_lag(numberOfConnections, location,
      connectionsBandwidth, lagName, connectionId, tags, childConnectionTags,
      providerName, requestMACSec)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="directconnect_create_lag_:_numberOfConnections">numberOfConnections</code></td>
<td><p>[required] The number of physical dedicated connections initially
provisioned and bundled by the LAG. You can have a maximum of four
connections when the port speed is 1G or 10G, or two when the port speed
is 100G.</p></td>
</tr>
<tr class="even">
<td><code id="directconnect_create_lag_:_location">location</code></td>
<td><p>[required] The location for the LAG.</p></td>
</tr>
<tr class="odd">
<td><code
id="directconnect_create_lag_:_connectionsBandwidth">connectionsBandwidth</code></td>
<td><p>[required] The bandwidth of the individual physical dedicated
connections bundled by the LAG. The possible values are 1Gbps and
10Gbps.</p></td>
</tr>
<tr class="even">
<td><code id="directconnect_create_lag_:_lagName">lagName</code></td>
<td><p>[required] The name of the LAG.</p></td>
</tr>
<tr class="odd">
<td><code
id="directconnect_create_lag_:_connectionId">connectionId</code></td>
<td><p>The ID of an existing dedicated connection to migrate to the
LAG.</p></td>
</tr>
<tr class="even">
<td><code id="directconnect_create_lag_:_tags">tags</code></td>
<td><p>The tags to associate with the LAG.</p></td>
</tr>
<tr class="odd">
<td><code
id="directconnect_create_lag_:_childConnectionTags">childConnectionTags</code></td>
<td><p>The tags to associate with the automtically created
LAGs.</p></td>
</tr>
<tr class="even">
<td><code
id="directconnect_create_lag_:_providerName">providerName</code></td>
<td><p>The name of the service provider associated with the
LAG.</p></td>
</tr>
<tr class="odd">
<td><code
id="directconnect_create_lag_:_requestMACSec">requestMACSec</code></td>
<td><p>Indicates whether the connection will support MAC Security
(MACsec).</p>
<p>All connections in the LAG must be capable of supporting MAC Security
(MACsec). For information about MAC Security (MACsec) prerequisties, see
<a
href="https://docs.aws.amazon.com/directconnect/latest/UserGuide/direct-connect-mac-sec-getting-started.html#mac-sec-prerequisites">MACsec
prerequisties</a> in the <em>Direct Connect User Guide</em>.</p></td>
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

    svc$create_lag(
      numberOfConnections = 123,
      location = "string",
      connectionsBandwidth = "string",
      lagName = "string",
      connectionId = "string",
      tags = list(
        list(
          key = "string",
          value = "string"
        )
      ),
      childConnectionTags = list(
        list(
          key = "string",
          value = "string"
        )
      ),
      providerName = "string",
      requestMACSec = TRUE|FALSE
    )
