<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_disable_fast_launch</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Discontinue faster launching for a Windows AMI, and clean up existing pre-provisioned snapshots

### Description

Discontinue faster launching for a Windows AMI, and clean up existing
pre-provisioned snapshots. When you disable faster launching, the AMI
uses the standard launch process for each instance. All pre-provisioned
snapshots must be removed before you can enable faster launching again.

To change these settings, you must own the AMI.

### Usage

    ec2_disable_fast_launch(ImageId, Force, DryRun)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ec2_disable_fast_launch_:_ImageId">ImageId</code></td>
<td><p>[required] The ID of the image for which you’re turning off
faster launching, and removing pre-provisioned snapshots.</p></td>
</tr>
<tr class="even">
<td><code id="ec2_disable_fast_launch_:_Force">Force</code></td>
<td><p>Forces the image settings to turn off faster launching for your
Windows AMI. This parameter overrides any errors that are encountered
while cleaning up resources in your account.</p></td>
</tr>
<tr class="odd">
<td><code id="ec2_disable_fast_launch_:_DryRun">DryRun</code></td>
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

    svc$disable_fast_launch(
      ImageId = "string",
      Force = TRUE|FALSE,
      DryRun = TRUE|FALSE
    )
