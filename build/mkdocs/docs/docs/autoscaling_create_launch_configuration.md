<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>autoscaling_create_launch_configuration</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a launch configuration

### Description

Creates a launch configuration.

If you exceed your maximum limit of launch configurations, the call
fails. To query this limit, call the `describe_account_limits` API. For
information about updating this limit, see [Quotas for Amazon EC2 Auto
Scaling](https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-quotas.html)
in the *Amazon EC2 Auto Scaling User Guide*.

For more information, see [Launch
configurations](https://docs.aws.amazon.com/autoscaling/ec2/userguide/launch-configurations.html)
in the *Amazon EC2 Auto Scaling User Guide*.

Amazon EC2 Auto Scaling configures instances launched as part of an Auto
Scaling group using either a launch template or a launch configuration.
We strongly recommend that you do not use launch configurations. They do
not provide full functionality for Amazon EC2 Auto Scaling or Amazon
EC2. For information about using launch templates, see [Launch
templates](https://docs.aws.amazon.com/autoscaling/ec2/userguide/launch-templates.html)
in the *Amazon EC2 Auto Scaling User Guide*.

### Usage

    autoscaling_create_launch_configuration(LaunchConfigurationName,
      ImageId, KeyName, SecurityGroups, ClassicLinkVPCId,
      ClassicLinkVPCSecurityGroups, UserData, InstanceId, InstanceType,
      KernelId, RamdiskId, BlockDeviceMappings, InstanceMonitoring, SpotPrice,
      IamInstanceProfile, EbsOptimized, AssociatePublicIpAddress,
      PlacementTenancy, MetadataOptions)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="autoscaling_create_launch_configuration_:_LaunchConfigurationName">LaunchConfigurationName</code></td>
<td><p>[required] The name of the launch configuration. This name must
be unique per Region per account.</p></td>
</tr>
<tr class="even">
<td><code
id="autoscaling_create_launch_configuration_:_ImageId">ImageId</code></td>
<td><p>The ID of the Amazon Machine Image (AMI) that was assigned during
registration. For more information, see <a
href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/finding-an-ami.html">Finding
a Linux AMI</a> in the <em>Amazon EC2 User Guide for Linux
Instances</em>.</p>
<p>If you specify <code>InstanceId</code>, an <code>ImageId</code> is
not required.</p></td>
</tr>
<tr class="odd">
<td><code
id="autoscaling_create_launch_configuration_:_KeyName">KeyName</code></td>
<td><p>The name of the key pair. For more information, see <a
href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-key-pairs.html">Amazon
EC2 key pairs and Linux instances</a> in the <em>Amazon EC2 User Guide
for Linux Instances</em>.</p></td>
</tr>
<tr class="even">
<td><code
id="autoscaling_create_launch_configuration_:_SecurityGroups">SecurityGroups</code></td>
<td><p>A list that contains the security group IDs to assign to the
instances in the Auto Scaling group. For more information, see <a
href="https://docs.aws.amazon.com/vpc/latest/userguide/vpc-security-groups.html">Control
traffic to resources using security groups</a> in the <em>Amazon Virtual
Private Cloud User Guide</em>.</p></td>
</tr>
<tr class="odd">
<td><code
id="autoscaling_create_launch_configuration_:_ClassicLinkVPCId">ClassicLinkVPCId</code></td>
<td><p>Available for backward compatibility.</p></td>
</tr>
<tr class="even">
<td><code
id="autoscaling_create_launch_configuration_:_ClassicLinkVPCSecurityGroups">ClassicLinkVPCSecurityGroups</code></td>
<td><p>Available for backward compatibility.</p></td>
</tr>
<tr class="odd">
<td><code
id="autoscaling_create_launch_configuration_:_UserData">UserData</code></td>
<td><p>The user data to make available to the launched EC2 instances.
For more information, see <a
href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-instance-metadata.html">Instance
metadata and user data</a> (Linux) and <a
href="https://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/ec2-instance-metadata.html">Instance
metadata and user data</a> (Windows). If you are using a command line
tool, base64-encoding is performed for you, and you can load the text
from a file. Otherwise, you must provide base64-encoded text. User data
is limited to 16 KB.</p></td>
</tr>
<tr class="even">
<td><code
id="autoscaling_create_launch_configuration_:_InstanceId">InstanceId</code></td>
<td><p>The ID of the instance to use to create the launch configuration.
The new launch configuration derives attributes from the instance,
except for the block device mapping.</p>
<p>To create a launch configuration with a block device mapping or
override any other instance attributes, specify them as part of the same
request.</p>
<p>For more information, see <a
href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/create-lc-with-instanceID.html">Creating
a launch configuration using an EC2 instance</a> in the <em>Amazon EC2
Auto Scaling User Guide</em>.</p></td>
</tr>
<tr class="odd">
<td><code
id="autoscaling_create_launch_configuration_:_InstanceType">InstanceType</code></td>
<td><p>Specifies the instance type of the EC2 instance. For information
about available instance types, see <a
href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html#AvailableInstanceTypes">Available
instance types</a> in the <em>Amazon EC2 User Guide for Linux
Instances</em>.</p>
<p>If you specify <code>InstanceId</code>, an <code>InstanceType</code>
is not required.</p></td>
</tr>
<tr class="even">
<td><code
id="autoscaling_create_launch_configuration_:_KernelId">KernelId</code></td>
<td><p>The ID of the kernel associated with the AMI.</p>
<p>We recommend that you use PV-GRUB instead of kernels and RAM disks.
For more information, see <a
href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/UserProvidedKernels.html">User
provided kernels</a> in the <em>Amazon EC2 User Guide for Linux
Instances</em>.</p></td>
</tr>
<tr class="odd">
<td><code
id="autoscaling_create_launch_configuration_:_RamdiskId">RamdiskId</code></td>
<td><p>The ID of the RAM disk to select.</p>
<p>We recommend that you use PV-GRUB instead of kernels and RAM disks.
For more information, see <a
href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/UserProvidedKernels.html">User
provided kernels</a> in the <em>Amazon EC2 User Guide for Linux
Instances</em>.</p></td>
</tr>
<tr class="even">
<td><code
id="autoscaling_create_launch_configuration_:_BlockDeviceMappings">BlockDeviceMappings</code></td>
<td><p>The block device mapping entries that define the block devices to
attach to the instances at launch. By default, the block devices
specified in the block device mapping for the AMI are used. For more
information, see <a
href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/block-device-mapping-concepts.html">Block
device mappings</a> in the <em>Amazon EC2 User Guide for Linux
Instances</em>.</p></td>
</tr>
<tr class="odd">
<td><code
id="autoscaling_create_launch_configuration_:_InstanceMonitoring">InstanceMonitoring</code></td>
<td><p>Controls whether instances in this group are launched with
detailed (<code>true</code>) or basic (<code>false</code>)
monitoring.</p>
<p>The default value is <code>true</code> (enabled).</p>
<p>When detailed monitoring is enabled, Amazon CloudWatch generates
metrics every minute and your account is charged a fee. When you disable
detailed monitoring, CloudWatch generates metrics every 5 minutes. For
more information, see <a
href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/enable-as-instance-metrics.html">Configure
Monitoring for Auto Scaling Instances</a> in the <em>Amazon EC2 Auto
Scaling User Guide</em>.</p></td>
</tr>
<tr class="even">
<td><code
id="autoscaling_create_launch_configuration_:_SpotPrice">SpotPrice</code></td>
<td><p>The maximum hourly price to be paid for any Spot Instance
launched to fulfill the request. Spot Instances are launched when the
price you specify exceeds the current Spot price. For more information,
see <a
href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/launch-template-spot-instances.html">Request
Spot Instances for fault-tolerant and flexible applications</a> in the
<em>Amazon EC2 Auto Scaling User Guide</em>.</p>
<p>Valid Range: Minimum value of 0.001</p>
<p>When you change your maximum price by creating a new launch
configuration, running instances will continue to run as long as the
maximum price for those running instances is higher than the current
Spot price.</p></td>
</tr>
<tr class="odd">
<td><code
id="autoscaling_create_launch_configuration_:_IamInstanceProfile">IamInstanceProfile</code></td>
<td><p>The name or the Amazon Resource Name (ARN) of the instance
profile associated with the IAM role for the instance. The instance
profile contains the IAM role. For more information, see <a
href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/us-iam-role.html">IAM
role for applications that run on Amazon EC2 instances</a> in the
<em>Amazon EC2 Auto Scaling User Guide</em>.</p></td>
</tr>
<tr class="even">
<td><code
id="autoscaling_create_launch_configuration_:_EbsOptimized">EbsOptimized</code></td>
<td><p>Specifies whether the launch configuration is optimized for EBS
I/O (<code>true</code>) or not (<code>false</code>). The optimization
provides dedicated throughput to Amazon EBS and an optimized
configuration stack to provide optimal I/O performance. This
optimization is not available with all instance types. Additional fees
are incurred when you enable EBS optimization for an instance type that
is not EBS-optimized by default. For more information, see <a
href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-optimized.html">Amazon
EBS-optimized instances</a> in the <em>Amazon EC2 User Guide for Linux
Instances</em>.</p>
<p>The default value is <code>false</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="autoscaling_create_launch_configuration_:_AssociatePublicIpAddress">AssociatePublicIpAddress</code></td>
<td><p>Specifies whether to assign a public IPv4 address to the group's
instances. If the instance is launched into a default subnet, the
default is to assign a public IPv4 address, unless you disabled the
option to assign a public IPv4 address on the subnet. If the instance is
launched into a nondefault subnet, the default is not to assign a public
IPv4 address, unless you enabled the option to assign a public IPv4
address on the subnet.</p>
<p>If you specify <code>true</code>, each instance in the Auto Scaling
group receives a unique public IPv4 address. For more information, see
<a
href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/asg-in-vpc.html">Launching
Auto Scaling instances in a VPC</a> in the <em>Amazon EC2 Auto Scaling
User Guide</em>.</p>
<p>If you specify this property, you must specify at least one subnet
for <code>VPCZoneIdentifier</code> when you create your group.</p></td>
</tr>
<tr class="even">
<td><code
id="autoscaling_create_launch_configuration_:_PlacementTenancy">PlacementTenancy</code></td>
<td><p>The tenancy of the instance, either <code>default</code> or
<code>dedicated</code>. An instance with <code>dedicated</code> tenancy
runs on isolated, single-tenant hardware and can only be launched into a
VPC. To launch dedicated instances into a shared tenancy VPC (a VPC with
the instance placement tenancy attribute set to <code>default</code>),
you must set the value of this property to <code>dedicated</code>. For
more information, see <a
href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/auto-scaling-dedicated-instances.html">Configuring
instance tenancy with Amazon EC2 Auto Scaling</a> in the <em>Amazon EC2
Auto Scaling User Guide</em>.</p>
<p>If you specify <code>PlacementTenancy</code>, you must specify at
least one subnet for <code>VPCZoneIdentifier</code> when you create your
group.</p>
<p>Valid values: <code>default</code> | <code>dedicated</code></p></td>
</tr>
<tr class="odd">
<td><code
id="autoscaling_create_launch_configuration_:_MetadataOptions">MetadataOptions</code></td>
<td><p>The metadata options for the instances. For more information, see
<a
href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/create-launch-config.html#launch-configurations-imds">Configuring
the Instance Metadata Options</a> in the <em>Amazon EC2 Auto Scaling
User Guide</em>.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$create_launch_configuration(
      LaunchConfigurationName = "string",
      ImageId = "string",
      KeyName = "string",
      SecurityGroups = list(
        "string"
      ),
      ClassicLinkVPCId = "string",
      ClassicLinkVPCSecurityGroups = list(
        "string"
      ),
      UserData = "string",
      InstanceId = "string",
      InstanceType = "string",
      KernelId = "string",
      RamdiskId = "string",
      BlockDeviceMappings = list(
        list(
          VirtualName = "string",
          DeviceName = "string",
          Ebs = list(
            SnapshotId = "string",
            VolumeSize = 123,
            VolumeType = "string",
            DeleteOnTermination = TRUE|FALSE,
            Iops = 123,
            Encrypted = TRUE|FALSE,
            Throughput = 123
          ),
          NoDevice = TRUE|FALSE
        )
      ),
      InstanceMonitoring = list(
        Enabled = TRUE|FALSE
      ),
      SpotPrice = "string",
      IamInstanceProfile = "string",
      EbsOptimized = TRUE|FALSE,
      AssociatePublicIpAddress = TRUE|FALSE,
      PlacementTenancy = "string",
      MetadataOptions = list(
        HttpTokens = "optional"|"required",
        HttpPutResponseHopLimit = 123,
        HttpEndpoint = "disabled"|"enabled"
      )
    )

### Examples

    ## Not run: 
    # This example creates a launch configuration.
    svc$create_launch_configuration(
      IamInstanceProfile = "my-iam-role",
      ImageId = "ami-12345678",
      InstanceType = "m3.medium",
      LaunchConfigurationName = "my-launch-config",
      SecurityGroups = list(
        "sg-eb2af88e"
      )
    )

    ## End(Not run)
