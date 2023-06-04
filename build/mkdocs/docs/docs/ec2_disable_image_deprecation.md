<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_disable_image_deprecation</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Cancels the deprecation of the specified AMI

### Description

Cancels the deprecation of the specified AMI.

For more information, see [Deprecate an
AMI](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ami-deprecate.html)
in the *Amazon EC2 User Guide*.

### Usage

    ec2_disable_image_deprecation(ImageId, DryRun)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_disable_image_deprecation_:_ImageId">ImageId</code></td>
<td><p>[required] The ID of the AMI.</p></td>
</tr>
<tr class="even">
<td><code id="ec2_disable_image_deprecation_:_DryRun">DryRun</code></td>
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

    svc$disable_image_deprecation(
      ImageId = "string",
      DryRun = TRUE|FALSE
    )
