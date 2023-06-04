<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_delete_vpc</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the specified VPC

### Description

Deletes the specified VPC. You must detach or delete all gateways and
resources that are associated with the VPC before you can delete it. For
example, you must terminate all instances running in the VPC, delete all
security groups associated with the VPC (except the default one), delete
all route tables associated with the VPC (except the default one), and
so on.

### Usage

    ec2_delete_vpc(VpcId, DryRun)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ec2_delete_vpc_:_VpcId">VpcId</code></td>
<td><p>[required] The ID of the VPC.</p></td>
</tr>
<tr class="even">
<td><code id="ec2_delete_vpc_:_DryRun">DryRun</code></td>
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

    svc$delete_vpc(
      VpcId = "string",
      DryRun = TRUE|FALSE
    )

### Examples

    ## Not run: 
    # This example deletes the specified VPC.
    svc$delete_vpc(
      VpcId = "vpc-a01106c2"
    )

    ## End(Not run)
