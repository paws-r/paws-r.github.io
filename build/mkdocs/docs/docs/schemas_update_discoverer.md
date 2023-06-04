<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>schemas_update_discoverer</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the discoverer

### Description

Updates the discoverer

### Usage

    schemas_update_discoverer(Description, DiscovererId, CrossAccount)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="schemas_update_discoverer_:_Description">Description</code></td>
<td><p>The description of the discoverer to update.</p></td>
</tr>
<tr class="even">
<td><code
id="schemas_update_discoverer_:_DiscovererId">DiscovererId</code></td>
<td><p>[required] The ID of the discoverer.</p></td>
</tr>
<tr class="odd">
<td><code
id="schemas_update_discoverer_:_CrossAccount">CrossAccount</code></td>
<td><p>Support discovery of schemas in events sent to the bus from
another account. (default: true)</p></td>
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

    svc$update_discoverer(
      Description = "string",
      DiscovererId = "string",
      CrossAccount = TRUE|FALSE
    )
