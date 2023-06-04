<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>directconnect_describe_interconnects</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the interconnects owned by the Amazon Web Services account or only the specified interconnect

### Description

Lists the interconnects owned by the Amazon Web Services account or only
the specified interconnect.

### Usage

    directconnect_describe_interconnects(interconnectId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="directconnect_describe_interconnects_:_interconnectId">interconnectId</code></td>
<td><p>The ID of the interconnect.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      interconnects = list(
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
      )
    )

### Request syntax

    svc$describe_interconnects(
      interconnectId = "string"
    )
