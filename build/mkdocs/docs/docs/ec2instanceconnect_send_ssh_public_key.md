<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2instanceconnect_send_ssh_public_key</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Pushes an SSH public key to the specified EC2 instance for use by the specified user

### Description

Pushes an SSH public key to the specified EC2 instance for use by the
specified user. The key remains for 60 seconds. For more information,
see [Connect to your Linux instance using EC2 Instance
Connect](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Connect-using-EC2-Instance-Connect.html)
in the *Amazon EC2 User Guide*.

### Usage

    ec2instanceconnect_send_ssh_public_key(InstanceId, InstanceOSUser,
      SSHPublicKey, AvailabilityZone)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2instanceconnect_send_ssh_public_key_:_InstanceId">InstanceId</code></td>
<td><p>[required] The ID of the EC2 instance.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2instanceconnect_send_ssh_public_key_:_InstanceOSUser">InstanceOSUser</code></td>
<td><p>[required] The OS user on the EC2 instance for whom the key can
be used to authenticate.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2instanceconnect_send_ssh_public_key_:_SSHPublicKey">SSHPublicKey</code></td>
<td><p>[required] The public key material. To use the public key, you
must have the matching private key.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2instanceconnect_send_ssh_public_key_:_AvailabilityZone">AvailabilityZone</code></td>
<td><p>The Availability Zone in which the EC2 instance was
launched.</p></td>
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

    svc$send_ssh_public_key(
      InstanceId = "string",
      InstanceOSUser = "string",
      SSHPublicKey = "string",
      AvailabilityZone = "string"
    )

### Examples

    ## Not run: 
    # The following example pushes a sample SSH public key to the EC2 instance
    # i-abcd1234 in AZ us-west-2b for use by the instance OS user ec2-user.
    svc$send_ssh_public_key(
      AvailabilityZone = "us-west-2a",
      InstanceId = "i-abcd1234",
      InstanceOSUser = "ec2-user",
      SSHPublicKey = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC3FlHqj2eqCdrGHuA6d..."
    )

    ## End(Not run)
