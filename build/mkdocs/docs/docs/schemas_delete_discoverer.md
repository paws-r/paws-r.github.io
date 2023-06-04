<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>schemas_delete_discoverer</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a discoverer

### Description

Deletes a discoverer.

### Usage

    schemas_delete_discoverer(DiscovererId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="schemas_delete_discoverer_:_DiscovererId">DiscovererId</code></td>
<td><p>[required] The ID of the discoverer.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_discoverer(
      DiscovererId = "string"
    )
