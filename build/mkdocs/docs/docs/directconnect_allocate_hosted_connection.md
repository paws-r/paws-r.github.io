<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>directconnect_allocate_hosted_connection</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a hosted connection on the specified interconnect or a link aggregation group (LAG) of interconnects

### Description

Creates a hosted connection on the specified interconnect or a link
aggregation group (LAG) of interconnects.

Allocates a VLAN number and a specified amount of capacity (bandwidth)
for use by a hosted connection on the specified interconnect or LAG of
interconnects. Amazon Web Services polices the hosted connection for the
specified capacity and the Direct Connect Partner must also police the
hosted connection for the specified capacity.

Intended for use by Direct Connect Partners only.

### Usage

    directconnect_allocate_hosted_connection(connectionId, ownerAccount,
      bandwidth, connectionName, vlan, tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="directconnect_allocate_hosted_connection_:_connectionId">connectionId</code></td>
<td><p>[required] The ID of the interconnect or LAG.</p></td>
</tr>
<tr class="even">
<td><code
id="directconnect_allocate_hosted_connection_:_ownerAccount">ownerAccount</code></td>
<td><p>[required] The ID of the Amazon Web Services account ID of the
customer for the connection.</p></td>
</tr>
<tr class="odd">
<td><code
id="directconnect_allocate_hosted_connection_:_bandwidth">bandwidth</code></td>
<td><p>[required] The bandwidth of the connection. The possible values
are 50Mbps, 100Mbps, 200Mbps, 300Mbps, 400Mbps, 500Mbps, 1Gbps, 2Gbps,
5Gbps, and 10Gbps. Note that only those Direct Connect Partners who have
met specific requirements are allowed to create a 1Gbps, 2Gbps, 5Gbps or
10Gbps hosted connection.</p></td>
</tr>
<tr class="even">
<td><code
id="directconnect_allocate_hosted_connection_:_connectionName">connectionName</code></td>
<td><p>[required] The name of the hosted connection.</p></td>
</tr>
<tr class="odd">
<td><code
id="directconnect_allocate_hosted_connection_:_vlan">vlan</code></td>
<td><p>[required] The dedicated VLAN provisioned to the hosted
connection.</p></td>
</tr>
<tr class="even">
<td><code
id="directconnect_allocate_hosted_connection_:_tags">tags</code></td>
<td><p>The tags associated with the connection.</p></td>
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

    svc$allocate_hosted_connection(
      connectionId = "string",
      ownerAccount = "string",
      bandwidth = "string",
      connectionName = "string",
      vlan = 123,
      tags = list(
        list(
          key = "string",
          value = "string"
        )
      )
    )
