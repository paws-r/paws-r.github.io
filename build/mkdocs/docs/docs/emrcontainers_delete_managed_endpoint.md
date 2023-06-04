<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>emrcontainers_delete_managed_endpoint</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a managed endpoint

### Description

Deletes a managed endpoint. A managed endpoint is a gateway that
connects Amazon EMR Studio to Amazon EMR on EKS so that Amazon EMR
Studio can communicate with your virtual cluster.

### Usage

    emrcontainers_delete_managed_endpoint(id, virtualClusterId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="emrcontainers_delete_managed_endpoint_:_id">id</code></td>
<td><p>[required] The ID of the managed endpoint.</p></td>
</tr>
<tr class="even">
<td><code
id="emrcontainers_delete_managed_endpoint_:_virtualClusterId">virtualClusterId</code></td>
<td><p>[required] The ID of the endpoint's virtual cluster.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      id = "string",
      virtualClusterId = "string"
    )

### Request syntax

    svc$delete_managed_endpoint(
      id = "string",
      virtualClusterId = "string"
    )
