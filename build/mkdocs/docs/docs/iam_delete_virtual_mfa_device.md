<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>iam_delete_virtual_mfa_device</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a virtual MFA device

### Description

Deletes a virtual MFA device.

You must deactivate a user's virtual MFA device before you can delete
it. For information about deactivating MFA devices, see
`deactivate_mfa_device`.

### Usage

    iam_delete_virtual_mfa_device(SerialNumber)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="iam_delete_virtual_mfa_device_:_SerialNumber">SerialNumber</code></td>
<td><p>[required] The serial number that uniquely identifies the MFA
device. For virtual MFA devices, the serial number is the same as the
ARN.</p>
<p>This parameter allows (through its <a
href="https://en.wikipedia.org/wiki/Regex">regex pattern</a>) a string
of characters consisting of upper and lowercase alphanumeric characters
with no spaces. You can also include any of the following characters:
=,.@:/-</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_virtual_mfa_device(
      SerialNumber = "string"
    )

### Examples

    ## Not run: 
    # The following delete-virtual-mfa-device command removes the specified
    # MFA device from the current AWS account.
    svc$delete_virtual_mfa_device(
      SerialNumber = "arn:aws:iam::123456789012:mfa/ExampleName"
    )

    ## End(Not run)
