<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>elasticsearchservice_update_vpc_endpoint</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Modifies an Amazon OpenSearch Service-managed interface VPC endpoint

### Description

Modifies an Amazon OpenSearch Service-managed interface VPC endpoint.

### Usage

    elasticsearchservice_update_vpc_endpoint(VpcEndpointId, VpcOptions)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="elasticsearchservice_update_vpc_endpoint_:_VpcEndpointId">VpcEndpointId</code></td>
<td><p>[required] Unique identifier of the VPC endpoint to be
updated.</p></td>
</tr>
<tr class="even">
<td><code
id="elasticsearchservice_update_vpc_endpoint_:_VpcOptions">VpcOptions</code></td>
<td><p>[required] The security groups and/or subnets to add, remove, or
modify.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      VpcEndpoint = list(
        VpcEndpointId = "string",
        VpcEndpointOwner = "string",
        DomainArn = "string",
        VpcOptions = list(
          VPCId = "string",
          SubnetIds = list(
            "string"
          ),
          AvailabilityZones = list(
            "string"
          ),
          SecurityGroupIds = list(
            "string"
          )
        ),
        Status = "CREATING"|"CREATE_FAILED"|"ACTIVE"|"UPDATING"|"UPDATE_FAILED"|"DELETING"|"DELETE_FAILED",
        Endpoint = "string"
      )
    )

### Request syntax

    svc$update_vpc_endpoint(
      VpcEndpointId = "string",
      VpcOptions = list(
        SubnetIds = list(
          "string"
        ),
        SecurityGroupIds = list(
          "string"
        )
      )
    )
