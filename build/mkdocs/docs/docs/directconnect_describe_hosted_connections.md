<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>directconnect_describe_hosted_connections</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the hosted connections that have been provisioned on the specified interconnect or link aggregation group (LAG)

### Description

Lists the hosted connections that have been provisioned on the specified
interconnect or link aggregation group (LAG).

Intended for use by Direct Connect Partners only.

### Usage

    directconnect_describe_hosted_connections(connectionId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="directconnect_describe_hosted_connections_:_connectionId">connectionId</code></td>
<td><p>[required] The ID of the interconnect or LAG.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
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
      )
    )

### Request syntax

    svc$describe_hosted_connections(
      connectionId = "string"
    )
