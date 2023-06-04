<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_attach_volume</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Attaches an EBS volume to a running or stopped instance and exposes it to the instance with the specified device name

### Description

Attaches an EBS volume to a running or stopped instance and exposes it
to the instance with the specified device name.

Encrypted EBS volumes must be attached to instances that support Amazon
EBS encryption. For more information, see [Amazon EBS
encryption](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSEncryption.html)
in the *Amazon Elastic Compute Cloud User Guide*.

After you attach an EBS volume, you must make it available. For more
information, see [Make an EBS volume available for
use](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-using-volumes.html).

If a volume has an Amazon Web Services Marketplace product code:

-   The volume can be attached only to a stopped instance.

-   Amazon Web Services Marketplace product codes are copied from the
    volume to the instance.

-   You must be subscribed to the product.

-   The instance type and operating system of the instance must support
    the product. For example, you can't detach a volume from a Windows
    instance and attach it to a Linux instance.

For more information, see [Attach an Amazon EBS volume to an
instance](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-attaching-volume.html)
in the *Amazon Elastic Compute Cloud User Guide*.

### Usage

    ec2_attach_volume(Device, InstanceId, VolumeId, DryRun)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ec2_attach_volume_:_Device">Device</code></td>
<td><p>[required] The device name (for example, <code
style="white-space: pre;">⁠/dev/sdh⁠</code> or
<code>xvdh</code>).</p></td>
</tr>
<tr class="even">
<td><code id="ec2_attach_volume_:_InstanceId">InstanceId</code></td>
<td><p>[required] The ID of the instance.</p></td>
</tr>
<tr class="odd">
<td><code id="ec2_attach_volume_:_VolumeId">VolumeId</code></td>
<td><p>[required] The ID of the EBS volume. The volume and instance must
be within the same Availability Zone.</p></td>
</tr>
<tr class="even">
<td><code id="ec2_attach_volume_:_DryRun">DryRun</code></td>
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
      AttachTime = as.POSIXct(
        "2015-01-01"
      ),
      Device = "string",
      InstanceId = "string",
      State = "attaching"|"attached"|"detaching"|"detached"|"busy",
      VolumeId = "string",
      DeleteOnTermination = TRUE|FALSE
    )

### Request syntax

    svc$attach_volume(
      Device = "string",
      InstanceId = "string",
      VolumeId = "string",
      DryRun = TRUE|FALSE
    )

### Examples

    ## Not run: 
    # This example attaches a volume (`vol-1234567890abcdef0`) to an
    # instance (`i-01474ef662b89480`) as `/dev/sdf`.
    svc$attach_volume(
      Device = "/dev/sdf",
      InstanceId = "i-01474ef662b89480",
      VolumeId = "vol-1234567890abcdef0"
    )

    ## End(Not run)
