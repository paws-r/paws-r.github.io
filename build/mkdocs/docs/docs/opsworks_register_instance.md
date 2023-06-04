<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>opsworks_register_instance</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Registers instances that were created outside of AWS OpsWorks Stacks with a specified stack

### Description

Registers instances that were created outside of AWS OpsWorks Stacks
with a specified stack.

We do not recommend using this action to register instances. The
complete registration operation includes two tasks: installing the AWS
OpsWorks Stacks agent on the instance, and registering the instance with
the stack. `register_instance` handles only the second step. You should
instead use the AWS CLI `register` command, which performs the entire
registration operation. For more information, see [Registering an
Instance with an AWS OpsWorks Stacks
Stack](https://docs.aws.amazon.com/opsworks/latest/userguide/registered-instances-register.html).

Registered instances have the same requirements as instances that are
created by using the `create_instance` API. For example, registered
instances must be running a supported Linux-based operating system, and
they must have a supported instance type. For more information about
requirements for instances that you want to register, see [Preparing the
Instance](https://docs.aws.amazon.com/opsworks/latest/userguide/).

**Required Permissions**: To use this action, an IAM user must have a
Manage permissions level for the stack or an attached policy that
explicitly grants permissions. For more information on user permissions,
see [Managing User
Permissions](https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).

### Usage

    opsworks_register_instance(StackId, Hostname, PublicIp, PrivateIp,
      RsaPublicKey, RsaPublicKeyFingerprint, InstanceIdentity)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="opsworks_register_instance_:_StackId">StackId</code></td>
<td><p>[required] The ID of the stack that the instance is to be
registered with.</p></td>
</tr>
<tr class="even">
<td><code
id="opsworks_register_instance_:_Hostname">Hostname</code></td>
<td><p>The instance's hostname.</p></td>
</tr>
<tr class="odd">
<td><code
id="opsworks_register_instance_:_PublicIp">PublicIp</code></td>
<td><p>The instance's public IP address.</p></td>
</tr>
<tr class="even">
<td><code
id="opsworks_register_instance_:_PrivateIp">PrivateIp</code></td>
<td><p>The instance's private IP address.</p></td>
</tr>
<tr class="odd">
<td><code
id="opsworks_register_instance_:_RsaPublicKey">RsaPublicKey</code></td>
<td><p>The instances public RSA key. This key is used to encrypt
communication between the instance and the service.</p></td>
</tr>
<tr class="even">
<td><code
id="opsworks_register_instance_:_RsaPublicKeyFingerprint">RsaPublicKeyFingerprint</code></td>
<td><p>The instances public RSA key fingerprint.</p></td>
</tr>
<tr class="odd">
<td><code
id="opsworks_register_instance_:_InstanceIdentity">InstanceIdentity</code></td>
<td><p>An InstanceIdentity object that contains the instance's
identity.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      InstanceId = "string"
    )

### Request syntax

    svc$register_instance(
      StackId = "string",
      Hostname = "string",
      PublicIp = "string",
      PrivateIp = "string",
      RsaPublicKey = "string",
      RsaPublicKeyFingerprint = "string",
      InstanceIdentity = list(
        Document = "string",
        Signature = "string"
      )
    )
