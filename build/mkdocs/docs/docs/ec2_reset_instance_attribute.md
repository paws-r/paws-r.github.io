<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_reset_instance_attribute</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Resets an attribute of an instance to its default value

### Description

Resets an attribute of an instance to its default value. To reset the
`kernel` or `ramdisk`, the instance must be in a stopped state. To reset
the `sourceDestCheck`, the instance can be either running or stopped.

The `sourceDestCheck` attribute controls whether source/destination
checking is enabled. The default value is `true`, which means checking
is enabled. This value must be `false` for a NAT instance to perform
NAT. For more information, see [NAT
Instances](https://docs.aws.amazon.com/vpc/latest/userguide/VPC_NAT_Instance.html)
in the *Amazon VPC User Guide*.

### Usage

    ec2_reset_instance_attribute(Attribute, DryRun, InstanceId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_reset_instance_attribute_:_Attribute">Attribute</code></td>
<td><p>[required] The attribute to reset.</p>
<p>You can only reset the following attributes: <code>kernel</code> |
<code>ramdisk</code> | <code>sourceDestCheck</code>.</p></td>
</tr>
<tr class="even">
<td><code id="ec2_reset_instance_attribute_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_reset_instance_attribute_:_InstanceId">InstanceId</code></td>
<td><p>[required] The ID of the instance.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$reset_instance_attribute(
      Attribute = "instanceType"|"kernel"|"ramdisk"|"userData"|"disableApiTermination"|"instanceInitiatedShutdownBehavior"|"rootDeviceName"|"blockDeviceMapping"|"productCodes"|"sourceDestCheck"|"groupSet"|"ebsOptimized"|"sriovNetSupport"|"enaSupport"|"enclaveOptions"|"disableApiStop",
      DryRun = TRUE|FALSE,
      InstanceId = "string"
    )

### Examples

    ## Not run: 
    # This example resets the sourceDestCheck attribute for the specified
    # instance.
    svc$reset_instance_attribute(
      Attribute = "sourceDestCheck",
      InstanceId = "i-1234567890abcdef0"
    )

    ## End(Not run)
