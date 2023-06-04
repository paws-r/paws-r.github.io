<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_delete_internet_gateway</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the specified internet gateway

### Description

Deletes the specified internet gateway. You must detach the internet
gateway from the VPC before you can delete it.

### Usage

    ec2_delete_internet_gateway(DryRun, InternetGatewayId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ec2_delete_internet_gateway_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_delete_internet_gateway_:_InternetGatewayId">InternetGatewayId</code></td>
<td><p>[required] The ID of the internet gateway.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_internet_gateway(
      DryRun = TRUE|FALSE,
      InternetGatewayId = "string"
    )

### Examples

    ## Not run: 
    # This example deletes the specified Internet gateway.
    svc$delete_internet_gateway(
      InternetGatewayId = "igw-c0a643a9"
    )

    ## End(Not run)
