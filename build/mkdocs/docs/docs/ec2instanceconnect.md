<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2instanceconnect</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## AWS EC2 Instance Connect

### Description

Amazon EC2 Instance Connect enables system administrators to publish
one-time use SSH public keys to EC2, providing users a simple and secure
way to connect to their instances.

### Usage

    ec2instanceconnect(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ec2instanceconnect_:_config">config</code></td>
<td><p>Optional configuration of credentials, endpoint, and/or
region.</p>
<ul>
<li><p><strong>access_key_id</strong>: AWS access key ID</p></li>
<li><p><strong>secret_access_key</strong>: AWS secret access
key</p></li>
<li><p><strong>session_token</strong>: AWS temporary session
token</p></li>
<li><p><strong>profile</strong>: The name of a profile to use. If not
given, then the default profile is used.</p></li>
<li><p><strong>anonymous</strong>: Set anonymous credentials.</p></li>
<li><p><strong>endpoint</strong>: The complete URL to use for the
constructed client.</p></li>
<li><p><strong>region</strong>: The AWS Region used in instantiating the
client.</p></li>
<li><p><strong>close_connection</strong>: Immediately close all HTTP
connections.</p></li>
<li><p><strong>timeout</strong>: The time in seconds till a timeout
exception is thrown when attempting to make a connection. The default is
60 seconds.</p></li>
<li><p><strong>s3_force_path_style</strong>: Set this to
<code>true</code> to force the request to use path-style addressing,
i.e., <code
style="white-space: pre;">⁠http://s3.amazonaws.com/BUCKET/KEY⁠</code>.</p></li>
</ul></td>
</tr>
</tbody>
</table>

### Value

A client for the service. You can call the service's operations using
syntax like `svc$operation(...)`, where `svc` is the name you've
assigned to the client. The available operations are listed in the
Operations section.

### Service syntax

    svc <- ec2instanceconnect(
      config = list(
        credentials = list(
          creds = list(
            access_key_id = "string",
            secret_access_key = "string",
            session_token = "string"
          ),
          profile = "string",
          anonymous = "logical"
        ),
        endpoint = "string",
        region = "string",
        close_connection = "logical",
        timeout = "numeric",
        s3_force_path_style = "logical"
      )
    )

### Operations

<table>
<tbody>
<tr class="odd">
<td style="text-align: left;"><a href="../ec2instanceconnect_send_serial_console_ssh_public_key/"> send_serial_console_ssh_public_key </a></td>
<td style="text-align: left;">Pushes an SSH public key to the specified
EC2 instance</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ec2instanceconnect_send_ssh_public_key/"> send_ssh_public_key </a></td>
<td style="text-align: left;">Pushes an SSH public key to the specified
EC2 instance for use by the specified user</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- ec2instanceconnect()
    # The following example pushes a sample SSH public key to the EC2 instance
    # i-abcd1234 in AZ us-west-2b for use by the instance OS user ec2-user.
    svc$send_ssh_public_key(
      AvailabilityZone = "us-west-2a",
      InstanceId = "i-abcd1234",
      InstanceOSUser = "ec2-user",
      SSHPublicKey = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC3FlHqj2eqCdrGHuA6d..."
    )

    ## End(Not run)
