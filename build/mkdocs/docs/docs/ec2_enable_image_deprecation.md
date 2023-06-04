<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_enable_image_deprecation</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Enables deprecation of the specified AMI at the specified date and time

### Description

Enables deprecation of the specified AMI at the specified date and time.

For more information, see [Deprecate an
AMI](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ami-deprecate.html)
in the *Amazon EC2 User Guide*.

### Usage

    ec2_enable_image_deprecation(ImageId, DeprecateAt, DryRun)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_enable_image_deprecation_:_ImageId">ImageId</code></td>
<td><p>[required] The ID of the AMI.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_enable_image_deprecation_:_DeprecateAt">DeprecateAt</code></td>
<td><p>[required] The date and time to deprecate the AMI, in UTC, in the
following format:
<em>YYYY</em>-<em>MM</em>-<em>DD</em>T<em>HH</em>:<em>MM</em>:<em>SS</em>Z.
If you specify a value for seconds, Amazon EC2 rounds the seconds to the
nearest minute.</p>
<p>You can’t specify a date in the past. The upper limit for
<code>DeprecateAt</code> is 10 years from now, except for public AMIs,
where the upper limit is 2 years from the creation date.</p></td>
</tr>
<tr class="odd">
<td><code id="ec2_enable_image_deprecation_:_DryRun">DryRun</code></td>
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

    svc$enable_image_deprecation(
      ImageId = "string",
      DeprecateAt = as.POSIXct(
        "2015-01-01"
      ),
      DryRun = TRUE|FALSE
    )
