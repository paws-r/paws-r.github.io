<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>s3outposts_delete_endpoint</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes an endpoint

### Description

Deletes an endpoint.

It can take up to 5 minutes for this action to finish.

Related actions include:

-   `create_endpoint`

-   `list_endpoints`

### Usage

    s3outposts_delete_endpoint(EndpointId, OutpostId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="s3outposts_delete_endpoint_:_EndpointId">EndpointId</code></td>
<td><p>[required] The ID of the endpoint.</p></td>
</tr>
<tr class="even">
<td><code
id="s3outposts_delete_endpoint_:_OutpostId">OutpostId</code></td>
<td><p>[required] The ID of the Outposts.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_endpoint(
      EndpointId = "string",
      OutpostId = "string"
    )
