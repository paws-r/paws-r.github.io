<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>schemas_create_discoverer</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a discoverer

### Description

Creates a discoverer.

### Usage

    schemas_create_discoverer(Description, SourceArn, CrossAccount, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="schemas_create_discoverer_:_Description">Description</code></td>
<td><p>A description for the discoverer.</p></td>
</tr>
<tr class="even">
<td><code
id="schemas_create_discoverer_:_SourceArn">SourceArn</code></td>
<td><p>[required] The ARN of the event bus.</p></td>
</tr>
<tr class="odd">
<td><code
id="schemas_create_discoverer_:_CrossAccount">CrossAccount</code></td>
<td><p>Support discovery of schemas in events sent to the bus from
another account. (default: true).</p></td>
</tr>
<tr class="even">
<td><code id="schemas_create_discoverer_:_Tags">Tags</code></td>
<td><p>Tags associated with the resource.</p></td>
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

    svc$create_discoverer(
      Description = "string",
      SourceArn = "string",
      CrossAccount = TRUE|FALSE,
      Tags = list(
        "string"
      )
    )
