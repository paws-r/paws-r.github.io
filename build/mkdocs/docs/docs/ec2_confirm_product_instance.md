<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_confirm_product_instance</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Determines whether a product code is associated with an instance

### Description

Determines whether a product code is associated with an instance. This
action can only be used by the owner of the product code. It is useful
when a product code owner must verify whether another user's instance is
eligible for support.

### Usage

    ec2_confirm_product_instance(InstanceId, ProductCode, DryRun)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_confirm_product_instance_:_InstanceId">InstanceId</code></td>
<td><p>[required] The ID of the instance.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_confirm_product_instance_:_ProductCode">ProductCode</code></td>
<td><p>[required] The product code. This must be a product code that you
own.</p></td>
</tr>
<tr class="odd">
<td><code id="ec2_confirm_product_instance_:_DryRun">DryRun</code></td>
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
      OwnerId = "string",
      Return = TRUE|FALSE
    )

### Request syntax

    svc$confirm_product_instance(
      InstanceId = "string",
      ProductCode = "string",
      DryRun = TRUE|FALSE
    )

### Examples

    ## Not run: 
    # This example determines whether the specified product code is associated
    # with the specified instance.
    svc$confirm_product_instance(
      InstanceId = "i-1234567890abcdef0",
      ProductCode = "774F4FF8"
    )

    ## End(Not run)
