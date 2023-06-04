<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>schemas_describe_discoverer</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the discoverer

### Description

Describes the discoverer.

### Usage

    schemas_describe_discoverer(DiscovererId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="schemas_describe_discoverer_:_DiscovererId">DiscovererId</code></td>
<td><p>[required] The ID of the discoverer.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Description = "string",
      DiscovererArn = "string",
      DiscovererId = "string",
      SourceArn = "string",
      State = "STARTED"|"STOPPED",
      CrossAccount = TRUE|FALSE,
      Tags = list(
        "string"
      )
    )

### Request syntax

    svc$describe_discoverer(
      DiscovererId = "string"
    )
