<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_get_instance_uefi_data</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## A binary representation of the UEFI variable store

### Description

A binary representation of the UEFI variable store. Only non-volatile
variables are stored. This is a base64 encoded and zlib compressed
binary value that must be properly encoded.

When you use
[register-image](https://docs.aws.amazon.com/cli/latest/reference/ec2/register-image.html)
to create an AMI, you can create an exact copy of your variable store by
passing the UEFI data in the `UefiData` parameter. You can modify the
UEFI data by using the [python-uefivars
tool](https://github.com/awslabs/python-uefivars) on GitHub. You can use
the tool to convert the UEFI data into a human-readable format (JSON),
which you can inspect and modify, and then convert back into the binary
format to use with register-image.

For more information, see [UEFI Secure
Boot](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/uefi-secure-boot.html)
in the *Amazon EC2 User Guide*.

### Usage

    ec2_get_instance_uefi_data(InstanceId, DryRun)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_get_instance_uefi_data_:_InstanceId">InstanceId</code></td>
<td><p>[required] The ID of the instance from which to retrieve the UEFI
data.</p></td>
</tr>
<tr class="even">
<td><code id="ec2_get_instance_uefi_data_:_DryRun">DryRun</code></td>
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
      InstanceId = "string",
      UefiData = "string"
    )

### Request syntax

    svc$get_instance_uefi_data(
      InstanceId = "string",
      DryRun = TRUE|FALSE
    )
