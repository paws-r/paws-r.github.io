<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_accept_vpc_peering_connection</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Accept a VPC peering connection request

### Description

Accept a VPC peering connection request. To accept a request, the VPC
peering connection must be in the `pending-acceptance` state, and you
must be the owner of the peer VPC. Use
`describe_vpc_peering_connections` to view your outstanding VPC peering
connection requests.

For an inter-Region VPC peering connection request, you must accept the
VPC peering connection in the Region of the accepter VPC.

### Usage

    ec2_accept_vpc_peering_connection(DryRun, VpcPeeringConnectionId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_accept_vpc_peering_connection_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_accept_vpc_peering_connection_:_VpcPeeringConnectionId">VpcPeeringConnectionId</code></td>
<td><p>[required] The ID of the VPC peering connection. You must specify
this parameter in the request.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      VpcPeeringConnection = list(
        AccepterVpcInfo = list(
          CidrBlock = "string",
          Ipv6CidrBlockSet = list(
            list(
              Ipv6CidrBlock = "string"
            )
          ),
          CidrBlockSet = list(
            list(
              CidrBlock = "string"
            )
          ),
          OwnerId = "string",
          PeeringOptions = list(
            AllowDnsResolutionFromRemoteVpc = TRUE|FALSE,
            AllowEgressFromLocalClassicLinkToRemoteVpc = TRUE|FALSE,
            AllowEgressFromLocalVpcToRemoteClassicLink = TRUE|FALSE
          ),
          VpcId = "string",
          Region = "string"
        ),
        ExpirationTime = as.POSIXct(
          "2015-01-01"
        ),
        RequesterVpcInfo = list(
          CidrBlock = "string",
          Ipv6CidrBlockSet = list(
            list(
              Ipv6CidrBlock = "string"
            )
          ),
          CidrBlockSet = list(
            list(
              CidrBlock = "string"
            )
          ),
          OwnerId = "string",
          PeeringOptions = list(
            AllowDnsResolutionFromRemoteVpc = TRUE|FALSE,
            AllowEgressFromLocalClassicLinkToRemoteVpc = TRUE|FALSE,
            AllowEgressFromLocalVpcToRemoteClassicLink = TRUE|FALSE
          ),
          VpcId = "string",
          Region = "string"
        ),
        Status = list(
          Code = "initiating-request"|"pending-acceptance"|"active"|"deleted"|"rejected"|"failed"|"expired"|"provisioning"|"deleting",
          Message = "string"
        ),
        Tags = list(
          list(
            Key = "string",
            Value = "string"
          )
        ),
        VpcPeeringConnectionId = "string"
      )
    )

### Request syntax

    svc$accept_vpc_peering_connection(
      DryRun = TRUE|FALSE,
      VpcPeeringConnectionId = "string"
    )
