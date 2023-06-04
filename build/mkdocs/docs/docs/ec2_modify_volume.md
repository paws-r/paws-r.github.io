<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_modify_volume</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## You can modify several parameters of an existing EBS volume, including volume size, volume type, and IOPS capacity

### Description

You can modify several parameters of an existing EBS volume, including
volume size, volume type, and IOPS capacity. If your EBS volume is
attached to a current-generation EC2 instance type, you might be able to
apply these changes without stopping the instance or detaching the
volume from it. For more information about modifying EBS volumes, see
[Amazon EBS Elastic
Volumes](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-modify-volume.html)
(Linux instances) or [Amazon EBS Elastic
Volumes](https://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/ebs-modify-volume.html)
(Windows instances).

When you complete a resize operation on your volume, you need to extend
the volume's file-system size to take advantage of the new storage
capacity. For more information, see [Extend a Linux file
system](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-modify-volume.html#recognize-expanded-volume-linux)
or [Extend a Windows file
system](https://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/ebs-modify-volume.html#recognize-expanded-volume-windows).

You can use CloudWatch Events to check the status of a modification to
an EBS volume. For information about CloudWatch Events, see the [Amazon
CloudWatch Events User
Guide](https://docs.aws.amazon.com/AmazonCloudWatch/latest/events/). You
can also track the status of a modification using
`describe_volumes_modifications`. For information about tracking status
changes using either method, see [Monitor the progress of volume
modifications](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/monitoring-volume-modifications.html).

With previous-generation instance types, resizing an EBS volume might
require detaching and reattaching the volume or stopping and restarting
the instance.

After modifying a volume, you must wait at least six hours and ensure
that the volume is in the `⁠in-use⁠` or `available` state before you can
modify the same volume. This is sometimes referred to as a cooldown
period.

### Usage

    ec2_modify_volume(DryRun, VolumeId, Size, VolumeType, Iops, Throughput,
      MultiAttachEnabled)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ec2_modify_volume_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="even">
<td><code id="ec2_modify_volume_:_VolumeId">VolumeId</code></td>
<td><p>[required] The ID of the volume.</p></td>
</tr>
<tr class="odd">
<td><code id="ec2_modify_volume_:_Size">Size</code></td>
<td><p>The target size of the volume, in GiB. The target volume size
must be greater than or equal to the existing size of the volume.</p>
<p>The following are the supported volumes sizes for each volume
type:</p>
<ul>
<li><p><code>gp2</code> and <code>gp3</code>: 1-16,384</p></li>
<li><p><code>io1</code> and <code>io2</code>: 4-16,384</p></li>
<li><p><code>st1</code> and <code>sc1</code>: 125-16,384</p></li>
<li><p><code>standard</code>: 1-1,024</p></li>
</ul>
<p>Default: The existing size is retained.</p></td>
</tr>
<tr class="even">
<td><code id="ec2_modify_volume_:_VolumeType">VolumeType</code></td>
<td><p>The target EBS volume type of the volume. For more information,
see <a
href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-volume-types.html">Amazon
EBS volume types</a> in the <em>Amazon Elastic Compute Cloud User
Guide</em>.</p>
<p>Default: The existing type is retained.</p></td>
</tr>
<tr class="odd">
<td><code id="ec2_modify_volume_:_Iops">Iops</code></td>
<td><p>The target IOPS rate of the volume. This parameter is valid only
for <code>gp3</code>, <code>io1</code>, and <code>io2</code>
volumes.</p>
<p>The following are the supported values for each volume type:</p>
<ul>
<li><p><code>gp3</code>: 3,000-16,000 IOPS</p></li>
<li><p><code>io1</code>: 100-64,000 IOPS</p></li>
<li><p><code>io2</code>: 100-64,000 IOPS</p></li>
</ul>
<p>Default: The existing value is retained if you keep the same volume
type. If you change the volume type to <code>io1</code>,
<code>io2</code>, or <code>gp3</code>, the default is 3,000.</p></td>
</tr>
<tr class="even">
<td><code id="ec2_modify_volume_:_Throughput">Throughput</code></td>
<td><p>The target throughput of the volume, in MiB/s. This parameter is
valid only for <code>gp3</code> volumes. The maximum value is 1,000.</p>
<p>Default: The existing value is retained if the source and target
volume type is <code>gp3</code>. Otherwise, the default value is
125.</p>
<p>Valid Range: Minimum value of 125. Maximum value of 1000.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_modify_volume_:_MultiAttachEnabled">MultiAttachEnabled</code></td>
<td><p>Specifies whether to enable Amazon EBS Multi-Attach. If you
enable Multi-Attach, you can attach the volume to up to 16 <a
href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html#ec2-nitro-instances">Nitro-based
instances</a> in the same Availability Zone. This parameter is supported
with <code>io1</code> and <code>io2</code> volumes only. For more
information, see <a
href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-volumes-multi.html">Amazon
EBS Multi-Attach</a> in the <em>Amazon Elastic Compute Cloud User
Guide</em>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      VolumeModification = list(
        VolumeId = "string",
        ModificationState = "modifying"|"optimizing"|"completed"|"failed",
        StatusMessage = "string",
        TargetSize = 123,
        TargetIops = 123,
        TargetVolumeType = "standard"|"io1"|"io2"|"gp2"|"sc1"|"st1"|"gp3",
        TargetThroughput = 123,
        TargetMultiAttachEnabled = TRUE|FALSE,
        OriginalSize = 123,
        OriginalIops = 123,
        OriginalVolumeType = "standard"|"io1"|"io2"|"gp2"|"sc1"|"st1"|"gp3",
        OriginalThroughput = 123,
        OriginalMultiAttachEnabled = TRUE|FALSE,
        Progress = 123,
        StartTime = as.POSIXct(
          "2015-01-01"
        ),
        EndTime = as.POSIXct(
          "2015-01-01"
        )
      )
    )

### Request syntax

    svc$modify_volume(
      DryRun = TRUE|FALSE,
      VolumeId = "string",
      Size = 123,
      VolumeType = "standard"|"io1"|"io2"|"gp2"|"sc1"|"st1"|"gp3",
      Iops = 123,
      Throughput = 123,
      MultiAttachEnabled = TRUE|FALSE
    )
