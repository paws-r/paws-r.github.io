<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_modify_vpc_tenancy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Modifies the instance tenancy attribute of the specified VPC

### Description

Modifies the instance tenancy attribute of the specified VPC. You can
change the instance tenancy attribute of a VPC to `default` only. You
cannot change the instance tenancy attribute to `dedicated`.

After you modify the tenancy of the VPC, any new instances that you
launch into the VPC have a tenancy of `default`, unless you specify
otherwise during launch. The tenancy of any existing instances in the
VPC is not affected.

For more information, see [Dedicated
Instances](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/dedicated-instance.html)
in the *Amazon Elastic Compute Cloud User Guide*.

### Usage

    ec2_modify_vpc_tenancy(VpcId, InstanceTenancy, DryRun)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ec2_modify_vpc_tenancy_:_VpcId">VpcId</code></td>
<td><p>[required] The ID of the VPC.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_modify_vpc_tenancy_:_InstanceTenancy">InstanceTenancy</code></td>
<td><p>[required] The instance tenancy attribute for the VPC.</p></td>
</tr>
<tr class="odd">
<td><code id="ec2_modify_vpc_tenancy_:_DryRun">DryRun</code></td>
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
      ReturnValue = TRUE|FALSE
    )

### Request syntax

    svc$modify_vpc_tenancy(
      VpcId = "string",
      InstanceTenancy = "default",
      DryRun = TRUE|FALSE
    )
