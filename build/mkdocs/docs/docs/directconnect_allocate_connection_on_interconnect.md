<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>directconnect_allocate_connection_on_interconnect</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deprecated

### Description

Deprecated. Use `allocate_hosted_connection` instead.

Creates a hosted connection on an interconnect.

Allocates a VLAN number and a specified amount of bandwidth for use by a
hosted connection on the specified interconnect.

Intended for use by Direct Connect Partners only.

### Usage

    directconnect_allocate_connection_on_interconnect(bandwidth,
      connectionName, ownerAccount, interconnectId, vlan)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="directconnect_allocate_connection_on_interconnect_:_bandwidth">bandwidth</code></td>
<td><p>[required] The bandwidth of the connection. The possible values
are 50Mbps, 100Mbps, 200Mbps, 300Mbps, 400Mbps, 500Mbps, 1Gbps, 2Gbps,
5Gbps, and 10Gbps. Note that only those Direct Connect Partners who have
met specific requirements are allowed to create a 1Gbps, 2Gbps, 5Gbps or
10Gbps hosted connection.</p></td>
</tr>
<tr class="even">
<td><code
id="directconnect_allocate_connection_on_interconnect_:_connectionName">connectionName</code></td>
<td><p>[required] The name of the provisioned connection.</p></td>
</tr>
<tr class="odd">
<td><code
id="directconnect_allocate_connection_on_interconnect_:_ownerAccount">ownerAccount</code></td>
<td><p>[required] The ID of the Amazon Web Services account of the
customer for whom the connection will be provisioned.</p></td>
</tr>
<tr class="even">
<td><code
id="directconnect_allocate_connection_on_interconnect_:_interconnectId">interconnectId</code></td>
<td><p>[required] The ID of the interconnect on which the connection
will be provisioned.</p></td>
</tr>
<tr class="odd">
<td><code
id="directconnect_allocate_connection_on_interconnect_:_vlan">vlan</code></td>
<td><p>[required] The dedicated VLAN provisioned to the
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

    svc$allocate_connection_on_interconnect(
      bandwidth = "string",
      connectionName = "string",
      ownerAccount = "string",
      interconnectId = "string",
      vlan = 123
    )
