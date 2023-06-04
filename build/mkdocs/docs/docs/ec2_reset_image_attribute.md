<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_reset_image_attribute</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Resets an attribute of an AMI to its default value

### Description

Resets an attribute of an AMI to its default value.

### Usage

    ec2_reset_image_attribute(Attribute, ImageId, DryRun)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_reset_image_attribute_:_Attribute">Attribute</code></td>
<td><p>[required] The attribute to reset (currently you can only reset
the launch permission attribute).</p></td>
</tr>
<tr class="even">
<td><code id="ec2_reset_image_attribute_:_ImageId">ImageId</code></td>
<td><p>[required] The ID of the AMI.</p></td>
</tr>
<tr class="odd">
<td><code id="ec2_reset_image_attribute_:_DryRun">DryRun</code></td>
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

    svc$reset_image_attribute(
      Attribute = "launchPermission",
      ImageId = "string",
      DryRun = TRUE|FALSE
    )

### Examples

    ## Not run: 
    # This example resets the launchPermission attribute for the specified
    # AMI. By default, AMIs are private.
    svc$reset_image_attribute(
      Attribute = "launchPermission",
      ImageId = "ami-5731123e"
    )

    ## End(Not run)
