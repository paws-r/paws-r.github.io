<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_delete_customer_gateway</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the specified customer gateway

### Description

Deletes the specified customer gateway. You must delete the VPN
connection before you can delete the customer gateway.

### Usage

    ec2_delete_customer_gateway(CustomerGatewayId, DryRun)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_delete_customer_gateway_:_CustomerGatewayId">CustomerGatewayId</code></td>
<td><p>[required] The ID of the customer gateway.</p></td>
</tr>
<tr class="even">
<td><code id="ec2_delete_customer_gateway_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_customer_gateway(
      CustomerGatewayId = "string",
      DryRun = TRUE|FALSE
    )

### Examples

    ## Not run: 
    # This example deletes the specified customer gateway.
    svc$delete_customer_gateway(
      CustomerGatewayId = "cgw-0e11f167"
    )

    ## End(Not run)
