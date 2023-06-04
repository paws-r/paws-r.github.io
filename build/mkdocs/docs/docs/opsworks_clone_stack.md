<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>opsworks_clone_stack</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a clone of a specified stack

### Description

Creates a clone of a specified stack. For more information, see [Clone a
Stack](https://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-cloning.html).
By default, all parameters are set to the values used by the parent
stack.

**Required Permissions**: To use this action, an IAM user must have an
attached policy that explicitly grants permissions. For more information
about user permissions, see [Managing User
Permissions](https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).

### Usage

    opsworks_clone_stack(SourceStackId, Name, Region, VpcId, Attributes,
      ServiceRoleArn, DefaultInstanceProfileArn, DefaultOs, HostnameTheme,
      DefaultAvailabilityZone, DefaultSubnetId, CustomJson,
      ConfigurationManager, ChefConfiguration, UseCustomCookbooks,
      UseOpsworksSecurityGroups, CustomCookbooksSource, DefaultSshKeyName,
      ClonePermissions, CloneAppIds, DefaultRootDeviceType, AgentVersion)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="opsworks_clone_stack_:_SourceStackId">SourceStackId</code></td>
<td><p>[required] The source stack ID.</p></td>
</tr>
<tr class="even">
<td><code id="opsworks_clone_stack_:_Name">Name</code></td>
<td><p>The cloned stack name.</p></td>
</tr>
<tr class="odd">
<td><code id="opsworks_clone_stack_:_Region">Region</code></td>
<td><p>The cloned stack AWS region, such as "ap-northeast-2". For more
information about AWS regions, see <a
href="https://docs.aws.amazon.com/general/latest/gr/rande.html">Regions
and Endpoints</a>.</p></td>
</tr>
<tr class="even">
<td><code id="opsworks_clone_stack_:_VpcId">VpcId</code></td>
<td><p>The ID of the VPC that the cloned stack is to be launched into.
It must be in the specified region. All instances are launched into this
VPC, and you cannot change the ID later.</p>
<ul>
<li><p>If your account supports EC2 Classic, the default value is no
VPC.</p></li>
<li><p>If your account does not support EC2 Classic, the default value
is the default VPC for the specified region.</p></li>
</ul>
<p>If the VPC ID corresponds to a default VPC and you have specified
either the <code>DefaultAvailabilityZone</code> or the
<code>DefaultSubnetId</code> parameter only, AWS OpsWorks Stacks infers
the value of the other parameter. If you specify neither parameter, AWS
OpsWorks Stacks sets these parameters to the first valid Availability
Zone for the specified region and the corresponding default VPC subnet
ID, respectively.</p>
<p>If you specify a nondefault VPC ID, note the following:</p>
<ul>
<li><p>It must belong to a VPC in your account that is in the specified
region.</p></li>
<li><p>You must specify a value for
<code>DefaultSubnetId</code>.</p></li>
</ul>
<p>For more information about how to use AWS OpsWorks Stacks with a VPC,
see <a
href="https://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-vpc.html">Running
a Stack in a VPC</a>. For more information about default VPC and EC2
Classic, see <a
href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-classic-platform.html">Supported
Platforms</a>.</p></td>
</tr>
<tr class="odd">
<td><code id="opsworks_clone_stack_:_Attributes">Attributes</code></td>
<td><p>A list of stack attributes and values as key/value pairs to be
added to the cloned stack.</p></td>
</tr>
<tr class="even">
<td><code
id="opsworks_clone_stack_:_ServiceRoleArn">ServiceRoleArn</code></td>
<td><p>[required] The stack AWS Identity and Access Management (IAM)
role, which allows AWS OpsWorks Stacks to work with AWS resources on
your behalf. You must set this parameter to the Amazon Resource Name
(ARN) for an existing IAM role. If you create a stack by using the AWS
OpsWorks Stacks console, it creates the role for you. You can obtain an
existing stack's IAM ARN programmatically by calling
<code>describe_permissions</code>. For more information about IAM ARNs,
see <a
href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html">Using
Identifiers</a>.</p>
<p>You must set this parameter to a valid service role ARN or the action
will fail; there is no default value. You can specify the source stack's
service role ARN, if you prefer, but you must do so explicitly.</p></td>
</tr>
<tr class="odd">
<td><code
id="opsworks_clone_stack_:_DefaultInstanceProfileArn">DefaultInstanceProfileArn</code></td>
<td><p>The Amazon Resource Name (ARN) of an IAM profile that is the
default profile for all of the stack's EC2 instances. For more
information about IAM ARNs, see <a
href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html">Using
Identifiers</a>.</p></td>
</tr>
<tr class="even">
<td><code id="opsworks_clone_stack_:_DefaultOs">DefaultOs</code></td>
<td><p>The stack's operating system, which must be set to one of the
following.</p>
<ul>
<li><p>A supported Linux operating system: An Amazon Linux version, such
as <code style="white-space: pre;">⁠Amazon Linux 2018.03⁠</code>, <code
style="white-space: pre;">⁠Amazon Linux 2017.09⁠</code>, <code
style="white-space: pre;">⁠Amazon Linux 2017.03⁠</code>, <code
style="white-space: pre;">⁠Amazon Linux 2016.09⁠</code>, <code
style="white-space: pre;">⁠Amazon Linux 2016.03⁠</code>, <code
style="white-space: pre;">⁠Amazon Linux 2015.09⁠</code>, or <code
style="white-space: pre;">⁠Amazon Linux 2015.03⁠</code>.</p></li>
<li><p>A supported Ubuntu operating system, such as <code
style="white-space: pre;">⁠Ubuntu 16.04 LTS⁠</code>, <code
style="white-space: pre;">⁠Ubuntu 14.04 LTS⁠</code>, or <code
style="white-space: pre;">⁠Ubuntu 12.04 LTS⁠</code>.</p></li>
<li><p><code style="white-space: pre;">⁠CentOS Linux 7⁠</code></p></li>
<li><p><code
style="white-space: pre;">⁠Red Hat Enterprise Linux 7⁠</code></p></li>
<li><p><code
style="white-space: pre;">⁠Microsoft Windows Server 2012 R2 Base⁠</code>,
<code
style="white-space: pre;">⁠Microsoft Windows Server 2012 R2 with SQL Server Express⁠</code>,
<code
style="white-space: pre;">⁠Microsoft Windows Server 2012 R2 with SQL Server Standard⁠</code>,
or <code
style="white-space: pre;">⁠Microsoft Windows Server 2012 R2 with SQL Server Web⁠</code>.</p></li>
<li><p>A custom AMI: <code>Custom</code>. You specify the custom AMI you
want to use when you create instances. For more information about how to
use custom AMIs with OpsWorks, see <a
href="https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-custom-ami.html">Using
Custom AMIs</a>.</p></li>
</ul>
<p>The default option is the parent stack's operating system. For more
information about supported operating systems, see <a
href="https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-os.html">AWS
OpsWorks Stacks Operating Systems</a>.</p>
<p>You can specify a different Linux operating system for the cloned
stack, but you cannot change from Linux to Windows or Windows to
Linux.</p></td>
</tr>
<tr class="odd">
<td><code
id="opsworks_clone_stack_:_HostnameTheme">HostnameTheme</code></td>
<td><p>The stack's host name theme, with spaces are replaced by
underscores. The theme is used to generate host names for the stack's
instances. By default, <code>HostnameTheme</code> is set to
<code>Layer_Dependent</code>, which creates host names by appending
integers to the layer's short name. The other themes are:</p>
<ul>
<li><p><code>Baked_Goods</code></p></li>
<li><p><code>Clouds</code></p></li>
<li><p><code>Europe_Cities</code></p></li>
<li><p><code>Fruits</code></p></li>
<li><p><code>Greek_Deities_and_Titans</code></p></li>
<li><p><code>Legendary_creatures_from_Japan</code></p></li>
<li><p><code>Planets_and_Moons</code></p></li>
<li><p><code>Roman_Deities</code></p></li>
<li><p><code>Scottish_Islands</code></p></li>
<li><p><code>US_Cities</code></p></li>
<li><p><code>Wild_Cats</code></p></li>
</ul>
<p>To obtain a generated host name, call
<code>GetHostNameSuggestion</code>, which returns a host name based on
the current theme.</p></td>
</tr>
<tr class="even">
<td><code
id="opsworks_clone_stack_:_DefaultAvailabilityZone">DefaultAvailabilityZone</code></td>
<td><p>The cloned stack's default Availability Zone, which must be in
the specified region. For more information, see <a
href="https://docs.aws.amazon.com/general/latest/gr/rande.html">Regions
and Endpoints</a>. If you also specify a value for
<code>DefaultSubnetId</code>, the subnet must be in the same zone. For
more information, see the <code>VpcId</code> parameter
description.</p></td>
</tr>
<tr class="odd">
<td><code
id="opsworks_clone_stack_:_DefaultSubnetId">DefaultSubnetId</code></td>
<td><p>The stack's default VPC subnet ID. This parameter is required if
you specify a value for the <code>VpcId</code> parameter. All instances
are launched into this subnet unless you specify otherwise when you
create the instance. If you also specify a value for
<code>DefaultAvailabilityZone</code>, the subnet must be in that zone.
For information on default values and when this parameter is required,
see the <code>VpcId</code> parameter description.</p></td>
</tr>
<tr class="even">
<td><code id="opsworks_clone_stack_:_CustomJson">CustomJson</code></td>
<td><p>A string that contains user-defined, custom JSON. It is used to
override the corresponding default stack configuration JSON values. The
string should be in the following format:</p>
<p><code
style="white-space: pre;">⁠"{\"key1\": \"value1\", \"key2\": \"value2\",...}"⁠</code></p>
<p>For more information about custom JSON, see <a
href="https://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-json.html">Use
Custom JSON to Modify the Stack Configuration Attributes</a></p></td>
</tr>
<tr class="odd">
<td><code
id="opsworks_clone_stack_:_ConfigurationManager">ConfigurationManager</code></td>
<td><p>The configuration manager. When you clone a stack we recommend
that you use the configuration manager to specify the Chef version: 12,
11.10, or 11.4 for Linux stacks, or 12.2 for Windows stacks. The default
value for Linux stacks is currently 12.</p></td>
</tr>
<tr class="even">
<td><code
id="opsworks_clone_stack_:_ChefConfiguration">ChefConfiguration</code></td>
<td><p>A <code>ChefConfiguration</code> object that specifies whether to
enable Berkshelf and the Berkshelf version on Chef 11.10 stacks. For
more information, see <a
href="https://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-creating.html">Create
a New Stack</a>.</p></td>
</tr>
<tr class="odd">
<td><code
id="opsworks_clone_stack_:_UseCustomCookbooks">UseCustomCookbooks</code></td>
<td><p>Whether to use custom cookbooks.</p></td>
</tr>
<tr class="even">
<td><code
id="opsworks_clone_stack_:_UseOpsworksSecurityGroups">UseOpsworksSecurityGroups</code></td>
<td><p>Whether to associate the AWS OpsWorks Stacks built-in security
groups with the stack's layers.</p>
<p>AWS OpsWorks Stacks provides a standard set of built-in security
groups, one for each layer, which are associated with layers by default.
With <code>UseOpsworksSecurityGroups</code> you can instead provide your
own custom security groups. <code>UseOpsworksSecurityGroups</code> has
the following settings:</p>
<ul>
<li><p>True - AWS OpsWorks Stacks automatically associates the
appropriate built-in security group with each layer (default setting).
You can associate additional security groups with a layer after you
create it but you cannot delete the built-in security group.</p></li>
<li><p>False - AWS OpsWorks Stacks does not associate built-in security
groups with layers. You must create appropriate Amazon Elastic Compute
Cloud (Amazon EC2) security groups and associate a security group with
each layer that you create. However, you can still manually associate a
built-in security group with a layer on creation; custom security groups
are required only for those layers that need custom settings.</p></li>
</ul>
<p>For more information, see <a
href="https://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-creating.html">Create
a New Stack</a>.</p></td>
</tr>
<tr class="odd">
<td><code
id="opsworks_clone_stack_:_CustomCookbooksSource">CustomCookbooksSource</code></td>
<td><p>Contains the information required to retrieve an app or cookbook
from a repository. For more information, see <a
href="https://docs.aws.amazon.com/opsworks/latest/userguide/workingapps-creating.html">Adding
Apps</a> or <a
href="https://docs.aws.amazon.com/opsworks/latest/userguide/workingcookbook.html">Cookbooks
and Recipes</a>.</p></td>
</tr>
<tr class="even">
<td><code
id="opsworks_clone_stack_:_DefaultSshKeyName">DefaultSshKeyName</code></td>
<td><p>A default Amazon EC2 key pair name. The default value is none. If
you specify a key pair name, AWS OpsWorks installs the public key on the
instance and you can use the private key with an SSH client to log in to
the instance. For more information, see <a
href="https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-ssh.html">Using
SSH to Communicate with an Instance</a> and <a
href="https://docs.aws.amazon.com/opsworks/latest/userguide/security-ssh-access.html">Managing
SSH Access</a>. You can override this setting by specifying a different
key pair, or no key pair, when you <a
href="https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-add.html">create
an instance</a>.</p></td>
</tr>
<tr class="odd">
<td><code
id="opsworks_clone_stack_:_ClonePermissions">ClonePermissions</code></td>
<td><p>Whether to clone the source stack's permissions.</p></td>
</tr>
<tr class="even">
<td><code
id="opsworks_clone_stack_:_CloneAppIds">CloneAppIds</code></td>
<td><p>A list of source stack app IDs to be included in the cloned
stack.</p></td>
</tr>
<tr class="odd">
<td><code
id="opsworks_clone_stack_:_DefaultRootDeviceType">DefaultRootDeviceType</code></td>
<td><p>The default root device type. This value is used by default for
all instances in the cloned stack, but you can override it when you
create an instance. For more information, see <a
href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ComponentsAMIs.html#storage-for-the-root-device">Storage
for the Root Device</a>.</p></td>
</tr>
<tr class="even">
<td><code
id="opsworks_clone_stack_:_AgentVersion">AgentVersion</code></td>
<td><p>The default AWS OpsWorks Stacks agent version. You have the
following options:</p>
<ul>
<li><p>Auto-update - Set this parameter to <code>LATEST</code>. AWS
OpsWorks Stacks automatically installs new agent versions on the stack's
instances as soon as they are available.</p></li>
<li><p>Fixed version - Set this parameter to your preferred agent
version. To update the agent version, you must edit the stack
configuration and specify a new version. AWS OpsWorks Stacks then
automatically installs that version on the stack's instances.</p></li>
</ul>
<p>The default setting is <code>LATEST</code>. To specify an agent
version, you must use the complete version number, not the abbreviated
number shown on the console. For a list of available agent version
numbers, call <code>describe_agent_versions</code>. AgentVersion cannot
be set to Chef 12.2.</p>
<p>You can also specify an agent version when you create or update an
instance, which overrides the stack's default setting.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      StackId = "string"
    )

### Request syntax

    svc$clone_stack(
      SourceStackId = "string",
      Name = "string",
      Region = "string",
      VpcId = "string",
      Attributes = list(
        "string"
      ),
      ServiceRoleArn = "string",
      DefaultInstanceProfileArn = "string",
      DefaultOs = "string",
      HostnameTheme = "string",
      DefaultAvailabilityZone = "string",
      DefaultSubnetId = "string",
      CustomJson = "string",
      ConfigurationManager = list(
        Name = "string",
        Version = "string"
      ),
      ChefConfiguration = list(
        ManageBerkshelf = TRUE|FALSE,
        BerkshelfVersion = "string"
      ),
      UseCustomCookbooks = TRUE|FALSE,
      UseOpsworksSecurityGroups = TRUE|FALSE,
      CustomCookbooksSource = list(
        Type = "git"|"svn"|"archive"|"s3",
        Url = "string",
        Username = "string",
        Password = "string",
        SshKey = "string",
        Revision = "string"
      ),
      DefaultSshKeyName = "string",
      ClonePermissions = TRUE|FALSE,
      CloneAppIds = list(
        "string"
      ),
      DefaultRootDeviceType = "ebs"|"instance-store",
      AgentVersion = "string"
    )
