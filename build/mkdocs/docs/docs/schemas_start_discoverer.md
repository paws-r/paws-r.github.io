<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>schemas_start_discoverer</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Starts the discoverer

### Description

Starts the discoverer

### Usage

    schemas_start_discoverer(DiscovererId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="schemas_start_discoverer_:_DiscovererId">DiscovererId</code></td>
<td><p>[required] The ID of the discoverer.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      DiscovererId = "string",
      State = "STARTED"|"STOPPED"
    )

### Request syntax

    svc$start_discoverer(
      DiscovererId = "string"
    )
