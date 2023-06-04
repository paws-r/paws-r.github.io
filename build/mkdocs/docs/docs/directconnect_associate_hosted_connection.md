<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>directconnect_associate_hosted_connection</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Associates a hosted connection and its virtual interfaces with a link aggregation group (LAG) or interconnect

### Description

Associates a hosted connection and its virtual interfaces with a link
aggregation group (LAG) or interconnect. If the target interconnect or
LAG has an existing hosted connection with a conflicting VLAN number or
IP address, the operation fails. This action temporarily interrupts the
hosted connection's connectivity to Amazon Web Services as it is being
migrated.

Intended for use by Direct Connect Partners only.

### Usage

    directconnect_associate_hosted_connection(connectionId,
      parentConnectionId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="directconnect_associate_hosted_connection_:_connectionId">connectionId</code></td>
<td><p>[required] The ID of the hosted connection.</p></td>
</tr>
<tr class="even">
<td><code
id="directconnect_associate_hosted_connection_:_parentConnectionId">parentConnectionId</code></td>
<td><p>[required] The ID of the interconnect or the LAG.</p></td>
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

    svc$associate_hosted_connection(
      connectionId = "string",
      parentConnectionId = "string"
    )
