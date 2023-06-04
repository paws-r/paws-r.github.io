<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_detach_volume</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Detaches an EBS volume from an instance

### Description

Detaches an EBS volume from an instance. Make sure to unmount any file
systems on the device within your operating system before detaching the
volume. Failure to do so can result in the volume becoming stuck in the
`busy` state while detaching. If this happens, detachment can be delayed
indefinitely until you unmount the volume, force detachment, reboot the
instance, or all three. If an EBS volume is the root device of an
instance, it can't be detached while the instance is running. To detach
the root volume, stop the instance first.

When a volume with an Amazon Web Services Marketplace product code is
detached from an instance, the product code is no longer associated with
the instance.

For more information, see [Detach an Amazon EBS
volume](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-detaching-volume.html)
in the *Amazon Elastic Compute Cloud User Guide*.

### Usage

    ec2_detach_volume(Device, Force, InstanceId, VolumeId, DryRun)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ec2_detach_volume_:_Device">Device</code></td>
<td><p>The device name.</p></td>
</tr>
<tr class="even">
<td><code id="ec2_detach_volume_:_Force">Force</code></td>
<td><p>Forces detachment if the previous detachment attempt did not
occur cleanly (for example, logging into an instance, unmounting the
volume, and detaching normally). This option can lead to data loss or a
corrupted file system. Use this option only as a last resort to detach a
volume from a failed instance. The instance won't have an opportunity to
flush file system caches or file system metadata. If you use this
option, you must perform file system check and repair
procedures.</p></td>
</tr>
<tr class="odd">
<td><code id="ec2_detach_volume_:_InstanceId">InstanceId</code></td>
<td><p>The ID of the instance. If you are detaching a Multi-Attach
enabled volume, you must specify an instance ID.</p></td>
</tr>
<tr class="even">
<td><code id="ec2_detach_volume_:_VolumeId">VolumeId</code></td>
<td><p>[required] The ID of the volume.</p></td>
</tr>
<tr class="odd">
<td><code id="ec2_detach_volume_:_DryRun">DryRun</code></td>
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

    svc$detach_volume(
      Device = "string",
      Force = TRUE|FALSE,
      InstanceId = "string",
      VolumeId = "string",
      DryRun = TRUE|FALSE
    )

### Examples

    ## Not run: 
    # This example detaches the volume (`vol-049df61146c4d7901`) from the
    # instance it is attached to.
    svc$detach_volume(
      VolumeId = "vol-1234567890abcdef0"
    )

    ## End(Not run)
