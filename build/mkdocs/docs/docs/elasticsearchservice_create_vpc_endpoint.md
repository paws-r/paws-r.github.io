<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>elasticsearchservice_create_vpc_endpoint</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates an Amazon OpenSearch Service-managed VPC endpoint

### Description

Creates an Amazon OpenSearch Service-managed VPC endpoint.

### Usage

    elasticsearchservice_create_vpc_endpoint(DomainArn, VpcOptions,
      ClientToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="elasticsearchservice_create_vpc_endpoint_:_DomainArn">DomainArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the domain to grant
access to.</p></td>
</tr>
<tr class="even">
<td><code
id="elasticsearchservice_create_vpc_endpoint_:_VpcOptions">VpcOptions</code></td>
<td><p>[required] Options to specify the subnets and security groups for
the endpoint.</p></td>
</tr>
<tr class="odd">
<td><code
id="elasticsearchservice_create_vpc_endpoint_:_ClientToken">ClientToken</code></td>
<td><p>Unique, case-sensitive identifier to ensure idempotency of the
request.</p></td>
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

    svc$create_vpc_endpoint(
      DomainArn = "string",
      VpcOptions = list(
        SubnetIds = list(
          "string"
        ),
        SecurityGroupIds = list(
          "string"
        )
      ),
      ClientToken = "string"
    )
