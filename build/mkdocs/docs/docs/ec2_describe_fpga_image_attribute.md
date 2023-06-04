<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_describe_fpga_image_attribute</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the specified attribute of the specified Amazon FPGA Image (AFI)

### Description

Describes the specified attribute of the specified Amazon FPGA Image
(AFI).

### Usage

    ec2_describe_fpga_image_attribute(DryRun, FpgaImageId, Attribute)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_describe_fpga_image_attribute_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_describe_fpga_image_attribute_:_FpgaImageId">FpgaImageId</code></td>
<td><p>[required] The ID of the AFI.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_describe_fpga_image_attribute_:_Attribute">Attribute</code></td>
<td><p>[required] The AFI attribute.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      FpgaImageAttribute = list(
        FpgaImageId = "string",
        Name = "string",
        Description = "string",
        LoadPermissions = list(
          list(
            UserId = "string",
            Group = "all"
          )
        ),
        ProductCodes = list(
          list(
            ProductCodeId = "string",
            ProductCodeType = "devpay"|"marketplace"
          )
        )
      )
    )

### Request syntax

    svc$describe_fpga_image_attribute(
      DryRun = TRUE|FALSE,
      FpgaImageId = "string",
      Attribute = "description"|"name"|"loadPermission"|"productCodes"
    )
