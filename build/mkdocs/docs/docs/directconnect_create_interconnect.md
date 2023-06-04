<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>directconnect_create_interconnect</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates an interconnect between an Direct Connect Partner's network and a specific Direct Connect location

### Description

Creates an interconnect between an Direct Connect Partner's network and
a specific Direct Connect location.

An interconnect is a connection that is capable of hosting other
connections. The Direct Connect Partner can use an interconnect to
provide Direct Connect hosted connections to customers through their own
network services. Like a standard connection, an interconnect links the
partner's network to an Direct Connect location over a standard Ethernet
fiber-optic cable. One end is connected to the partner's router, the
other to an Direct Connect router.

You can automatically add the new interconnect to a link aggregation
group (LAG) by specifying a LAG ID in the request. This ensures that the
new interconnect is allocated on the same Direct Connect endpoint that
hosts the specified LAG. If there are no available ports on the
endpoint, the request fails and no interconnect is created.

For each end customer, the Direct Connect Partner provisions a
connection on their interconnect by calling
`allocate_hosted_connection`. The end customer can then connect to
Amazon Web Services resources by creating a virtual interface on their
connection, using the VLAN assigned to them by the Direct Connect
Partner.

Intended for use by Direct Connect Partners only.

### Usage

    directconnect_create_interconnect(interconnectName, bandwidth, location,
      lagId, tags, providerName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="directconnect_create_interconnect_:_interconnectName">interconnectName</code></td>
<td><p>[required] The name of the interconnect.</p></td>
</tr>
<tr class="even">
<td><code
id="directconnect_create_interconnect_:_bandwidth">bandwidth</code></td>
<td><p>[required] The port bandwidth, in Gbps. The possible values are 1
and 10.</p></td>
</tr>
<tr class="odd">
<td><code
id="directconnect_create_interconnect_:_location">location</code></td>
<td><p>[required] The location of the interconnect.</p></td>
</tr>
<tr class="even">
<td><code
id="directconnect_create_interconnect_:_lagId">lagId</code></td>
<td><p>The ID of the LAG.</p></td>
</tr>
<tr class="odd">
<td><code id="directconnect_create_interconnect_:_tags">tags</code></td>
<td><p>The tags to associate with the interconnect.</p></td>
</tr>
<tr class="even">
<td><code
id="directconnect_create_interconnect_:_providerName">providerName</code></td>
<td><p>The name of the service provider associated with the
interconnect.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      interconnectId = "string",
      interconnectName = "string",
      interconnectState = "requested"|"pending"|"available"|"down"|"deleting"|"deleted"|"unknown",
      region = "string",
      location = "string",
      bandwidth = "string",
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
      providerName = "string"
    )

### Request syntax

    svc$create_interconnect(
      interconnectName = "string",
      bandwidth = "string",
      location = "string",
      lagId = "string",
      tags = list(
        list(
          key = "string",
          value = "string"
        )
      ),
      providerName = "string"
    )
