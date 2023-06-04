<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_get_password_data</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves the encrypted administrator password for a running Windows instance

### Description

Retrieves the encrypted administrator password for a running Windows
instance.

The Windows password is generated at boot by the `EC2Config` service or
`EC2Launch` scripts (Windows Server 2016 and later). This usually only
happens the first time an instance is launched. For more information,
see
[EC2Config](https://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/ec2config-service.html)
and
[EC2Launch](https://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/ec2launch.html)
in the *Amazon EC2 User Guide*.

For the `EC2Config` service, the password is not generated for rebundled
AMIs unless `Ec2SetPassword` is enabled before bundling.

The password is encrypted using the key pair that you specified when you
launched the instance. You must provide the corresponding key pair file.

When you launch an instance, password generation and encryption may take
a few minutes. If you try to retrieve the password before it's
available, the output returns an empty string. We recommend that you
wait up to 15 minutes after launching an instance before trying to
retrieve the generated password.

### Usage

    ec2_get_password_data(InstanceId, DryRun)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ec2_get_password_data_:_InstanceId">InstanceId</code></td>
<td><p>[required] The ID of the Windows instance.</p></td>
</tr>
<tr class="even">
<td><code id="ec2_get_password_data_:_DryRun">DryRun</code></td>
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
      PasswordData = "string",
      Timestamp = as.POSIXct(
        "2015-01-01"
      )
    )

### Request syntax

    svc$get_password_data(
      InstanceId = "string",
      DryRun = TRUE|FALSE
    )
