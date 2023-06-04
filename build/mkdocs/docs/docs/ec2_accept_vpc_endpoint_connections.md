<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_accept_vpc_endpoint_connections</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Accepts connection requests to your VPC endpoint service

### Description

Accepts connection requests to your VPC endpoint service.

### Usage

    ec2_accept_vpc_endpoint_connections(DryRun, ServiceId, VpcEndpointIds)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_accept_vpc_endpoint_connections_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_accept_vpc_endpoint_connections_:_ServiceId">ServiceId</code></td>
<td><p>[required] The ID of the VPC endpoint service.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_accept_vpc_endpoint_connections_:_VpcEndpointIds">VpcEndpointIds</code></td>
<td><p>[required] The IDs of the interface VPC endpoints.</p></td>
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

    svc$accept_vpc_endpoint_connections(
      DryRun = TRUE|FALSE,
      ServiceId = "string",
      VpcEndpointIds = list(
        "string"
      )
    )
