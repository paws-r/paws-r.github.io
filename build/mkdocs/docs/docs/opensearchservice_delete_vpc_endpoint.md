<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>opensearchservice_delete_vpc_endpoint</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes an Amazon OpenSearch Service-managed interface VPC endpoint

### Description

Deletes an Amazon OpenSearch Service-managed interface VPC endpoint.

### Usage

    opensearchservice_delete_vpc_endpoint(VpcEndpointId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="opensearchservice_delete_vpc_endpoint_:_VpcEndpointId">VpcEndpointId</code></td>
<td><p>[required] The unique identifier of the endpoint.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      VpcEndpointSummary = list(
        VpcEndpointId = "string",
        VpcEndpointOwner = "string",
        DomainArn = "string",
        Status = "CREATING"|"CREATE_FAILED"|"ACTIVE"|"UPDATING"|"UPDATE_FAILED"|"DELETING"|"DELETE_FAILED"
      )
    )

### Request syntax

    svc$delete_vpc_endpoint(
      VpcEndpointId = "string"
    )
