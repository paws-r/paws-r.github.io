<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_modify_vpc_peering_connection_options</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## We are retiring EC2-Classic

### Description

We are retiring EC2-Classic. We recommend that you migrate from
EC2-Classic to a VPC. For more information, see [Migrate from
EC2-Classic to a
VPC](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/vpc-migrate.html)
in the *Amazon Elastic Compute Cloud User Guide*.

Modifies the VPC peering connection options on one side of a VPC peering
connection. You can do the following:

-   Enable/disable communication over the peering connection between an
    EC2-Classic instance that's linked to your VPC (using ClassicLink)
    and instances in the peer VPC.

-   Enable/disable communication over the peering connection between
    instances in your VPC and an EC2-Classic instance that's linked to
    the peer VPC.

-   Enable/disable the ability to resolve public DNS hostnames to
    private IP addresses when queried from instances in the peer VPC.

If the peered VPCs are in the same Amazon Web Services account, you can
enable DNS resolution for queries from the local VPC. This ensures that
queries from the local VPC resolve to private IP addresses in the peer
VPC. This option is not available if the peered VPCs are in different
Amazon Web Services accounts or different Regions. For peered VPCs in
different Amazon Web Services accounts, each Amazon Web Services account
owner must initiate a separate request to modify the peering connection
options. For inter-region peering connections, you must use the Region
for the requester VPC to modify the requester VPC peering options and
the Region for the accepter VPC to modify the accepter VPC peering
options. To verify which VPCs are the accepter and the requester for a
VPC peering connection, use the `describe_vpc_peering_connections`
command.

### Usage

    ec2_modify_vpc_peering_connection_options(
      AccepterPeeringConnectionOptions, DryRun,
      RequesterPeeringConnectionOptions, VpcPeeringConnectionId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_modify_vpc_peering_connection_options_:_AccepterPeeringConnectionOptions">AccepterPeeringConnectionOptions</code></td>
<td><p>The VPC peering connection options for the accepter VPC.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_modify_vpc_peering_connection_options_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_modify_vpc_peering_connection_options_:_RequesterPeeringConnectionOptions">RequesterPeeringConnectionOptions</code></td>
<td><p>The VPC peering connection options for the requester
VPC.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_modify_vpc_peering_connection_options_:_VpcPeeringConnectionId">VpcPeeringConnectionId</code></td>
<td><p>[required] The ID of the VPC peering connection.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      AccepterPeeringConnectionOptions = list(
        AllowDnsResolutionFromRemoteVpc = TRUE|FALSE,
        AllowEgressFromLocalClassicLinkToRemoteVpc = TRUE|FALSE,
        AllowEgressFromLocalVpcToRemoteClassicLink = TRUE|FALSE
      ),
      RequesterPeeringConnectionOptions = list(
        AllowDnsResolutionFromRemoteVpc = TRUE|FALSE,
        AllowEgressFromLocalClassicLinkToRemoteVpc = TRUE|FALSE,
        AllowEgressFromLocalVpcToRemoteClassicLink = TRUE|FALSE
      )
    )

### Request syntax

    svc$modify_vpc_peering_connection_options(
      AccepterPeeringConnectionOptions = list(
        AllowDnsResolutionFromRemoteVpc = TRUE|FALSE,
        AllowEgressFromLocalClassicLinkToRemoteVpc = TRUE|FALSE,
        AllowEgressFromLocalVpcToRemoteClassicLink = TRUE|FALSE
      ),
      DryRun = TRUE|FALSE,
      RequesterPeeringConnectionOptions = list(
        AllowDnsResolutionFromRemoteVpc = TRUE|FALSE,
        AllowEgressFromLocalClassicLinkToRemoteVpc = TRUE|FALSE,
        AllowEgressFromLocalVpcToRemoteClassicLink = TRUE|FALSE
      ),
      VpcPeeringConnectionId = "string"
    )
