<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>opsworks_create_stack</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a new stack

### Description

Creates a new stack. For more information, see [Create a New
Stack](https://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-edit.html).

**Required Permissions**: To use this action, an IAM user must have an
attached policy that explicitly grants permissions. For more information
about user permissions, see [Managing User
Permissions](https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).

### Usage

    opsworks_create_stack(Name, Region, VpcId, Attributes, ServiceRoleArn,
      DefaultInstanceProfileArn, DefaultOs, HostnameTheme,
      DefaultAvailabilityZone, DefaultSubnetId, CustomJson,
      ConfigurationManager, ChefConfiguration, UseCustomCookbooks,
      UseOpsworksSecurityGroups, CustomCookbooksSource, DefaultSshKeyName,
      DefaultRootDeviceType, AgentVersion)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="opsworks_create_stack_:_Name">Name</code></td>
<td><p>[required] The stack name.</p></td>
</tr>
<tr class="even">
<td><code id="opsworks_create_stack_:_Region">Region</code></td>
<td><p>[required] The stack's AWS region, such as
<code>ap-south-1</code>. For more information about Amazon regions, see
<a
href="https://docs.aws.amazon.com/general/latest/gr/rande.html">Regions
and Endpoints</a>.</p>
<p>In the AWS CLI, this API maps to the <code>--stack-region</code>
parameter. If the <code>--stack-region</code> parameter and the AWS CLI
common parameter <code>--region</code> are set to the same value, the
stack uses a <em>regional</em> endpoint. If the
<code>--stack-region</code> parameter is not set, but the AWS CLI
<code>--region</code> parameter is, this also results in a stack with a
<em>regional</em> endpoint. However, if the <code>--region</code>
parameter is set to <code>us-east-1</code>, and the
<code>--stack-region</code> parameter is set to one of the following,
then the stack uses a legacy or <em>classic</em> region: <code
style="white-space: pre;">⁠us-west-1, us-west-2, sa-east-1, eu-central-1, eu-west-1, ap-northeast-1, ap-southeast-1, ap-southeast-2⁠</code>.
In this case, the actual API endpoint of the stack is in
<code>us-east-1</code>. Only the preceding regions are supported as
classic regions in the <code>us-east-1</code> API endpoint. Because it
is a best practice to choose the regional endpoint that is closest to
where you manage AWS, we recommend that you use regional endpoints for
new stacks. The AWS CLI common <code>--region</code> parameter always
specifies a regional API endpoint; it cannot be used to specify a
classic AWS OpsWorks Stacks region.</p></td>
</tr>
<tr class="odd">
<td><code id="opsworks_create_stack_:_VpcId">VpcId</code></td>
<td><p>The ID of the VPC that the stack is to be launched into. The VPC
must be in the stack's region. All instances are launched into this VPC.
You cannot change the ID later.</p>
<ul>
<li><p>If your account supports EC2-Classic, the default value is <code
style="white-space: pre;">⁠no VPC⁠</code>.</p></li>
<li><p>If your account does not support EC2-Classic, the default value
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
a Stack in a VPC</a>. For more information about default VPC and
EC2-Classic, see <a
href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-classic-platform.html">Supported
Platforms</a>.</p></td>
</tr>
<tr class="even">
<td><code id="opsworks_create_stack_:_Attributes">Attributes</code></td>
<td><p>One or more user-defined key-value pairs to be added to the stack
attributes.</p></td>
</tr>
<tr class="odd">
<td><code
id="opsworks_create_stack_:_ServiceRoleArn">ServiceRoleArn</code></td>
<td><p>[required] The stack's AWS Identity and Access Management (IAM)
role, which allows AWS OpsWorks Stacks to work with AWS resources on
your behalf. You must set this parameter to the Amazon Resource Name
(ARN) for an existing IAM role. For more information about IAM ARNs, see
<a
href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html">Using
Identifiers</a>.</p></td>
</tr>
<tr class="even">
<td><code
id="opsworks_create_stack_:_DefaultInstanceProfileArn">DefaultInstanceProfileArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of an IAM profile that
is the default profile for all of the stack's EC2 instances. For more
information about IAM ARNs, see <a
href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html">Using
Identifiers</a>.</p></td>
</tr>
<tr class="odd">
<td><code id="opsworks_create_stack_:_DefaultOs">DefaultOs</code></td>
<td><p>The stack's default operating system, which is installed on every
instance unless you specify a different operating system when you create
the instance. You can specify one of the following.</p>
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
<li><p>A supported Windows operating system, such as <code
style="white-space: pre;">⁠Microsoft Windows Server 2012 R2 Base⁠</code>,
<code
style="white-space: pre;">⁠Microsoft Windows Server 2012 R2 with SQL Server Express⁠</code>,
<code
style="white-space: pre;">⁠Microsoft Windows Server 2012 R2 with SQL Server Standard⁠</code>,
or <code
style="white-space: pre;">⁠Microsoft Windows Server 2012 R2 with SQL Server Web⁠</code>.</p></li>
<li><p>A custom AMI: <code>Custom</code>. You specify the custom AMI you
want to use when you create instances. For more information, see <a
href="https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-custom-ami.html">Using
Custom AMIs</a>.</p></li>
</ul>
<p>The default option is the current Amazon Linux version. For more
information about supported operating systems, see <a
href="https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-os.html">AWS
OpsWorks Stacks Operating Systems</a>.</p></td>
</tr>
<tr class="even">
<td><code
id="opsworks_create_stack_:_HostnameTheme">HostnameTheme</code></td>
<td><p>The stack's host name theme, with spaces replaced by underscores.
The theme is used to generate host names for the stack's instances. By
default, <code>HostnameTheme</code> is set to
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
<tr class="odd">
<td><code
id="opsworks_create_stack_:_DefaultAvailabilityZone">DefaultAvailabilityZone</code></td>
<td><p>The stack's default Availability Zone, which must be in the
specified region. For more information, see <a
href="https://docs.aws.amazon.com/general/latest/gr/rande.html">Regions
and Endpoints</a>. If you also specify a value for
<code>DefaultSubnetId</code>, the subnet must be in the same zone. For
more information, see the <code>VpcId</code> parameter
description.</p></td>
</tr>
<tr class="even">
<td><code
id="opsworks_create_stack_:_DefaultSubnetId">DefaultSubnetId</code></td>
<td><p>The stack's default VPC subnet ID. This parameter is required if
you specify a value for the <code>VpcId</code> parameter. All instances
are launched into this subnet unless you specify otherwise when you
create the instance. If you also specify a value for
<code>DefaultAvailabilityZone</code>, the subnet must be in that zone.
For information on default values and when this parameter is required,
see the <code>VpcId</code> parameter description.</p></td>
</tr>
<tr class="odd">
<td><code id="opsworks_create_stack_:_CustomJson">CustomJson</code></td>
<td><p>A string that contains user-defined, custom JSON. It can be used
to override the corresponding default stack configuration attribute
values or to pass data to recipes. The string should be in the following
format:</p>
<p><code
style="white-space: pre;">⁠"{\"key1\": \"value1\", \"key2\": \"value2\",...}"⁠</code></p>
<p>For more information about custom JSON, see <a
href="https://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-json.html">Use
Custom JSON to Modify the Stack Configuration Attributes</a>.</p></td>
</tr>
<tr class="even">
<td><code
id="opsworks_create_stack_:_ConfigurationManager">ConfigurationManager</code></td>
<td><p>The configuration manager. When you create a stack we recommend
that you use the configuration manager to specify the Chef version: 12,
11.10, or 11.4 for Linux stacks, or 12.2 for Windows stacks. The default
value for Linux stacks is currently 12.</p></td>
</tr>
<tr class="odd">
<td><code
id="opsworks_create_stack_:_ChefConfiguration">ChefConfiguration</code></td>
<td><p>A <code>ChefConfiguration</code> object that specifies whether to
enable Berkshelf and the Berkshelf version on Chef 11.10 stacks. For
more information, see <a
href="https://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-creating.html">Create
a New Stack</a>.</p></td>
</tr>
<tr class="even">
<td><code
id="opsworks_create_stack_:_UseCustomCookbooks">UseCustomCookbooks</code></td>
<td><p>Whether the stack uses custom cookbooks.</p></td>
</tr>
<tr class="odd">
<td><code
id="opsworks_create_stack_:_UseOpsworksSecurityGroups">UseOpsworksSecurityGroups</code></td>
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
create it, but you cannot delete the built-in security group.</p></li>
<li><p>False - AWS OpsWorks Stacks does not associate built-in security
groups with layers. You must create appropriate EC2 security groups and
associate a security group with each layer that you create. However, you
can still manually associate a built-in security group with a layer on
creation; custom security groups are required only for those layers that
need custom settings.</p></li>
</ul>
<p>For more information, see <a
href="https://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-creating.html">Create
a New Stack</a>.</p></td>
</tr>
<tr class="even">
<td><code
id="opsworks_create_stack_:_CustomCookbooksSource">CustomCookbooksSource</code></td>
<td><p>Contains the information required to retrieve an app or cookbook
from a repository. For more information, see <a
href="https://docs.aws.amazon.com/opsworks/latest/userguide/workingapps-creating.html">Adding
Apps</a> or <a
href="https://docs.aws.amazon.com/opsworks/latest/userguide/workingcookbook.html">Cookbooks
and Recipes</a>.</p></td>
</tr>
<tr class="odd">
<td><code
id="opsworks_create_stack_:_DefaultSshKeyName">DefaultSshKeyName</code></td>
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
<tr class="even">
<td><code
id="opsworks_create_stack_:_DefaultRootDeviceType">DefaultRootDeviceType</code></td>
<td><p>The default root device type. This value is the default for all
instances in the stack, but you can override it when you create an
instance. The default option is <code>instance-store</code>. For more
information, see <a
href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ComponentsAMIs.html#storage-for-the-root-device">Storage
for the Root Device</a>.</p></td>
</tr>
<tr class="odd">
<td><code
id="opsworks_create_stack_:_AgentVersion">AgentVersion</code></td>
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
<p>The default setting is the most recent release of the agent. To
specify an agent version, you must use the complete version number, not
the abbreviated number shown on the console. For a list of available
agent version numbers, call <code>describe_agent_versions</code>.
AgentVersion cannot be set to Chef 12.2.</p>
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

    svc$create_stack(
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
      DefaultRootDeviceType = "ebs"|"instance-store",
      AgentVersion = "string"
    )
