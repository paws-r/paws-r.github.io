<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_describe_vpn_gateways</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes one or more of your virtual private gateways

### Description

Describes one or more of your virtual private gateways.

For more information, see [Amazon Web Services Site-to-Site
VPN](https://docs.aws.amazon.com/vpn/latest/s2svpn/VPC_VPN.html) in the
*Amazon Web Services Site-to-Site VPN User Guide*.

### Usage

    ec2_describe_vpn_gateways(Filters, VpnGatewayIds, DryRun)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ec2_describe_vpn_gateways_:_Filters">Filters</code></td>
<td><p>One or more filters.</p>
<ul>
<li><p><code>amazon-side-asn</code> - The Autonomous System Number (ASN)
for the Amazon side of the gateway.</p></li>
<li><p><code>attachment.state</code> - The current state of the
attachment between the gateway and the VPC (<code>attaching</code> |
<code>attached</code> | <code>detaching</code> |
<code>detached</code>).</p></li>
<li><p><code>attachment.vpc-id</code> - The ID of an attached
VPC.</p></li>
<li><p><code>availability-zone</code> - The Availability Zone for the
virtual private gateway (if applicable).</p></li>
<li><p><code>state</code> - The state of the virtual private gateway
(<code>pending</code> | <code>available</code> | <code>deleting</code> |
<code>deleted</code>).</p></li>
<li><p><code>tag</code>:\&lt;key\&gt; - The key/value combination of a
tag assigned to the resource. Use the tag key in the filter name and the
tag value as the filter value. For example, to find all resources that
have a tag with the key <code>Owner</code> and the value
<code>TeamA</code>, specify <code>tag:Owner</code> for the filter name
and <code>TeamA</code> for the filter value.</p></li>
<li><p><code>tag-key</code> - The key of a tag assigned to the resource.
Use this filter to find all resources assigned a tag with a specific
key, regardless of the tag value.</p></li>
<li><p><code>type</code> - The type of virtual private gateway.
Currently the only supported type is <code>ipsec.1</code>.</p></li>
<li><p><code>vpn-gateway-id</code> - The ID of the virtual private
gateway.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="ec2_describe_vpn_gateways_:_VpnGatewayIds">VpnGatewayIds</code></td>
<td><p>One or more virtual private gateway IDs.</p>
<p>Default: Describes all your virtual private gateways.</p></td>
</tr>
<tr class="odd">
<td><code id="ec2_describe_vpn_gateways_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      VpnGateways = list(
        list(
          AvailabilityZone = "string",
          State = "pending"|"available"|"deleting"|"deleted",
          Type = "ipsec.1",
          VpcAttachments = list(
            list(
              State = "attaching"|"attached"|"detaching"|"detached",
              VpcId = "string"
            )
          ),
          VpnGatewayId = "string",
          AmazonSideAsn = 123,
          Tags = list(
            list(
              Key = "string",
              Value = "string"
            )
          )
        )
      )
    )

### Request syntax

    svc$describe_vpn_gateways(
      Filters = list(
        list(
          Name = "string",
          Values = list(
            "string"
          )
        )
      ),
      VpnGatewayIds = list(
        "string"
      ),
      DryRun = TRUE|FALSE
    )
