<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_get_serial_console_access_status</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves the access status of your account to the EC2 serial console of all instances

### Description

Retrieves the access status of your account to the EC2 serial console of
all instances. By default, access to the EC2 serial console is disabled
for your account. For more information, see [Manage account access to
the EC2 serial
console](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/configure-access-to-serial-console.html#serial-console-account-access)
in the *Amazon EC2 User Guide*.

### Usage

    ec2_get_serial_console_access_status(DryRun)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_get_serial_console_access_status_:_DryRun">DryRun</code></td>
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
      SerialConsoleAccessEnabled = TRUE|FALSE
    )

### Request syntax

    svc$get_serial_console_access_status(
      DryRun = TRUE|FALSE
    )
