<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_modify_fpga_image_attribute</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Modifies the specified attribute of the specified Amazon FPGA Image (AFI)

### Description

Modifies the specified attribute of the specified Amazon FPGA Image
(AFI).

### Usage

    ec2_modify_fpga_image_attribute(DryRun, FpgaImageId, Attribute,
      OperationType, UserIds, UserGroups, ProductCodes, LoadPermission,
      Description, Name)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_modify_fpga_image_attribute_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_modify_fpga_image_attribute_:_FpgaImageId">FpgaImageId</code></td>
<td><p>[required] The ID of the AFI.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_modify_fpga_image_attribute_:_Attribute">Attribute</code></td>
<td><p>The name of the attribute.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_modify_fpga_image_attribute_:_OperationType">OperationType</code></td>
<td><p>The operation type.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_modify_fpga_image_attribute_:_UserIds">UserIds</code></td>
<td><p>The Amazon Web Services account IDs. This parameter is valid only
when modifying the <code>loadPermission</code> attribute.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_modify_fpga_image_attribute_:_UserGroups">UserGroups</code></td>
<td><p>The user groups. This parameter is valid only when modifying the
<code>loadPermission</code> attribute.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_modify_fpga_image_attribute_:_ProductCodes">ProductCodes</code></td>
<td><p>The product codes. After you add a product code to an AFI, it
can't be removed. This parameter is valid only when modifying the
<code>productCodes</code> attribute.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_modify_fpga_image_attribute_:_LoadPermission">LoadPermission</code></td>
<td><p>The load permission for the AFI.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_modify_fpga_image_attribute_:_Description">Description</code></td>
<td><p>A description for the AFI.</p></td>
</tr>
<tr class="even">
<td><code id="ec2_modify_fpga_image_attribute_:_Name">Name</code></td>
<td><p>A name for the AFI.</p></td>
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

    svc$modify_fpga_image_attribute(
      DryRun = TRUE|FALSE,
      FpgaImageId = "string",
      Attribute = "description"|"name"|"loadPermission"|"productCodes",
      OperationType = "add"|"remove",
      UserIds = list(
        "string"
      ),
      UserGroups = list(
        "string"
      ),
      ProductCodes = list(
        "string"
      ),
      LoadPermission = list(
        Add = list(
          list(
            Group = "all",
            UserId = "string"
          )
        ),
        Remove = list(
          list(
            Group = "all",
            UserId = "string"
          )
        )
      ),
      Description = "string",
      Name = "string"
    )
