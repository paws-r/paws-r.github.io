<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>opsworks_update_instance</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates a specified instance

### Description

Updates a specified instance.

**Required Permissions**: To use this action, an IAM user must have a
Manage permissions level for the stack, or an attached policy that
explicitly grants permissions. For more information on user permissions,
see [Managing User
Permissions](https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).

### Usage

    opsworks_update_instance(InstanceId, LayerIds, InstanceType,
      AutoScalingType, Hostname, Os, AmiId, SshKeyName, Architecture,
      InstallUpdatesOnBoot, EbsOptimized, AgentVersion)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="opsworks_update_instance_:_InstanceId">InstanceId</code></td>
<td><p>[required] The instance ID.</p></td>
</tr>
<tr class="even">
<td><code id="opsworks_update_instance_:_LayerIds">LayerIds</code></td>
<td><p>The instance's layer IDs.</p></td>
</tr>
<tr class="odd">
<td><code
id="opsworks_update_instance_:_InstanceType">InstanceType</code></td>
<td><p>The instance type, such as <code>t2.micro</code>. For a list of
supported instance types, open the stack in the console, choose
<strong>Instances</strong>, and choose <strong>+ Instance</strong>. The
<strong>Size</strong> list contains the currently supported types. For
more information, see <a
href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html">Instance
Families and Types</a>. The parameter values that you use to specify the
various types are in the <strong>API Name</strong> column of the
<strong>Available Instance Types</strong> table.</p></td>
</tr>
<tr class="even">
<td><code
id="opsworks_update_instance_:_AutoScalingType">AutoScalingType</code></td>
<td><p>For load-based or time-based instances, the type. Windows stacks
can use only time-based instances.</p></td>
</tr>
<tr class="odd">
<td><code id="opsworks_update_instance_:_Hostname">Hostname</code></td>
<td><p>The instance host name.</p></td>
</tr>
<tr class="even">
<td><code id="opsworks_update_instance_:_Os">Os</code></td>
<td><p>The instance's operating system, which must be set to one of the
following. You cannot update an instance that is using a custom AMI.</p>
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
</ul>
<p>For more information about supported operating systems, see <a
href="https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-os.html">AWS
OpsWorks Stacks Operating Systems</a>.</p>
<p>The default option is the current Amazon Linux version. If you set
this parameter to <code>Custom</code>, you must use the AmiId parameter
to specify the custom AMI that you want to use. For more information
about supported operating systems, see <a
href="https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-os.html">Operating
Systems</a>. For more information about how to use custom AMIs with
OpsWorks, see <a
href="https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-custom-ami.html">Using
Custom AMIs</a>.</p>
<p>You can specify a different Linux operating system for the updated
stack, but you cannot change from Linux to Windows or Windows to
Linux.</p></td>
</tr>
<tr class="odd">
<td><code id="opsworks_update_instance_:_AmiId">AmiId</code></td>
<td><p>The ID of the AMI that was used to create the instance. The value
of this parameter must be the same AMI ID that the instance is already
using. You cannot apply a new AMI to an instance by running
UpdateInstance. UpdateInstance does not work on instances that are using
custom AMIs.</p></td>
</tr>
<tr class="even">
<td><code
id="opsworks_update_instance_:_SshKeyName">SshKeyName</code></td>
<td><p>The instance's Amazon EC2 key name.</p></td>
</tr>
<tr class="odd">
<td><code
id="opsworks_update_instance_:_Architecture">Architecture</code></td>
<td><p>The instance architecture. Instance types do not necessarily
support both architectures. For a list of the architectures that are
supported by the different instance types, see <a
href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html">Instance
Families and Types</a>.</p></td>
</tr>
<tr class="even">
<td><code
id="opsworks_update_instance_:_InstallUpdatesOnBoot">InstallUpdatesOnBoot</code></td>
<td><p>Whether to install operating system and package updates when the
instance boots. The default value is <code>true</code>. To control when
updates are installed, set this value to <code>false</code>. You must
then update your instances manually by using
<code>create_deployment</code> to run the
<code>update_dependencies</code> stack command or by manually running
<code>yum</code> (Amazon Linux) or <code>apt-get</code> (Ubuntu) on the
instances.</p>
<p>We strongly recommend using the default value of <code>true</code>,
to ensure that your instances have the latest security updates.</p></td>
</tr>
<tr class="odd">
<td><code
id="opsworks_update_instance_:_EbsOptimized">EbsOptimized</code></td>
<td><p>This property cannot be updated.</p></td>
</tr>
<tr class="even">
<td><code
id="opsworks_update_instance_:_AgentVersion">AgentVersion</code></td>
<td><p>The default AWS OpsWorks Stacks agent version. You have the
following options:</p>
<ul>
<li><p><code>INHERIT</code> - Use the stack's default agent version
setting.</p></li>
<li><p><em>version_number</em> - Use the specified agent version. This
value overrides the stack's default setting. To update the agent
version, you must edit the instance configuration and specify a new
version. AWS OpsWorks Stacks then automatically installs that version on
the instance.</p></li>
</ul>
<p>The default setting is <code>INHERIT</code>. To specify an agent
version, you must use the complete version number, not the abbreviated
number shown on the console. For a list of available agent version
numbers, call <code>describe_agent_versions</code>.</p>
<p>AgentVersion cannot be set to Chef 12.2.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_instance(
      InstanceId = "string",
      LayerIds = list(
        "string"
      ),
      InstanceType = "string",
      AutoScalingType = "load"|"timer",
      Hostname = "string",
      Os = "string",
      AmiId = "string",
      SshKeyName = "string",
      Architecture = "x86_64"|"i386",
      InstallUpdatesOnBoot = TRUE|FALSE,
      EbsOptimized = TRUE|FALSE,
      AgentVersion = "string"
    )
