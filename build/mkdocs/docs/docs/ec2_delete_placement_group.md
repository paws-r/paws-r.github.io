<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_delete_placement_group</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the specified placement group

### Description

Deletes the specified placement group. You must terminate all instances
in the placement group before you can delete the placement group. For
more information, see [Placement
groups](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/placement-groups.html)
in the *Amazon EC2 User Guide*.

### Usage

    ec2_delete_placement_group(DryRun, GroupName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ec2_delete_placement_group_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_delete_placement_group_:_GroupName">GroupName</code></td>
<td><p>[required] The name of the placement group.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_placement_group(
      DryRun = TRUE|FALSE,
      GroupName = "string"
    )

### Examples

    ## Not run: 
    # This example deletes the specified placement group.
    # 
    svc$delete_placement_group(
      GroupName = "my-cluster"
    )

    ## End(Not run)
