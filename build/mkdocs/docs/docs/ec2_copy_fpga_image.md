<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_copy_fpga_image</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Copies the specified Amazon FPGA Image (AFI) to the current Region

### Description

Copies the specified Amazon FPGA Image (AFI) to the current Region.

### Usage

    ec2_copy_fpga_image(DryRun, SourceFpgaImageId, Description, Name,
      SourceRegion, ClientToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ec2_copy_fpga_image_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_copy_fpga_image_:_SourceFpgaImageId">SourceFpgaImageId</code></td>
<td><p>[required] The ID of the source AFI.</p></td>
</tr>
<tr class="odd">
<td><code id="ec2_copy_fpga_image_:_Description">Description</code></td>
<td><p>The description for the new AFI.</p></td>
</tr>
<tr class="even">
<td><code id="ec2_copy_fpga_image_:_Name">Name</code></td>
<td><p>The name for the new AFI. The default is the name of the source
AFI.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_copy_fpga_image_:_SourceRegion">SourceRegion</code></td>
<td><p>[required] The Region that contains the source AFI.</p></td>
</tr>
<tr class="even">
<td><code id="ec2_copy_fpga_image_:_ClientToken">ClientToken</code></td>
<td><p>Unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. For more information, see <a
href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring
idempotency</a>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      FpgaImageId = "string"
    )

### Request syntax

    svc$copy_fpga_image(
      DryRun = TRUE|FALSE,
      SourceFpgaImageId = "string",
      Description = "string",
      Name = "string",
      SourceRegion = "string",
      ClientToken = "string"
    )
