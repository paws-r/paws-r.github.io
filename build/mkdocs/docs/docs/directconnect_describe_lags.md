<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>directconnect_describe_lags</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes all your link aggregation groups (LAG) or the specified LAG

### Description

Describes all your link aggregation groups (LAG) or the specified LAG.

### Usage

    directconnect_describe_lags(lagId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="directconnect_describe_lags_:_lagId">lagId</code></td>
<td><p>The ID of the LAG.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      lags = list(
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
      )
    )

### Request syntax

    svc$describe_lags(
      lagId = "string"
    )
