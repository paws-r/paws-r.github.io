<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>glue_delete_dev_endpoint</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a specified development endpoint

### Description

Deletes a specified development endpoint.

### Usage

    glue_delete_dev_endpoint(EndpointName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="glue_delete_dev_endpoint_:_EndpointName">EndpointName</code></td>
<td><p>[required] The name of the <code>DevEndpoint</code>.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_dev_endpoint(
      EndpointName = "string"
    )
