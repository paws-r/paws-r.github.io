<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_restore_image_from_recycle_bin</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Restores an AMI from the Recycle Bin

### Description

Restores an AMI from the Recycle Bin. For more information, see [Recycle
Bin](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/recycle-bin.html)
in the *Amazon EC2 User Guide*.

### Usage

    ec2_restore_image_from_recycle_bin(ImageId, DryRun)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_restore_image_from_recycle_bin_:_ImageId">ImageId</code></td>
<td><p>[required] The ID of the AMI to restore.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_restore_image_from_recycle_bin_:_DryRun">DryRun</code></td>
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
      Return = TRUE|FALSE
    )

### Request syntax

    svc$restore_image_from_recycle_bin(
      ImageId = "string",
      DryRun = TRUE|FALSE
    )
