<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_describe_instance_attribute</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the specified attribute of the specified instance

### Description

Describes the specified attribute of the specified instance. You can
specify only one attribute at a time. Valid attribute values are:
`instanceType` | `kernel` | `ramdisk` | `userData` |
`disableApiTermination` | `instanceInitiatedShutdownBehavior` |
`rootDeviceName` | `blockDeviceMapping` | `productCodes` |
`sourceDestCheck` | `groupSet` | `ebsOptimized` | `sriovNetSupport`

### Usage

    ec2_describe_instance_attribute(Attribute, DryRun, InstanceId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_describe_instance_attribute_:_Attribute">Attribute</code></td>
<td><p>[required] The instance attribute.</p>
<p>Note: The <code>enaSupport</code> attribute is not supported at this
time.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_describe_instance_attribute_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_describe_instance_attribute_:_InstanceId">InstanceId</code></td>
<td><p>[required] The ID of the instance.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Groups = list(
        list(
          GroupName = "string",
          GroupId = "string"
        )
      ),
      BlockDeviceMappings = list(
        list(
          DeviceName = "string",
          Ebs = list(
            AttachTime = as.POSIXct(
              "2015-01-01"
            ),
            DeleteOnTermination = TRUE|FALSE,
            Status = "attaching"|"attached"|"detaching"|"detached",
            VolumeId = "string"
          )
        )
      ),
      DisableApiTermination = list(
        Value = TRUE|FALSE
      ),
      EnaSupport = list(
        Value = TRUE|FALSE
      ),
      EnclaveOptions = list(
        Enabled = TRUE|FALSE
      ),
      EbsOptimized = list(
        Value = TRUE|FALSE
      ),
      InstanceId = "string",
      InstanceInitiatedShutdownBehavior = list(
        Value = "string"
      ),
      InstanceType = list(
        Value = "string"
      ),
      KernelId = list(
        Value = "string"
      ),
      ProductCodes = list(
        list(
          ProductCodeId = "string",
          ProductCodeType = "devpay"|"marketplace"
        )
      ),
      RamdiskId = list(
        Value = "string"
      ),
      RootDeviceName = list(
        Value = "string"
      ),
      SourceDestCheck = list(
        Value = TRUE|FALSE
      ),
      SriovNetSupport = list(
        Value = "string"
      ),
      UserData = list(
        Value = "string"
      ),
      DisableApiStop = list(
        Value = TRUE|FALSE
      )
    )

### Request syntax

    svc$describe_instance_attribute(
      Attribute = "instanceType"|"kernel"|"ramdisk"|"userData"|"disableApiTermination"|"instanceInitiatedShutdownBehavior"|"rootDeviceName"|"blockDeviceMapping"|"productCodes"|"sourceDestCheck"|"groupSet"|"ebsOptimized"|"sriovNetSupport"|"enaSupport"|"enclaveOptions"|"disableApiStop",
      DryRun = TRUE|FALSE,
      InstanceId = "string"
    )

### Examples

    ## Not run: 
    # This example describes the instance type of the specified instance.
    # 
    svc$describe_instance_attribute(
      Attribute = "instanceType",
      InstanceId = "i-1234567890abcdef0"
    )

    # This example describes the `disableApiTermination` attribute of the
    # specified instance.
    # 
    svc$describe_instance_attribute(
      Attribute = "disableApiTermination",
      InstanceId = "i-1234567890abcdef0"
    )

    # This example describes the `blockDeviceMapping` attribute of the
    # specified instance.
    # 
    svc$describe_instance_attribute(
      Attribute = "blockDeviceMapping",
      InstanceId = "i-1234567890abcdef0"
    )

    ## End(Not run)
