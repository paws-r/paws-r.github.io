<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>elasticsearchservice_describe_vpc_endpoints</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes one or more Amazon OpenSearch Service-managed VPC endpoints

### Description

Describes one or more Amazon OpenSearch Service-managed VPC endpoints.

### Usage

    elasticsearchservice_describe_vpc_endpoints(VpcEndpointIds)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="elasticsearchservice_describe_vpc_endpoints_:_VpcEndpointIds">VpcEndpointIds</code></td>
<td><p>[required] The unique identifiers of the endpoints to get
information about.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      VpcEndpoints = list(
        list(
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
      ),
      VpcEndpointErrors = list(
        list(
          VpcEndpointId = "string",
          ErrorCode = "ENDPOINT_NOT_FOUND"|"SERVER_ERROR",
          ErrorMessage = "string"
        )
      )
    )

### Request syntax

    svc$describe_vpc_endpoints(
      VpcEndpointIds = list(
        "string"
      )
    )
