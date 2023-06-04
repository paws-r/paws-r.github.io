<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_modify_image_attribute</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Modifies the specified attribute of the specified AMI

### Description

Modifies the specified attribute of the specified AMI. You can specify
only one attribute at a time.

To specify the attribute, you can use the `Attribute` parameter, or one
of the following parameters: `Description`, `ImdsSupport`, or
`LaunchPermission`.

Images with an Amazon Web Services Marketplace product code cannot be
made public.

To enable the SriovNetSupport enhanced networking attribute of an image,
enable SriovNetSupport on an instance and create an AMI from the
instance.

### Usage

    ec2_modify_image_attribute(Attribute, Description, ImageId,
      LaunchPermission, OperationType, ProductCodes, UserGroups, UserIds,
      Value, DryRun, OrganizationArns, OrganizationalUnitArns, ImdsSupport)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_modify_image_attribute_:_Attribute">Attribute</code></td>
<td><p>The name of the attribute to modify.</p>
<p>Valid values: <code>description</code> | <code>imdsSupport</code> |
<code>launchPermission</code></p></td>
</tr>
<tr class="even">
<td><code
id="ec2_modify_image_attribute_:_Description">Description</code></td>
<td><p>A new description for the AMI.</p></td>
</tr>
<tr class="odd">
<td><code id="ec2_modify_image_attribute_:_ImageId">ImageId</code></td>
<td><p>[required] The ID of the AMI.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_modify_image_attribute_:_LaunchPermission">LaunchPermission</code></td>
<td><p>A new launch permission for the AMI.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_modify_image_attribute_:_OperationType">OperationType</code></td>
<td><p>The operation type. This parameter can be used only when the
<code>Attribute</code> parameter is
<code>launchPermission</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_modify_image_attribute_:_ProductCodes">ProductCodes</code></td>
<td><p>Not supported.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_modify_image_attribute_:_UserGroups">UserGroups</code></td>
<td><p>The user groups. This parameter can be used only when the
<code>Attribute</code> parameter is
<code>launchPermission</code>.</p></td>
</tr>
<tr class="even">
<td><code id="ec2_modify_image_attribute_:_UserIds">UserIds</code></td>
<td><p>The Amazon Web Services account IDs. This parameter can be used
only when the <code>Attribute</code> parameter is
<code>launchPermission</code>.</p></td>
</tr>
<tr class="odd">
<td><code id="ec2_modify_image_attribute_:_Value">Value</code></td>
<td><p>The value of the attribute being modified. This parameter can be
used only when the <code>Attribute</code> parameter is
<code>description</code> or <code>imdsSupport</code>.</p></td>
</tr>
<tr class="even">
<td><code id="ec2_modify_image_attribute_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_modify_image_attribute_:_OrganizationArns">OrganizationArns</code></td>
<td><p>The Amazon Resource Name (ARN) of an organization. This parameter
can be used only when the <code>Attribute</code> parameter is
<code>launchPermission</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_modify_image_attribute_:_OrganizationalUnitArns">OrganizationalUnitArns</code></td>
<td><p>The Amazon Resource Name (ARN) of an organizational unit (OU).
This parameter can be used only when the <code>Attribute</code>
parameter is <code>launchPermission</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_modify_image_attribute_:_ImdsSupport">ImdsSupport</code></td>
<td><p>Set to <code>v2.0</code> to indicate that IMDSv2 is specified in
the AMI. Instances launched from this AMI will have
<code>HttpTokens</code> automatically set to <code>required</code> so
that, by default, the instance requires that IMDSv2 is used when
requesting instance metadata. In addition,
<code>HttpPutResponseHopLimit</code> is set to <code>2</code>. For more
information, see <a
href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/configuring-IMDS-new-instances.html#configure-IMDS-new-instances-ami-configuration">Configure
the AMI</a> in the <em>Amazon EC2 User Guide</em>.</p>
<p>Do not use this parameter unless your AMI software supports IMDSv2.
After you set the value to <code>v2.0</code>, you can't undo it. The
only way to “reset” your AMI is to create a new AMI from the underlying
snapshot.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$modify_image_attribute(
      Attribute = "string",
      Description = list(
        Value = "string"
      ),
      ImageId = "string",
      LaunchPermission = list(
        Add = list(
          list(
            Group = "all",
            UserId = "string",
            OrganizationArn = "string",
            OrganizationalUnitArn = "string"
          )
        ),
        Remove = list(
          list(
            Group = "all",
            UserId = "string",
            OrganizationArn = "string",
            OrganizationalUnitArn = "string"
          )
        )
      ),
      OperationType = "add"|"remove",
      ProductCodes = list(
        "string"
      ),
      UserGroups = list(
        "string"
      ),
      UserIds = list(
        "string"
      ),
      Value = "string",
      DryRun = TRUE|FALSE,
      OrganizationArns = list(
        "string"
      ),
      OrganizationalUnitArns = list(
        "string"
      ),
      ImdsSupport = list(
        Value = "string"
      )
    )

### Examples

    ## Not run: 
    # This example makes the specified AMI public.
    svc$modify_image_attribute(
      ImageId = "ami-5731123e",
      LaunchPermission = list(
        Add = list(
          list(
            Group = "all"
          )
        )
      )
    )

    # This example grants launch permissions for the specified AMI to the
    # specified AWS account.
    svc$modify_image_attribute(
      ImageId = "ami-5731123e",
      LaunchPermission = list(
        Add = list(
          list(
            UserId = "123456789012"
          )
        )
      )
    )

    ## End(Not run)
