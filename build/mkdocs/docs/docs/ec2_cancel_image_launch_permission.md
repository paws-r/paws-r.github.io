<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_cancel_image_launch_permission</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Removes your Amazon Web Services account from the launch permissions for the specified AMI

### Description

Removes your Amazon Web Services account from the launch permissions for
the specified AMI. For more information, see [Cancel having an AMI
shared with your Amazon Web Services
account](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/cancel-sharing-an-AMI.html)
in the *Amazon EC2 User Guide*.

### Usage

    ec2_cancel_image_launch_permission(ImageId, DryRun)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_cancel_image_launch_permission_:_ImageId">ImageId</code></td>
<td><p>[required] The ID of the AMI that was shared with your Amazon Web
Services account.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_cancel_image_launch_permission_:_DryRun">DryRun</code></td>
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

    svc$cancel_image_launch_permission(
      ImageId = "string",
      DryRun = TRUE|FALSE
    )
