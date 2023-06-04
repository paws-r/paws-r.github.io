<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2instanceconnect_send_serial_console_ssh_public_key</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Pushes an SSH public key to the specified EC2 instance

### Description

Pushes an SSH public key to the specified EC2 instance. The key remains
for 60 seconds, which gives you 60 seconds to establish a serial console
connection to the instance using SSH. For more information, see [EC2
Serial
Console](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-serial-console.html)
in the *Amazon EC2 User Guide*.

### Usage

    ec2instanceconnect_send_serial_console_ssh_public_key(InstanceId,
      SerialPort, SSHPublicKey)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2instanceconnect_send_serial_console_ssh_public_key_:_InstanceId">InstanceId</code></td>
<td><p>[required] The ID of the EC2 instance.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2instanceconnect_send_serial_console_ssh_public_key_:_SerialPort">SerialPort</code></td>
<td><p>The serial port of the EC2 instance. Currently only port 0 is
supported.</p>
<p>Default: 0</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2instanceconnect_send_serial_console_ssh_public_key_:_SSHPublicKey">SSHPublicKey</code></td>
<td><p>[required] The public key material. To use the public key, you
must have the matching private key. For information about the supported
key formats and lengths, see <a
href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-key-pairs.html#how-to-generate-your-own-key-and-import-it-to-aws">Requirements
for key pairs</a> in the <em>Amazon EC2 User Guide</em>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      RequestId = "string",
      Success = TRUE|FALSE
    )

### Request syntax

    svc$send_serial_console_ssh_public_key(
      InstanceId = "string",
      SerialPort = 123,
      SSHPublicKey = "string"
    )
