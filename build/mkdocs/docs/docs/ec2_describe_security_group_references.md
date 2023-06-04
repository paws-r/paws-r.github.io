<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_describe_security_group_references</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## \[VPC only\] Describes the VPCs on the other side of a VPC peering connection that are referencing the security groups you've specified in this request

### Description

\[VPC only\] Describes the VPCs on the other side of a VPC peering
connection that are referencing the security groups you've specified in
this request.

### Usage

    ec2_describe_security_group_references(DryRun, GroupId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_describe_security_group_references_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_describe_security_group_references_:_GroupId">GroupId</code></td>
<td><p>[required] The IDs of the security groups in your
account.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      SecurityGroupReferenceSet = list(
        list(
          GroupId = "string",
          ReferencingVpcId = "string",
          VpcPeeringConnectionId = "string"
        )
      )
    )

### Request syntax

    svc$describe_security_group_references(
      DryRun = TRUE|FALSE,
      GroupId = list(
        "string"
      )
    )

### Examples

    ## Not run: 
    # This example describes the security group references for the specified
    # security group.
    svc$describe_security_group_references(
      GroupId = list(
        "sg-903004f8"
      )
    )

    ## End(Not run)
