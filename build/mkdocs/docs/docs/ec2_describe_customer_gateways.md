<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_describe_customer_gateways</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes one or more of your VPN customer gateways

### Description

Describes one or more of your VPN customer gateways.

For more information, see [Amazon Web Services Site-to-Site
VPN](https://docs.aws.amazon.com/vpn/latest/s2svpn/VPC_VPN.html) in the
*Amazon Web Services Site-to-Site VPN User Guide*.

### Usage

    ec2_describe_customer_gateways(CustomerGatewayIds, Filters, DryRun)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_describe_customer_gateways_:_CustomerGatewayIds">CustomerGatewayIds</code></td>
<td><p>One or more customer gateway IDs.</p>
<p>Default: Describes all your customer gateways.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_describe_customer_gateways_:_Filters">Filters</code></td>
<td><p>One or more filters.</p>
<ul>
<li><p><code>bgp-asn</code> - The customer gateway's Border Gateway
Protocol (BGP) Autonomous System Number (ASN).</p></li>
<li><p><code>customer-gateway-id</code> - The ID of the customer
gateway.</p></li>
<li><p><code>ip-address</code> - The IP address of the customer gateway
device's external interface.</p></li>
<li><p><code>state</code> - The state of the customer gateway
(<code>pending</code> | <code>available</code> | <code>deleting</code> |
<code>deleted</code>).</p></li>
<li><p><code>type</code> - The type of customer gateway. Currently, the
only supported type is <code>ipsec.1</code>.</p></li>
<li><p><code>tag</code>:\&lt;key\&gt; - The key/value combination of a
tag assigned to the resource. Use the tag key in the filter name and the
tag value as the filter value. For example, to find all resources that
have a tag with the key <code>Owner</code> and the value
<code>TeamA</code>, specify <code>tag:Owner</code> for the filter name
and <code>TeamA</code> for the filter value.</p></li>
<li><p><code>tag-key</code> - The key of a tag assigned to the resource.
Use this filter to find all resources assigned a tag with a specific
key, regardless of the tag value.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="ec2_describe_customer_gateways_:_DryRun">DryRun</code></td>
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
      CustomerGateways = list(
        list(
          BgpAsn = "string",
          CustomerGatewayId = "string",
          IpAddress = "string",
          CertificateArn = "string",
          State = "string",
          Type = "string",
          DeviceName = "string",
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

    svc$describe_customer_gateways(
      CustomerGatewayIds = list(
        "string"
      ),
      Filters = list(
        list(
          Name = "string",
          Values = list(
            "string"
          )
        )
      ),
      DryRun = TRUE|FALSE
    )

### Examples

    ## Not run: 
    # This example describes the specified customer gateway.
    svc$describe_customer_gateways(
      CustomerGatewayIds = list(
        "cgw-0e11f167"
      )
    )

    ## End(Not run)
