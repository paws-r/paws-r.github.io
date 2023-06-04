<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_delete_security_group</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a security group

### Description

Deletes a security group.

If you attempt to delete a security group that is associated with an
instance, or is referenced by another security group, the operation
fails with `InvalidGroup.InUse` in EC2-Classic or `DependencyViolation`
in EC2-VPC.

We are retiring EC2-Classic. We recommend that you migrate from
EC2-Classic to a VPC. For more information, see [Migrate from
EC2-Classic to a
VPC](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/vpc-migrate.html)
in the *Amazon Elastic Compute Cloud User Guide*.

### Usage

    ec2_delete_security_group(GroupId, GroupName, DryRun)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ec2_delete_security_group_:_GroupId">GroupId</code></td>
<td><p>The ID of the security group. Required for a nondefault
VPC.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_delete_security_group_:_GroupName">GroupName</code></td>
<td><p>[EC2-Classic, default VPC] The name of the security group. You
can specify either the security group name or the security group ID. For
security groups in a nondefault VPC, you must specify the security group
ID.</p></td>
</tr>
<tr class="odd">
<td><code id="ec2_delete_security_group_:_DryRun">DryRun</code></td>
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

    svc$delete_security_group(
      GroupId = "string",
      GroupName = "string",
      DryRun = TRUE|FALSE
    )

### Examples

    ## Not run: 
    # This example deletes the specified security group.
    svc$delete_security_group(
      GroupId = "sg-903004f8"
    )

    ## End(Not run)
