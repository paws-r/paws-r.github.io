<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_reset_fpga_image_attribute</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Resets the specified attribute of the specified Amazon FPGA Image (AFI) to its default value

### Description

Resets the specified attribute of the specified Amazon FPGA Image (AFI)
to its default value. You can only reset the load permission attribute.

### Usage

    ec2_reset_fpga_image_attribute(DryRun, FpgaImageId, Attribute)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_reset_fpga_image_attribute_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_reset_fpga_image_attribute_:_FpgaImageId">FpgaImageId</code></td>
<td><p>[required] The ID of the AFI.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_reset_fpga_image_attribute_:_Attribute">Attribute</code></td>
<td><p>The attribute.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Return = TRUE|FALSE
    )

### Request syntax

    svc$reset_fpga_image_attribute(
      DryRun = TRUE|FALSE,
      FpgaImageId = "string",
      Attribute = "loadPermission"
    )
