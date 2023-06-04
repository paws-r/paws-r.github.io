<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_delete_vpc_endpoints</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the specified VPC endpoints

### Description

Deletes the specified VPC endpoints.

When you delete a gateway endpoint, we delete the endpoint routes in the
route tables for the endpoint.

When you delete a Gateway Load Balancer endpoint, we delete its endpoint
network interfaces. You can only delete Gateway Load Balancer endpoints
when the routes that are associated with the endpoint are deleted.

When you delete an interface endpoint, we delete its endpoint network
interfaces.

### Usage

    ec2_delete_vpc_endpoints(DryRun, VpcEndpointIds)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ec2_delete_vpc_endpoints_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_delete_vpc_endpoints_:_VpcEndpointIds">VpcEndpointIds</code></td>
<td><p>[required] The IDs of the VPC endpoints.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Unsuccessful = list(
        list(
          Error = list(
            Code = "string",
            Message = "string"
          ),
          ResourceId = "string"
        )
      )
    )

### Request syntax

    svc$delete_vpc_endpoints(
      DryRun = TRUE|FALSE,
      VpcEndpointIds = list(
        "string"
      )
    )
