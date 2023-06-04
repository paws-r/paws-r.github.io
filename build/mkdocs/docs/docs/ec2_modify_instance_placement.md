<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_modify_instance_placement</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Modifies the placement attributes for a specified instance

### Description

Modifies the placement attributes for a specified instance. You can do
the following:

-   Modify the affinity between an instance and a [Dedicated
    Host](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/dedicated-hosts-overview.html).
    When affinity is set to `host` and the instance is not associated
    with a specific Dedicated Host, the next time the instance is
    launched, it is automatically associated with the host on which it
    lands. If the instance is restarted or rebooted, this relationship
    persists.

-   Change the Dedicated Host with which an instance is associated.

-   Change the instance tenancy of an instance.

-   Move an instance to or from a [placement
    group](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/placement-groups.html).

At least one attribute for affinity, host ID, tenancy, or placement
group name must be specified in the request. Affinity and tenancy can be
modified in the same request.

To modify the host ID, tenancy, placement group, or partition for an
instance, the instance must be in the `stopped` state.

### Usage

    ec2_modify_instance_placement(Affinity, GroupName, HostId, InstanceId,
      Tenancy, PartitionNumber, HostResourceGroupArn, GroupId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_modify_instance_placement_:_Affinity">Affinity</code></td>
<td><p>The affinity setting for the instance.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_modify_instance_placement_:_GroupName">GroupName</code></td>
<td><p>The name of the placement group in which to place the instance.
For spread placement groups, the instance must have a tenancy of
<code>default</code>. For cluster and partition placement groups, the
instance must have a tenancy of <code>default</code> or
<code>dedicated</code>.</p>
<p>To remove an instance from a placement group, specify an empty string
("").</p></td>
</tr>
<tr class="odd">
<td><code id="ec2_modify_instance_placement_:_HostId">HostId</code></td>
<td><p>The ID of the Dedicated Host with which to associate the
instance.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_modify_instance_placement_:_InstanceId">InstanceId</code></td>
<td><p>[required] The ID of the instance that you are
modifying.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_modify_instance_placement_:_Tenancy">Tenancy</code></td>
<td><p>The tenancy for the instance.</p>
<p>For T3 instances, you can't change the tenancy from
<code>dedicated</code> to <code>host</code>, or from <code>host</code>
to <code>dedicated</code>. Attempting to make one of these unsupported
tenancy changes results in the <code>InvalidTenancy</code> error
code.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_modify_instance_placement_:_PartitionNumber">PartitionNumber</code></td>
<td><p>The number of the partition in which to place the instance. Valid
only if the placement group strategy is set to
<code>partition</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_modify_instance_placement_:_HostResourceGroupArn">HostResourceGroupArn</code></td>
<td><p>The ARN of the host resource group in which to place the
instance.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_modify_instance_placement_:_GroupId">GroupId</code></td>
<td><p>The Group Id of a placement group. You must specify the Placement
Group <strong>Group Id</strong> to launch an instance in a shared
placement group.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Return = TRUE|FALSE
    )

### Request syntax

    svc$modify_instance_placement(
      Affinity = "default"|"host",
      GroupName = "string",
      HostId = "string",
      InstanceId = "string",
      Tenancy = "dedicated"|"host",
      PartitionNumber = 123,
      HostResourceGroupArn = "string",
      GroupId = "string"
    )
