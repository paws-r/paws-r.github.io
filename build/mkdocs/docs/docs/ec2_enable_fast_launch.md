<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_enable_fast_launch</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## When you enable faster launching for a Windows AMI, images are pre-provisioned, using snapshots to launch instances up to 65% faster

### Description

When you enable faster launching for a Windows AMI, images are
pre-provisioned, using snapshots to launch instances up to 65% faster.
To create the optimized Windows image, Amazon EC2 launches an instance
and runs through Sysprep steps, rebooting as required. Then it creates a
set of reserved snapshots that are used for subsequent launches. The
reserved snapshots are automatically replenished as they are used,
depending on your settings for launch frequency.

To change these settings, you must own the AMI.

### Usage

    ec2_enable_fast_launch(ImageId, ResourceType, SnapshotConfiguration,
      LaunchTemplate, MaxParallelLaunches, DryRun)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ec2_enable_fast_launch_:_ImageId">ImageId</code></td>
<td><p>[required] The ID of the image for which you’re enabling faster
launching.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_enable_fast_launch_:_ResourceType">ResourceType</code></td>
<td><p>The type of resource to use for pre-provisioning the Windows AMI
for faster launching. Supported values include: <code>snapshot</code>,
which is the default value.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_enable_fast_launch_:_SnapshotConfiguration">SnapshotConfiguration</code></td>
<td><p>Configuration settings for creating and managing the snapshots
that are used for pre-provisioning the Windows AMI for faster launching.
The associated <code>ResourceType</code> must be
<code>snapshot</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_enable_fast_launch_:_LaunchTemplate">LaunchTemplate</code></td>
<td><p>The launch template to use when launching Windows instances from
pre-provisioned snapshots. Launch template parameters can include either
the name or ID of the launch template, but not both.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_enable_fast_launch_:_MaxParallelLaunches">MaxParallelLaunches</code></td>
<td><p>The maximum number of instances that Amazon EC2 can launch at the
same time to create pre-provisioned snapshots for Windows faster
launching. Value must be <code>6</code> or greater.</p></td>
</tr>
<tr class="even">
<td><code id="ec2_enable_fast_launch_:_DryRun">DryRun</code></td>
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
      ImageId = "string",
      ResourceType = "snapshot",
      SnapshotConfiguration = list(
        TargetResourceCount = 123
      ),
      LaunchTemplate = list(
        LaunchTemplateId = "string",
        LaunchTemplateName = "string",
        Version = "string"
      ),
      MaxParallelLaunches = 123,
      OwnerId = "string",
      State = "enabling"|"enabling-failed"|"enabled"|"enabled-failed"|"disabling"|"disabling-failed",
      StateTransitionReason = "string",
      StateTransitionTime = as.POSIXct(
        "2015-01-01"
      )
    )

### Request syntax

    svc$enable_fast_launch(
      ImageId = "string",
      ResourceType = "string",
      SnapshotConfiguration = list(
        TargetResourceCount = 123
      ),
      LaunchTemplate = list(
        LaunchTemplateId = "string",
        LaunchTemplateName = "string",
        Version = "string"
      ),
      MaxParallelLaunches = 123,
      DryRun = TRUE|FALSE
    )
