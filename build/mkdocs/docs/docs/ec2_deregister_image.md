<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_deregister_image</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deregisters the specified AMI

### Description

Deregisters the specified AMI. After you deregister an AMI, it can't be
used to launch new instances.

If you deregister an AMI that matches a Recycle Bin retention rule, the
AMI is retained in the Recycle Bin for the specified retention period.
For more information, see [Recycle
Bin](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/recycle-bin.html)
in the *Amazon EC2 User Guide*.

When you deregister an AMI, it doesn't affect any instances that you've
already launched from the AMI. You'll continue to incur usage costs for
those instances until you terminate them.

When you deregister an Amazon EBS-backed AMI, it doesn't affect the
snapshot that was created for the root volume of the instance during the
AMI creation process. When you deregister an instance store-backed AMI,
it doesn't affect the files that you uploaded to Amazon S3 when you
created the AMI.

### Usage

    ec2_deregister_image(ImageId, DryRun)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ec2_deregister_image_:_ImageId">ImageId</code></td>
<td><p>[required] The ID of the AMI.</p></td>
</tr>
<tr class="even">
<td><code id="ec2_deregister_image_:_DryRun">DryRun</code></td>
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

    svc$deregister_image(
      ImageId = "string",
      DryRun = TRUE|FALSE
    )
