<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_delete_subnet</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the specified subnet

### Description

Deletes the specified subnet. You must terminate all running instances
in the subnet before you can delete the subnet.

### Usage

    ec2_delete_subnet(SubnetId, DryRun)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ec2_delete_subnet_:_SubnetId">SubnetId</code></td>
<td><p>[required] The ID of the subnet.</p></td>
</tr>
<tr class="even">
<td><code id="ec2_delete_subnet_:_DryRun">DryRun</code></td>
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

    svc$delete_subnet(
      SubnetId = "string",
      DryRun = TRUE|FALSE
    )

### Examples

    ## Not run: 
    # This example deletes the specified subnet.
    svc$delete_subnet(
      SubnetId = "subnet-9d4a7b6c"
    )

    ## End(Not run)
