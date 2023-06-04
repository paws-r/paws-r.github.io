<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>opsworks_create_instance</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates an instance in a specified stack

### Description

Creates an instance in a specified stack. For more information, see
[Adding an Instance to a
Layer](https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-add.html).

**Required Permissions**: To use this action, an IAM user must have a
Manage permissions level for the stack, or an attached policy that
explicitly grants permissions. For more information on user permissions,
see [Managing User
Permissions](https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).

### Usage

    opsworks_create_instance(StackId, LayerIds, InstanceType,
      AutoScalingType, Hostname, Os, AmiId, SshKeyName, AvailabilityZone,
      VirtualizationType, SubnetId, Architecture, RootDeviceType,
      BlockDeviceMappings, InstallUpdatesOnBoot, EbsOptimized, AgentVersion,
      Tenancy)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="opsworks_create_instance_:_StackId">StackId</code></td>
<td><p>[required] The stack ID.</p></td>
</tr>
<tr class="even">
<td><code id="opsworks_create_instance_:_LayerIds">LayerIds</code></td>
<td><p>[required] An array that contains the instance's layer
IDs.</p></td>
</tr>
<tr class="odd">
<td><code
id="opsworks_create_instance_:_InstanceType">InstanceType</code></td>
<td><p>[required] The instance type, such as <code>t2.micro</code>. For
a list of supported instance types, open the stack in the console,
choose <strong>Instances</strong>, and choose <strong>+
Instance</strong>. The <strong>Size</strong> list contains the currently
supported types. For more information, see <a
href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html">Instance
Families and Types</a>. The parameter values that you use to specify the
various types are in the <strong>API Name</strong> column of the
<strong>Available Instance Types</strong> table.</p></td>
</tr>
<tr class="even">
<td><code
id="opsworks_create_instance_:_AutoScalingType">AutoScalingType</code></td>
<td><p>For load-based or time-based instances, the type. Windows stacks
can use only time-based instances.</p></td>
</tr>
<tr class="odd">
<td><code id="opsworks_create_instance_:_Hostname">Hostname</code></td>
<td><p>The instance host name.</p></td>
</tr>
<tr class="even">
<td><code id="opsworks_create_instance_:_Os">Os</code></td>
<td><p>The instance's operating system, which must be set to one of the
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
<li><p>A supported Windows operating system, such as <code
style="white-space: pre;">⁠Microsoft Windows Server 2012 R2 Base⁠</code>,
<code
style="white-space: pre;">⁠Microsoft Windows Server 2012 R2 with SQL Server Express⁠</code>,
<code
style="white-space: pre;">⁠Microsoft Windows Server 2012 R2 with SQL Server Standard⁠</code>,
or <code
style="white-space: pre;">⁠Microsoft Windows Server 2012 R2 with SQL Server Web⁠</code>.</p></li>
<li><p>A custom AMI: <code>Custom</code>.</p></li>
</ul>
<p>For more information about the supported operating systems, see <a
href="https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-os.html">AWS
OpsWorks Stacks Operating Systems</a>.</p>
<p>The default option is the current Amazon Linux version. If you set
this parameter to <code>Custom</code>, you must use the
<code>create_instance</code> action's AmiId parameter to specify the
custom AMI that you want to use. Block device mappings are not supported
if the value is <code>Custom</code>. For more information about
supported operating systems, see <a
href="https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-os.html">Operating
Systems</a>For more information about how to use custom AMIs with AWS
OpsWorks Stacks, see <a
href="https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-custom-ami.html">Using
Custom AMIs</a>.</p></td>
</tr>
<tr class="odd">
<td><code id="opsworks_create_instance_:_AmiId">AmiId</code></td>
<td><p>A custom AMI ID to be used to create the instance. The AMI should
be based on one of the supported operating systems. For more
information, see <a
href="https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-custom-ami.html">Using
Custom AMIs</a>.</p>
<p>If you specify a custom AMI, you must set <code>Os</code> to
<code>Custom</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="opsworks_create_instance_:_SshKeyName">SshKeyName</code></td>
<td><p>The instance's Amazon EC2 key-pair name.</p></td>
</tr>
<tr class="odd">
<td><code
id="opsworks_create_instance_:_AvailabilityZone">AvailabilityZone</code></td>
<td><p>The instance Availability Zone. For more information, see <a
href="https://docs.aws.amazon.com/general/latest/gr/rande.html">Regions
and Endpoints</a>.</p></td>
</tr>
<tr class="even">
<td><code
id="opsworks_create_instance_:_VirtualizationType">VirtualizationType</code></td>
<td><p>The instance's virtualization type, <code>paravirtual</code> or
<code>hvm</code>.</p></td>
</tr>
<tr class="odd">
<td><code id="opsworks_create_instance_:_SubnetId">SubnetId</code></td>
<td><p>The ID of the instance's subnet. If the stack is running in a
VPC, you can use this parameter to override the stack's default subnet
ID value and direct AWS OpsWorks Stacks to launch the instance in a
different subnet.</p></td>
</tr>
<tr class="even">
<td><code
id="opsworks_create_instance_:_Architecture">Architecture</code></td>
<td><p>The instance architecture. The default option is
<code>x86_64</code>. Instance types do not necessarily support both
architectures. For a list of the architectures that are supported by the
different instance types, see <a
href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html">Instance
Families and Types</a>.</p></td>
</tr>
<tr class="odd">
<td><code
id="opsworks_create_instance_:_RootDeviceType">RootDeviceType</code></td>
<td><p>The instance root device type. For more information, see <a
href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ComponentsAMIs.html#storage-for-the-root-device">Storage
for the Root Device</a>.</p></td>
</tr>
<tr class="even">
<td><code
id="opsworks_create_instance_:_BlockDeviceMappings">BlockDeviceMappings</code></td>
<td><p>An array of <code>BlockDeviceMapping</code> objects that specify
the instance's block devices. For more information, see <a
href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/block-device-mapping-concepts.html">Block
Device Mapping</a>. Note that block device mappings are not supported
for custom AMIs.</p></td>
</tr>
<tr class="odd">
<td><code
id="opsworks_create_instance_:_InstallUpdatesOnBoot">InstallUpdatesOnBoot</code></td>
<td><p>Whether to install operating system and package updates when the
instance boots. The default value is <code>true</code>. To control when
updates are installed, set this value to <code>false</code>. You must
then update your instances manually by using
<code>create_deployment</code> to run the
<code>update_dependencies</code> stack command or by manually running
<code>yum</code> (Amazon Linux) or <code>apt-get</code> (Ubuntu) on the
instances.</p>
<p>We strongly recommend using the default value of <code>true</code> to
ensure that your instances have the latest security updates.</p></td>
</tr>
<tr class="even">
<td><code
id="opsworks_create_instance_:_EbsOptimized">EbsOptimized</code></td>
<td><p>Whether to create an Amazon EBS-optimized instance.</p></td>
</tr>
<tr class="odd">
<td><code
id="opsworks_create_instance_:_AgentVersion">AgentVersion</code></td>
<td><p>The default AWS OpsWorks Stacks agent version. You have the
following options:</p>
<ul>
<li><p><code>INHERIT</code> - Use the stack's default agent version
setting.</p></li>
<li><p><em>version_number</em> - Use the specified agent version. This
value overrides the stack's default setting. To update the agent
version, edit the instance configuration and specify a new version. AWS
OpsWorks Stacks then automatically installs that version on the
instance.</p></li>
</ul>
<p>The default setting is <code>INHERIT</code>. To specify an agent
version, you must use the complete version number, not the abbreviated
number shown on the console. For a list of available agent version
numbers, call <code>describe_agent_versions</code>. AgentVersion cannot
be set to Chef 12.2.</p></td>
</tr>
<tr class="even">
<td><code id="opsworks_create_instance_:_Tenancy">Tenancy</code></td>
<td><p>The instance's tenancy option. The default option is no tenancy,
or if the instance is running in a VPC, inherit tenancy settings from
the VPC. The following are valid values for this parameter:
<code>dedicated</code>, <code>default</code>, or <code>host</code>.
Because there are costs associated with changes in tenancy options, we
recommend that you research tenancy options before choosing them for
your instances. For more information about dedicated hosts, see <a
href="https://aws.amazon.com/ec2/dedicated-hosts/">Dedicated Hosts
Overview</a> and <a
href="https://aws.amazon.com/ec2/dedicated-hosts/">Amazon EC2 Dedicated
Hosts</a>. For more information about dedicated instances, see <a
href="https://docs.aws.amazon.com/vpc/latest/userguide/">Dedicated
Instances</a> and <a
href="https://aws.amazon.com/ec2/pricing/dedicated-instances/">Amazon
EC2 Dedicated Instances</a>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      InstanceId = "string"
    )

### Request syntax

    svc$create_instance(
      StackId = "string",
      LayerIds = list(
        "string"
      ),
      InstanceType = "string",
      AutoScalingType = "load"|"timer",
      Hostname = "string",
      Os = "string",
      AmiId = "string",
      SshKeyName = "string",
      AvailabilityZone = "string",
      VirtualizationType = "string",
      SubnetId = "string",
      Architecture = "x86_64"|"i386",
      RootDeviceType = "ebs"|"instance-store",
      BlockDeviceMappings = list(
        list(
          DeviceName = "string",
          NoDevice = "string",
          VirtualName = "string",
          Ebs = list(
            SnapshotId = "string",
            Iops = 123,
            VolumeSize = 123,
            VolumeType = "gp2"|"io1"|"standard",
            DeleteOnTermination = TRUE|FALSE
          )
        )
      ),
      InstallUpdatesOnBoot = TRUE|FALSE,
      EbsOptimized = TRUE|FALSE,
      AgentVersion = "string",
      Tenancy = "string"
    )
