<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>opsworkscm_create_server</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates and immedately starts a new server

### Description

Creates and immedately starts a new server. The server is ready to use
when it is in the `HEALTHY` state. By default, you can create a maximum
of 10 servers.

This operation is asynchronous.

A `LimitExceededException` is thrown when you have created the maximum
number of servers (10). A `ResourceAlreadyExistsException` is thrown
when a server with the same name already exists in the account. A
`ResourceNotFoundException` is thrown when you specify a backup ID that
is not valid or is for a backup that does not exist. A
`ValidationException` is thrown when parameters of the request are not
valid.

If you do not specify a security group by adding the `SecurityGroupIds`
parameter, AWS OpsWorks creates a new security group.

*Chef Automate:* The default security group opens the Chef server to the
world on TCP port 443. If a KeyName is present, AWS OpsWorks enables SSH
access. SSH is also open to the world on TCP port 22.

*Puppet Enterprise:* The default security group opens TCP ports 22, 443,
4433, 8140, 8142, 8143, and 8170. If a KeyName is present, AWS OpsWorks
enables SSH access. SSH is also open to the world on TCP port 22.

By default, your server is accessible from any IP address. We recommend
that you update your security group rules to allow access from known IP
addresses and address ranges only. To edit security group rules, open
Security Groups in the navigation pane of the EC2 management console.

To specify your own domain for a server, and provide your own
self-signed or CA-signed certificate and private key, specify values for
`CustomDomain`, `CustomCertificate`, and `CustomPrivateKey`.

### Usage

    opsworkscm_create_server(AssociatePublicIpAddress, CustomDomain,
      CustomCertificate, CustomPrivateKey, DisableAutomatedBackup, Engine,
      EngineModel, EngineVersion, EngineAttributes, BackupRetentionCount,
      ServerName, InstanceProfileArn, InstanceType, KeyPair,
      PreferredMaintenanceWindow, PreferredBackupWindow, SecurityGroupIds,
      ServiceRoleArn, SubnetIds, Tags, BackupId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="opsworkscm_create_server_:_AssociatePublicIpAddress">AssociatePublicIpAddress</code></td>
<td><p>Associate a public IP address with a server that you are
launching. Valid values are <code>true</code> or <code>false</code>. The
default value is <code>true</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="opsworkscm_create_server_:_CustomDomain">CustomDomain</code></td>
<td><p>An optional public endpoint of a server, such as <code
style="white-space: pre;">⁠https://aws.my-company.com⁠</code>. To access
the server, create a CNAME DNS record in your preferred DNS service that
points the custom domain to the endpoint that is generated when the
server is created (the value of the CreateServer Endpoint attribute).
You cannot access the server by using the generated
<code>Endpoint</code> value if the server is using a custom domain. If
you specify a custom domain, you must also specify values for
<code>CustomCertificate</code> and
<code>CustomPrivateKey</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="opsworkscm_create_server_:_CustomCertificate">CustomCertificate</code></td>
<td><p>A PEM-formatted HTTPS certificate. The value can be be a single,
self-signed certificate, or a certificate chain. If you specify a custom
certificate, you must also specify values for <code>CustomDomain</code>
and <code>CustomPrivateKey</code>. The following are requirements for
the <code>CustomCertificate</code> value:</p>
<ul>
<li><p>You can provide either a self-signed, custom certificate, or the
full certificate chain.</p></li>
<li><p>The certificate must be a valid X509 certificate, or a
certificate chain in PEM format.</p></li>
<li><p>The certificate must be valid at the time of upload. A
certificate can't be used before its validity period begins (the
certificate's <code>NotBefore</code> date), or after it expires (the
certificate's <code>NotAfter</code> date).</p></li>
<li><p>The certificate’s common name or subject alternative names
(SANs), if present, must match the value of
<code>CustomDomain</code>.</p></li>
<li><p>The certificate must match the value of
<code>CustomPrivateKey</code>.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="opsworkscm_create_server_:_CustomPrivateKey">CustomPrivateKey</code></td>
<td><p>A private key in PEM format for connecting to the server by using
HTTPS. The private key must not be encrypted; it cannot be protected by
a password or passphrase. If you specify a custom private key, you must
also specify values for <code>CustomDomain</code> and
<code>CustomCertificate</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="opsworkscm_create_server_:_DisableAutomatedBackup">DisableAutomatedBackup</code></td>
<td><p>Enable or disable scheduled backups. Valid values are
<code>true</code> or <code>false</code>. The default value is
<code>true</code>.</p></td>
</tr>
<tr class="even">
<td><code id="opsworkscm_create_server_:_Engine">Engine</code></td>
<td><p>[required] The configuration management engine to use. Valid
values include <code>ChefAutomate</code> and
<code>Puppet</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="opsworkscm_create_server_:_EngineModel">EngineModel</code></td>
<td><p>The engine model of the server. Valid values in this release
include <code>Monolithic</code> for Puppet and <code>Single</code> for
Chef.</p></td>
</tr>
<tr class="even">
<td><code
id="opsworkscm_create_server_:_EngineVersion">EngineVersion</code></td>
<td><p>The major release version of the engine that you want to use. For
a Chef server, the valid value for EngineVersion is currently
<code>2</code>. For a Puppet server, valid values are <code>2019</code>
or <code>2017</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="opsworkscm_create_server_:_EngineAttributes">EngineAttributes</code></td>
<td><p>Optional engine attributes on a specified server.</p>
<p><strong>Attributes accepted in a Chef createServer
request:</strong></p>
<ul>
<li><p><code>CHEF_AUTOMATE_PIVOTAL_KEY</code>: A base64-encoded RSA
public key. The corresponding private key is required to access the Chef
API. When no CHEF_AUTOMATE_PIVOTAL_KEY is set, a private key is
generated and returned in the response.</p></li>
<li><p><code>CHEF_AUTOMATE_ADMIN_PASSWORD</code>: The password for the
administrative user in the Chef Automate web-based dashboard. The
password length is a minimum of eight characters, and a maximum of 32.
The password can contain letters, numbers, and special characters
(!/@#$%^&amp;+=_). The password must contain at least one lower case
letter, one upper case letter, one number, and one special character.
When no CHEF_AUTOMATE_ADMIN_PASSWORD is set, one is generated and
returned in the response.</p></li>
</ul>
<p><strong>Attributes accepted in a Puppet createServer
request:</strong></p>
<ul>
<li><p><code>PUPPET_ADMIN_PASSWORD</code>: To work with the Puppet
Enterprise console, a password must use ASCII characters.</p></li>
<li><p><code>PUPPET_R10K_REMOTE</code>: The r10k remote is the URL of
your control repository (for example,
ssh://git@your.git-repo.com:user/control-repo.git). Specifying an r10k
remote opens TCP port 8170.</p></li>
<li><p><code>PUPPET_R10K_PRIVATE_KEY</code>: If you are using a private
Git repository, add PUPPET_R10K_PRIVATE_KEY to specify a PEM-encoded
private SSH key.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="opsworkscm_create_server_:_BackupRetentionCount">BackupRetentionCount</code></td>
<td><p>The number of automated backups that you want to keep. Whenever a
new backup is created, AWS OpsWorks CM deletes the oldest backups if
this number is exceeded. The default value is <code>1</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="opsworkscm_create_server_:_ServerName">ServerName</code></td>
<td><p>[required] The name of the server. The server name must be unique
within your AWS account, within each region. Server names must start
with a letter; then letters, numbers, or hyphens (-) are allowed, up to
a maximum of 40 characters.</p></td>
</tr>
<tr class="even">
<td><code
id="opsworkscm_create_server_:_InstanceProfileArn">InstanceProfileArn</code></td>
<td><p>[required] The ARN of the instance profile that your Amazon EC2
instances use. Although the AWS OpsWorks console typically creates the
instance profile for you, if you are using API commands instead, run the
service-role-creation.yaml AWS CloudFormation template, located at
https://s3.amazonaws.com/opsworks-cm-us-east-1-prod-default-assets/misc/opsworks-cm-roles.yaml.
This template creates a CloudFormation stack that includes the instance
profile you need.</p></td>
</tr>
<tr class="odd">
<td><code
id="opsworkscm_create_server_:_InstanceType">InstanceType</code></td>
<td><p>[required] The Amazon EC2 instance type to use. For example,
<code>m5.large</code>.</p></td>
</tr>
<tr class="even">
<td><code id="opsworkscm_create_server_:_KeyPair">KeyPair</code></td>
<td><p>The Amazon EC2 key pair to set for the instance. This parameter
is optional; if desired, you may specify this parameter to connect to
your instances by using SSH.</p></td>
</tr>
<tr class="odd">
<td><code
id="opsworkscm_create_server_:_PreferredMaintenanceWindow">PreferredMaintenanceWindow</code></td>
<td><p>The start time for a one-hour period each week during which AWS
OpsWorks CM performs maintenance on the instance. Valid values must be
specified in the following format: <code>DDD:HH:MM</code>.
<code>MM</code> must be specified as <code>00</code>. The specified time
is in coordinated universal time (UTC). The default value is a random
one-hour period on Tuesday, Wednesday, or Friday. See
<code>TimeWindowDefinition</code> for more information.</p>
<p><strong>Example:</strong> <code>Mon:08:00</code>, which represents a
start time of every Monday at 08:00 UTC. (8:00 a.m.)</p></td>
</tr>
<tr class="even">
<td><code
id="opsworkscm_create_server_:_PreferredBackupWindow">PreferredBackupWindow</code></td>
<td><p>The start time for a one-hour period during which AWS OpsWorks CM
backs up application-level data on your server if automated backups are
enabled. Valid values must be specified in one of the following
formats:</p>
<ul>
<li><p><code>HH:MM</code> for daily backups</p></li>
<li><p><code>DDD:HH:MM</code> for weekly backups</p></li>
</ul>
<p><code>MM</code> must be specified as <code>00</code>. The specified
time is in coordinated universal time (UTC). The default value is a
random, daily start time.</p>
<p><strong>Example:</strong> <code>08:00</code>, which represents a
daily start time of 08:00 UTC.</p>
<p><strong>Example:</strong> <code>Mon:08:00</code>, which represents a
start time of every Monday at 08:00 UTC. (8:00 a.m.)</p></td>
</tr>
<tr class="odd">
<td><code
id="opsworkscm_create_server_:_SecurityGroupIds">SecurityGroupIds</code></td>
<td><p>A list of security group IDs to attach to the Amazon EC2
instance. If you add this parameter, the specified security groups must
be within the VPC that is specified by <code>SubnetIds</code>.</p>
<p>If you do not specify this parameter, AWS OpsWorks CM creates one new
security group that uses TCP ports 22 and 443, open to 0.0.0.0/0
(everyone).</p></td>
</tr>
<tr class="even">
<td><code
id="opsworkscm_create_server_:_ServiceRoleArn">ServiceRoleArn</code></td>
<td><p>[required] The service role that the AWS OpsWorks CM service
backend uses to work with your account. Although the AWS OpsWorks
management console typically creates the service role for you, if you
are using the AWS CLI or API commands, run the
service-role-creation.yaml AWS CloudFormation template, located at
https://s3.amazonaws.com/opsworks-cm-us-east-1-prod-default-assets/misc/opsworks-cm-roles.yaml.
This template creates a CloudFormation stack that includes the service
role and instance profile that you need.</p></td>
</tr>
<tr class="odd">
<td><code
id="opsworkscm_create_server_:_SubnetIds">SubnetIds</code></td>
<td><p>The IDs of subnets in which to launch the server EC2
instance.</p>
<p>Amazon EC2-Classic customers: This field is required. All servers
must run within a VPC. The VPC must have "Auto Assign Public IP"
enabled.</p>
<p>EC2-VPC customers: This field is optional. If you do not specify
subnet IDs, your EC2 instances are created in a default subnet that is
selected by Amazon EC2. If you specify subnet IDs, the VPC must have
"Auto Assign Public IP" enabled.</p>
<p>For more information about supported Amazon EC2 platforms, see <a
href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-classic-platform.html">Supported
Platforms</a>.</p></td>
</tr>
<tr class="even">
<td><code id="opsworkscm_create_server_:_Tags">Tags</code></td>
<td><p>A map that contains tag keys and tag values to attach to an AWS
OpsWorks for Chef Automate or AWS OpsWorks for Puppet Enterprise
server.</p>
<ul>
<li><p>The key cannot be empty.</p></li>
<li><p>The key can be a maximum of 127 characters, and can contain only
Unicode letters, numbers, or separators, or the following special
characters: <code
style="white-space: pre;">⁠+ - = . _ : / @⁠</code></p></li>
<li><p>The value can be a maximum 255 characters, and contain only
Unicode letters, numbers, or separators, or the following special
characters: <code
style="white-space: pre;">⁠+ - = . _ : / @⁠</code></p></li>
<li><p>Leading and trailing white spaces are trimmed from both the key
and value.</p></li>
<li><p>A maximum of 50 user-applied tags is allowed for any AWS
OpsWorks-CM server.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code id="opsworkscm_create_server_:_BackupId">BackupId</code></td>
<td><p>If you specify this field, AWS OpsWorks CM creates the server by
using the backup represented by BackupId.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Server = list(
        AssociatePublicIpAddress = TRUE|FALSE,
        BackupRetentionCount = 123,
        ServerName = "string",
        CreatedAt = as.POSIXct(
          "2015-01-01"
        ),
        CloudFormationStackArn = "string",
        CustomDomain = "string",
        DisableAutomatedBackup = TRUE|FALSE,
        Endpoint = "string",
        Engine = "string",
        EngineModel = "string",
        EngineAttributes = list(
          list(
            Name = "string",
            Value = "string"
          )
        ),
        EngineVersion = "string",
        InstanceProfileArn = "string",
        InstanceType = "string",
        KeyPair = "string",
        MaintenanceStatus = "SUCCESS"|"FAILED",
        PreferredMaintenanceWindow = "string",
        PreferredBackupWindow = "string",
        SecurityGroupIds = list(
          "string"
        ),
        ServiceRoleArn = "string",
        Status = "BACKING_UP"|"CONNECTION_LOST"|"CREATING"|"DELETING"|"MODIFYING"|"FAILED"|"HEALTHY"|"RUNNING"|"RESTORING"|"SETUP"|"UNDER_MAINTENANCE"|"UNHEALTHY"|"TERMINATED",
        StatusReason = "string",
        SubnetIds = list(
          "string"
        ),
        ServerArn = "string"
      )
    )

### Request syntax

    svc$create_server(
      AssociatePublicIpAddress = TRUE|FALSE,
      CustomDomain = "string",
      CustomCertificate = "string",
      CustomPrivateKey = "string",
      DisableAutomatedBackup = TRUE|FALSE,
      Engine = "string",
      EngineModel = "string",
      EngineVersion = "string",
      EngineAttributes = list(
        list(
          Name = "string",
          Value = "string"
        )
      ),
      BackupRetentionCount = 123,
      ServerName = "string",
      InstanceProfileArn = "string",
      InstanceType = "string",
      KeyPair = "string",
      PreferredMaintenanceWindow = "string",
      PreferredBackupWindow = "string",
      SecurityGroupIds = list(
        "string"
      ),
      ServiceRoleArn = "string",
      SubnetIds = list(
        "string"
      ),
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      ),
      BackupId = "string"
    )
