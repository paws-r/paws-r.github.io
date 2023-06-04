<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_describe_volume_attribute</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the specified attribute of the specified volume

### Description

Describes the specified attribute of the specified volume. You can
specify only one attribute at a time.

For more information about EBS volumes, see [Amazon EBS
volumes](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-volumes.html)
in the *Amazon Elastic Compute Cloud User Guide*.

### Usage

    ec2_describe_volume_attribute(Attribute, VolumeId, DryRun)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_describe_volume_attribute_:_Attribute">Attribute</code></td>
<td><p>[required] The attribute of the volume. This parameter is
required.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_describe_volume_attribute_:_VolumeId">VolumeId</code></td>
<td><p>[required] The ID of the volume.</p></td>
</tr>
<tr class="odd">
<td><code id="ec2_describe_volume_attribute_:_DryRun">DryRun</code></td>
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
      AutoEnableIO = list(
        Value = TRUE|FALSE
      ),
      ProductCodes = list(
        list(
          ProductCodeId = "string",
          ProductCodeType = "devpay"|"marketplace"
        )
      ),
      VolumeId = "string"
    )

### Request syntax

    svc$describe_volume_attribute(
      Attribute = "autoEnableIO"|"productCodes",
      VolumeId = "string",
      DryRun = TRUE|FALSE
    )

### Examples

    ## Not run: 
    # This example describes the `autoEnableIo` attribute of the volume with
    # the ID `vol-049df61146c4d7901`.
    svc$describe_volume_attribute(
      Attribute = "autoEnableIO",
      VolumeId = "vol-049df61146c4d7901"
    )

    ## End(Not run)
