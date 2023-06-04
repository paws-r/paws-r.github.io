<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_describe_image_attribute</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the specified attribute of the specified AMI

### Description

Describes the specified attribute of the specified AMI. You can specify
only one attribute at a time.

### Usage

    ec2_describe_image_attribute(Attribute, ImageId, DryRun)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_describe_image_attribute_:_Attribute">Attribute</code></td>
<td><p>[required] The AMI attribute.</p>
<p><strong>Note</strong>: The <code>blockDeviceMapping</code> attribute
is deprecated. Using this attribute returns the
<code>Client.AuthFailure</code> error. To get information about the
block device mappings for an AMI, use the <code>describe_images</code>
action.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_describe_image_attribute_:_ImageId">ImageId</code></td>
<td><p>[required] The ID of the AMI.</p></td>
</tr>
<tr class="odd">
<td><code id="ec2_describe_image_attribute_:_DryRun">DryRun</code></td>
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
      BlockDeviceMappings = list(
        list(
          DeviceName = "string",
          VirtualName = "string",
          Ebs = list(
            DeleteOnTermination = TRUE|FALSE,
            Iops = 123,
            SnapshotId = "string",
            VolumeSize = 123,
            VolumeType = "standard"|"io1"|"io2"|"gp2"|"sc1"|"st1"|"gp3",
            KmsKeyId = "string",
            Throughput = 123,
            OutpostArn = "string",
            Encrypted = TRUE|FALSE
          ),
          NoDevice = "string"
        )
      ),
      ImageId = "string",
      LaunchPermissions = list(
        list(
          Group = "all",
          UserId = "string",
          OrganizationArn = "string",
          OrganizationalUnitArn = "string"
        )
      ),
      ProductCodes = list(
        list(
          ProductCodeId = "string",
          ProductCodeType = "devpay"|"marketplace"
        )
      ),
      Description = list(
        Value = "string"
      ),
      KernelId = list(
        Value = "string"
      ),
      RamdiskId = list(
        Value = "string"
      ),
      SriovNetSupport = list(
        Value = "string"
      ),
      BootMode = list(
        Value = "string"
      ),
      TpmSupport = list(
        Value = "string"
      ),
      UefiData = list(
        Value = "string"
      ),
      LastLaunchedTime = list(
        Value = "string"
      ),
      ImdsSupport = list(
        Value = "string"
      )
    )

### Request syntax

    svc$describe_image_attribute(
      Attribute = "description"|"kernel"|"ramdisk"|"launchPermission"|"productCodes"|"blockDeviceMapping"|"sriovNetSupport"|"bootMode"|"tpmSupport"|"uefiData"|"lastLaunchedTime"|"imdsSupport",
      ImageId = "string",
      DryRun = TRUE|FALSE
    )

### Examples

    ## Not run: 
    # This example describes the launch permissions for the specified AMI.
    svc$describe_image_attribute(
      Attribute = "launchPermission",
      ImageId = "ami-5731123e"
    )

    ## End(Not run)
