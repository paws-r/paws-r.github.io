<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_delete_fpga_image</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the specified Amazon FPGA Image (AFI)

### Description

Deletes the specified Amazon FPGA Image (AFI).

### Usage

    ec2_delete_fpga_image(DryRun, FpgaImageId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ec2_delete_fpga_image_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_delete_fpga_image_:_FpgaImageId">FpgaImageId</code></td>
<td><p>[required] The ID of the AFI.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Return = TRUE|FALSE
    )

### Request syntax

    svc$delete_fpga_image(
      DryRun = TRUE|FALSE,
      FpgaImageId = "string"
    )
