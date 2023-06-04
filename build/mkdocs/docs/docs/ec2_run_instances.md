<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_run_instances</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Launches the specified number of instances using an AMI for which you have permissions

### Description

Launches the specified number of instances using an AMI for which you
have permissions.

You can specify a number of options, or leave the default options. The
following rules apply:

-   If you don't specify a subnet ID, we choose a default subnet from
    your default VPC for you. If you don't have a default VPC, you must
    specify a subnet ID in the request.

-   All instances have a network interface with a primary private IPv4
    address. If you don't specify this address, we choose one from the
    IPv4 range of your subnet.

-   Not all instance types support IPv6 addresses. For more information,
    see [Instance
    types](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html).

-   If you don't specify a security group ID, we use the default
    security group. For more information, see [Security
    groups](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-security-groups.html).

-   If any of the AMIs have a product code attached for which the user
    has not subscribed, the request fails.

You can create a [launch
template](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-launch-templates.html),
which is a resource that contains the parameters to launch an instance.
When you launch an instance using `run_instances`, you can specify the
launch template instead of specifying the launch parameters.

To ensure faster instance launches, break up large requests into smaller
batches. For example, create five separate launch requests for 100
instances each instead of one launch request for 500 instances.

An instance is ready for you to use when it's in the `running` state.
You can check the state of your instance using `describe_instances`. You
can tag instances and EBS volumes during launch, after launch, or both.
For more information, see `create_tags` and [Tagging your Amazon EC2
resources](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Using_Tags.html).

Linux instances have access to the public key of the key pair at boot.
You can use this key to provide secure access to the instance. Amazon
EC2 public images use this feature to provide secure access without
passwords. For more information, see [Key
pairs](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-key-pairs.html).

For troubleshooting, see [What to do if an instance immediately
terminates](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/troubleshooting-launch.html#troubleshooting-launch-internal),
and [Troubleshooting connecting to your
instance](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/TroubleshootingInstancesConnecting.html).

### Usage

    ec2_run_instances(BlockDeviceMappings, ImageId, InstanceType,
      Ipv6AddressCount, Ipv6Addresses, KernelId, KeyName, MaxCount, MinCount,
      Monitoring, Placement, RamdiskId, SecurityGroupIds, SecurityGroups,
      SubnetId, UserData, AdditionalInfo, ClientToken, DisableApiTermination,
      DryRun, EbsOptimized, IamInstanceProfile,
      InstanceInitiatedShutdownBehavior, NetworkInterfaces, PrivateIpAddress,
      ElasticGpuSpecification, ElasticInferenceAccelerators,
      TagSpecifications, LaunchTemplate, InstanceMarketOptions,
      CreditSpecification, CpuOptions, CapacityReservationSpecification,
      HibernationOptions, LicenseSpecifications, MetadataOptions,
      EnclaveOptions, PrivateDnsNameOptions, MaintenanceOptions,
      DisableApiStop)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_run_instances_:_BlockDeviceMappings">BlockDeviceMappings</code></td>
<td><p>The block device mapping, which defines the EBS volumes and
instance store volumes to attach to the instance at launch. For more
information, see <a
href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/block-device-mapping-concepts.html">Block
device mappings</a> in the <em>Amazon EC2 User Guide</em>.</p></td>
</tr>
<tr class="even">
<td><code id="ec2_run_instances_:_ImageId">ImageId</code></td>
<td><p>The ID of the AMI. An AMI ID is required to launch an instance
and must be specified here or in a launch template.</p></td>
</tr>
<tr class="odd">
<td><code id="ec2_run_instances_:_InstanceType">InstanceType</code></td>
<td><p>The instance type. For more information, see <a
href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html">Instance
types</a> in the <em>Amazon EC2 User Guide</em>.</p>
<p>Default: <code>m1.small</code></p></td>
</tr>
<tr class="even">
<td><code
id="ec2_run_instances_:_Ipv6AddressCount">Ipv6AddressCount</code></td>
<td><p>The number of IPv6 addresses to associate with the primary
network interface. Amazon EC2 chooses the IPv6 addresses from the range
of your subnet. You cannot specify this option and the option to assign
specific IPv6 addresses in the same request. You can specify this option
if you've specified a minimum number of instances to launch.</p>
<p>You cannot specify this option and the network interfaces option in
the same request.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_run_instances_:_Ipv6Addresses">Ipv6Addresses</code></td>
<td><p>The IPv6 addresses from the range of the subnet to associate with
the primary network interface. You cannot specify this option and the
option to assign a number of IPv6 addresses in the same request. You
cannot specify this option if you've specified a minimum number of
instances to launch.</p>
<p>You cannot specify this option and the network interfaces option in
the same request.</p></td>
</tr>
<tr class="even">
<td><code id="ec2_run_instances_:_KernelId">KernelId</code></td>
<td><p>The ID of the kernel.</p>
<p>We recommend that you use PV-GRUB instead of kernels and RAM disks.
For more information, see <a
href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/UserProvidedKernels.html">PV-GRUB</a>
in the <em>Amazon EC2 User Guide</em>.</p></td>
</tr>
<tr class="odd">
<td><code id="ec2_run_instances_:_KeyName">KeyName</code></td>
<td><p>The name of the key pair. You can create a key pair using
<code>create_key_pair</code> or <code>import_key_pair</code>.</p>
<p>If you do not specify a key pair, you can't connect to the instance
unless you choose an AMI that is configured to allow users another way
to log in.</p></td>
</tr>
<tr class="even">
<td><code id="ec2_run_instances_:_MaxCount">MaxCount</code></td>
<td><p>[required] The maximum number of instances to launch. If you
specify more instances than Amazon EC2 can launch in the target
Availability Zone, Amazon EC2 launches the largest possible number of
instances above <code>MinCount</code>.</p>
<p>Constraints: Between 1 and the maximum number you're allowed for the
specified instance type. For more information about the default limits,
and how to request an increase, see <a
href="https://aws.amazon.com/ec2/faqs/#How_many_instances_can_I_run_in_Amazon_EC2">How
many instances can I run in Amazon EC2</a> in the Amazon EC2
FAQ.</p></td>
</tr>
<tr class="odd">
<td><code id="ec2_run_instances_:_MinCount">MinCount</code></td>
<td><p>[required] The minimum number of instances to launch. If you
specify a minimum that is more instances than Amazon EC2 can launch in
the target Availability Zone, Amazon EC2 launches no instances.</p>
<p>Constraints: Between 1 and the maximum number you're allowed for the
specified instance type. For more information about the default limits,
and how to request an increase, see <a
href="https://aws.amazon.com/ec2/faqs/#How_many_instances_can_I_run_in_Amazon_EC2">How
many instances can I run in Amazon EC2</a> in the Amazon EC2 General
FAQ.</p></td>
</tr>
<tr class="even">
<td><code id="ec2_run_instances_:_Monitoring">Monitoring</code></td>
<td><p>Specifies whether detailed monitoring is enabled for the
instance.</p></td>
</tr>
<tr class="odd">
<td><code id="ec2_run_instances_:_Placement">Placement</code></td>
<td><p>The placement for the instance.</p></td>
</tr>
<tr class="even">
<td><code id="ec2_run_instances_:_RamdiskId">RamdiskId</code></td>
<td><p>The ID of the RAM disk to select. Some kernels require additional
drivers at launch. Check the kernel requirements for information about
whether you need to specify a RAM disk. To find kernel requirements, go
to the Amazon Web Services Resource Center and search for the kernel
ID.</p>
<p>We recommend that you use PV-GRUB instead of kernels and RAM disks.
For more information, see <a
href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/UserProvidedKernels.html">PV-GRUB</a>
in the <em>Amazon EC2 User Guide</em>.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_run_instances_:_SecurityGroupIds">SecurityGroupIds</code></td>
<td><p>The IDs of the security groups. You can create a security group
using <code>create_security_group</code>.</p>
<p>If you specify a network interface, you must specify any security
groups as part of the network interface.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_run_instances_:_SecurityGroups">SecurityGroups</code></td>
<td><p>[Default VPC] The names of the security groups.</p>
<p>If you specify a network interface, you must specify any security
groups as part of the network interface.</p>
<p>Default: Amazon EC2 uses the default security group.</p></td>
</tr>
<tr class="odd">
<td><code id="ec2_run_instances_:_SubnetId">SubnetId</code></td>
<td><p>The ID of the subnet to launch the instance into.</p>
<p>If you specify a network interface, you must specify any subnets as
part of the network interface.</p></td>
</tr>
<tr class="even">
<td><code id="ec2_run_instances_:_UserData">UserData</code></td>
<td><p>The user data script to make available to the instance. For more
information, see <a
href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/user-data.html">Run
commands on your Linux instance at launch</a> and <a
href="https://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/ec2-windows-user-data.html">Run
commands on your Windows instance at launch</a>. If you are using a
command line tool, base64-encoding is performed for you, and you can
load the text from a file. Otherwise, you must provide base64-encoded
text. User data is limited to 16 KB.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_run_instances_:_AdditionalInfo">AdditionalInfo</code></td>
<td><p>Reserved.</p></td>
</tr>
<tr class="even">
<td><code id="ec2_run_instances_:_ClientToken">ClientToken</code></td>
<td><p>Unique, case-sensitive identifier you provide to ensure the
idempotency of the request. If you do not specify a client token, a
randomly generated token is used for the request to ensure
idempotency.</p>
<p>For more information, see <a
href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring
Idempotency</a>.</p>
<p>Constraints: Maximum 64 ASCII characters</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_run_instances_:_DisableApiTermination">DisableApiTermination</code></td>
<td><p>If you set this parameter to <code>true</code>, you can't
terminate the instance using the Amazon EC2 console, CLI, or API;
otherwise, you can. To change this attribute after launch, use
<code>modify_instance_attribute</code>. Alternatively, if you set
<code>InstanceInitiatedShutdownBehavior</code> to
<code>terminate</code>, you can terminate the instance by running the
shutdown command from the instance.</p>
<p>Default: <code>false</code></p></td>
</tr>
<tr class="even">
<td><code id="ec2_run_instances_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="odd">
<td><code id="ec2_run_instances_:_EbsOptimized">EbsOptimized</code></td>
<td><p>Indicates whether the instance is optimized for Amazon EBS I/O.
This optimization provides dedicated throughput to Amazon EBS and an
optimized configuration stack to provide optimal Amazon EBS I/O
performance. This optimization isn't available with all instance types.
Additional usage charges apply when using an EBS-optimized instance.</p>
<p>Default: <code>false</code></p></td>
</tr>
<tr class="even">
<td><code
id="ec2_run_instances_:_IamInstanceProfile">IamInstanceProfile</code></td>
<td><p>The name or Amazon Resource Name (ARN) of an IAM instance
profile.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_run_instances_:_InstanceInitiatedShutdownBehavior">InstanceInitiatedShutdownBehavior</code></td>
<td><p>Indicates whether an instance stops or terminates when you
initiate shutdown from the instance (using the operating system command
for system shutdown).</p>
<p>Default: <code>stop</code></p></td>
</tr>
<tr class="even">
<td><code
id="ec2_run_instances_:_NetworkInterfaces">NetworkInterfaces</code></td>
<td><p>The network interfaces to associate with the instance. If you
specify a network interface, you must specify any security groups and
subnets as part of the network interface.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_run_instances_:_PrivateIpAddress">PrivateIpAddress</code></td>
<td><p>The primary IPv4 address. You must specify a value from the IPv4
address range of the subnet.</p>
<p>Only one private IP address can be designated as primary. You can't
specify this option if you've specified the option to designate a
private IP address as the primary IP address in a network interface
specification. You cannot specify this option if you're launching more
than one instance in the request.</p>
<p>You cannot specify this option and the network interfaces option in
the same request.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_run_instances_:_ElasticGpuSpecification">ElasticGpuSpecification</code></td>
<td><p>An elastic GPU to associate with the instance. An Elastic GPU is
a GPU resource that you can attach to your Windows instance to
accelerate the graphics performance of your applications. For more
information, see <a
href="https://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/elastic-graphics.html">Amazon
EC2 Elastic GPUs</a> in the <em>Amazon EC2 User Guide</em>.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_run_instances_:_ElasticInferenceAccelerators">ElasticInferenceAccelerators</code></td>
<td><p>An elastic inference accelerator to associate with the instance.
Elastic inference accelerators are a resource you can attach to your
Amazon EC2 instances to accelerate your Deep Learning (DL) inference
workloads.</p>
<p>You cannot specify accelerators from different generations in the
same request.</p>
<p>Starting April 15, 2023, Amazon Web Services will not onboard new
customers to Amazon Elastic Inference (EI), and will help current
customers migrate their workloads to options that offer better price and
performance. After April 15, 2023, new customers will not be able to
launch instances with Amazon EI accelerators in Amazon SageMaker, Amazon
ECS, or Amazon EC2. However, customers who have used Amazon EI at least
once during the past 30-day period are considered current customers and
will be able to continue using the service.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_run_instances_:_TagSpecifications">TagSpecifications</code></td>
<td><p>The tags to apply to the resources that are created during
instance launch.</p>
<p>You can specify tags for the following resources only:</p>
<ul>
<li><p>Instances</p></li>
<li><p>Volumes</p></li>
<li><p>Elastic graphics</p></li>
<li><p>Spot Instance requests</p></li>
<li><p>Network interfaces</p></li>
</ul>
<p>To tag a resource after it has been created, see
<code>create_tags</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_run_instances_:_LaunchTemplate">LaunchTemplate</code></td>
<td><p>The launch template to use to launch the instances. Any
parameters that you specify in <code>run_instances</code> override the
same parameters in the launch template. You can specify either the name
or ID of a launch template, but not both.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_run_instances_:_InstanceMarketOptions">InstanceMarketOptions</code></td>
<td><p>The market (purchasing) option for the instances.</p>
<p>For <code>run_instances</code>, persistent Spot Instance requests are
only supported when <strong>InstanceInterruptionBehavior</strong> is set
to either <code>hibernate</code> or <code>stop</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_run_instances_:_CreditSpecification">CreditSpecification</code></td>
<td><p>The credit option for CPU usage of the burstable performance
instance. Valid values are <code>standard</code> and
<code>unlimited</code>. To change this attribute after launch, use <a
href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_ModifyInstanceCreditSpecification.html">ModifyInstanceCreditSpecification</a>.
For more information, see <a
href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/burstable-performance-instances.html">Burstable
performance instances</a> in the <em>Amazon EC2 User Guide</em>.</p>
<p>Default: <code>standard</code> (T2 instances) or
<code>unlimited</code> (T3/T3a/T4g instances)</p>
<p>For T3 instances with <code>host</code> tenancy, only
<code>standard</code> is supported.</p></td>
</tr>
<tr class="even">
<td><code id="ec2_run_instances_:_CpuOptions">CpuOptions</code></td>
<td><p>The CPU options for the instance. For more information, see <a
href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-optimize-cpu.html">Optimize
CPU options</a> in the <em>Amazon EC2 User Guide</em>.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_run_instances_:_CapacityReservationSpecification">CapacityReservationSpecification</code></td>
<td><p>Information about the Capacity Reservation targeting option. If
you do not specify this parameter, the instance's Capacity Reservation
preference defaults to <code>open</code>, which enables it to run in any
open Capacity Reservation that has matching attributes (instance type,
platform, Availability Zone).</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_run_instances_:_HibernationOptions">HibernationOptions</code></td>
<td><p>Indicates whether an instance is enabled for hibernation. For
more information, see <a
href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Hibernate.html">Hibernate
your instance</a> in the <em>Amazon EC2 User Guide</em>.</p>
<p>You can't enable hibernation and Amazon Web Services Nitro Enclaves
on the same instance.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_run_instances_:_LicenseSpecifications">LicenseSpecifications</code></td>
<td><p>The license configurations.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_run_instances_:_MetadataOptions">MetadataOptions</code></td>
<td><p>The metadata options for the instance. For more information, see
<a
href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-instance-metadata.html">Instance
metadata and user data</a>.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_run_instances_:_EnclaveOptions">EnclaveOptions</code></td>
<td><p>Indicates whether the instance is enabled for Amazon Web Services
Nitro Enclaves. For more information, see <a
href="https://docs.aws.amazon.com/enclaves/latest/user/nitro-enclave.html">What
is Amazon Web Services Nitro Enclaves?</a> in the <em>Amazon Web
Services Nitro Enclaves User Guide</em>.</p>
<p>You can't enable Amazon Web Services Nitro Enclaves and hibernation
on the same instance.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_run_instances_:_PrivateDnsNameOptions">PrivateDnsNameOptions</code></td>
<td><p>The options for the instance hostname. The default values are
inherited from the subnet.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_run_instances_:_MaintenanceOptions">MaintenanceOptions</code></td>
<td><p>The maintenance and recovery options for the instance.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_run_instances_:_DisableApiStop">DisableApiStop</code></td>
<td><p>Indicates whether an instance is enabled for stop protection. For
more information, see <a
href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Stop_Start.html#Using_StopProtection">Stop
protection</a>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Groups = list(
        list(
          GroupName = "string",
          GroupId = "string"
        )
      ),
      Instances = list(
        list(
          AmiLaunchIndex = 123,
          ImageId = "string",
          InstanceId = "string",
          InstanceType = "a1.medium"|"a1.large"|"a1.xlarge"|"a1.2xlarge"|"a1.4xlarge"|"a1.metal"|"c1.medium"|"c1.xlarge"|"c3.large"|"c3.xlarge"|"c3.2xlarge"|"c3.4xlarge"|"c3.8xlarge"|"c4.large"|"c4.xlarge"|"c4.2xlarge"|"c4.4xlarge"|"c4.8xlarge"|"c5.large"|"c5.xlarge"|"c5.2xlarge"|"c5.4xlarge"|"c5.9xlarge"|"c5.12xlarge"|"c5.18xlarge"|"c5.24xlarge"|"c5.metal"|"c5a.large"|"c5a.xlarge"|"c5a.2xlarge"|"c5a.4xlarge"|"c5a.8xlarge"|"c5a.12xlarge"|"c5a.16xlarge"|"c5a.24xlarge"|"c5ad.large"|"c5ad.xlarge"|"c5ad.2xlarge"|"c5ad.4xlarge"|"c5ad.8xlarge"|"c5ad.12xlarge"|"c5ad.16xlarge"|"c5ad.24xlarge"|"c5d.large"|"c5d.xlarge"|"c5d.2xlarge"|"c5d.4xlarge"|"c5d.9xlarge"|"c5d.12xlarge"|"c5d.18xlarge"|"c5d.24xlarge"|"c5d.metal"|"c5n.large"|"c5n.xlarge"|"c5n.2xlarge"|"c5n.4xlarge"|"c5n.9xlarge"|"c5n.18xlarge"|"c5n.metal"|"c6g.medium"|"c6g.large"|"c6g.xlarge"|"c6g.2xlarge"|"c6g.4xlarge"|"c6g.8xlarge"|"c6g.12xlarge"|"c6g.16xlarge"|"c6g.metal"|"c6gd.medium"|"c6gd.large"|"c6gd.xlarge"|"c6gd.2xlarge"|"c6gd.4xlarge"|"c6gd.8xlarge"|"c6gd.12xlarge"|"c6gd.16xlarge"|"c6gd.metal"|"c6gn.medium"|"c6gn.large"|"c6gn.xlarge"|"c6gn.2xlarge"|"c6gn.4xlarge"|"c6gn.8xlarge"|"c6gn.12xlarge"|"c6gn.16xlarge"|"c6i.large"|"c6i.xlarge"|"c6i.2xlarge"|"c6i.4xlarge"|"c6i.8xlarge"|"c6i.12xlarge"|"c6i.16xlarge"|"c6i.24xlarge"|"c6i.32xlarge"|"c6i.metal"|"cc1.4xlarge"|"cc2.8xlarge"|"cg1.4xlarge"|"cr1.8xlarge"|"d2.xlarge"|"d2.2xlarge"|"d2.4xlarge"|"d2.8xlarge"|"d3.xlarge"|"d3.2xlarge"|"d3.4xlarge"|"d3.8xlarge"|"d3en.xlarge"|"d3en.2xlarge"|"d3en.4xlarge"|"d3en.6xlarge"|"d3en.8xlarge"|"d3en.12xlarge"|"dl1.24xlarge"|"f1.2xlarge"|"f1.4xlarge"|"f1.16xlarge"|"g2.2xlarge"|"g2.8xlarge"|"g3.4xlarge"|"g3.8xlarge"|"g3.16xlarge"|"g3s.xlarge"|"g4ad.xlarge"|"g4ad.2xlarge"|"g4ad.4xlarge"|"g4ad.8xlarge"|"g4ad.16xlarge"|"g4dn.xlarge"|"g4dn.2xlarge"|"g4dn.4xlarge"|"g4dn.8xlarge"|"g4dn.12xlarge"|"g4dn.16xlarge"|"g4dn.metal"|"g5.xlarge"|"g5.2xlarge"|"g5.4xlarge"|"g5.8xlarge"|"g5.12xlarge"|"g5.16xlarge"|"g5.24xlarge"|"g5.48xlarge"|"g5g.xlarge"|"g5g.2xlarge"|"g5g.4xlarge"|"g5g.8xlarge"|"g5g.16xlarge"|"g5g.metal"|"hi1.4xlarge"|"hpc6a.48xlarge"|"hs1.8xlarge"|"h1.2xlarge"|"h1.4xlarge"|"h1.8xlarge"|"h1.16xlarge"|"i2.xlarge"|"i2.2xlarge"|"i2.4xlarge"|"i2.8xlarge"|"i3.large"|"i3.xlarge"|"i3.2xlarge"|"i3.4xlarge"|"i3.8xlarge"|"i3.16xlarge"|"i3.metal"|"i3en.large"|"i3en.xlarge"|"i3en.2xlarge"|"i3en.3xlarge"|"i3en.6xlarge"|"i3en.12xlarge"|"i3en.24xlarge"|"i3en.metal"|"im4gn.large"|"im4gn.xlarge"|"im4gn.2xlarge"|"im4gn.4xlarge"|"im4gn.8xlarge"|"im4gn.16xlarge"|"inf1.xlarge"|"inf1.2xlarge"|"inf1.6xlarge"|"inf1.24xlarge"|"is4gen.medium"|"is4gen.large"|"is4gen.xlarge"|"is4gen.2xlarge"|"is4gen.4xlarge"|"is4gen.8xlarge"|"m1.small"|"m1.medium"|"m1.large"|"m1.xlarge"|"m2.xlarge"|"m2.2xlarge"|"m2.4xlarge"|"m3.medium"|"m3.large"|"m3.xlarge"|"m3.2xlarge"|"m4.large"|"m4.xlarge"|"m4.2xlarge"|"m4.4xlarge"|"m4.10xlarge"|"m4.16xlarge"|"m5.large"|"m5.xlarge"|"m5.2xlarge"|"m5.4xlarge"|"m5.8xlarge"|"m5.12xlarge"|"m5.16xlarge"|"m5.24xlarge"|"m5.metal"|"m5a.large"|"m5a.xlarge"|"m5a.2xlarge"|"m5a.4xlarge"|"m5a.8xlarge"|"m5a.12xlarge"|"m5a.16xlarge"|"m5a.24xlarge"|"m5ad.large"|"m5ad.xlarge"|"m5ad.2xlarge"|"m5ad.4xlarge"|"m5ad.8xlarge"|"m5ad.12xlarge"|"m5ad.16xlarge"|"m5ad.24xlarge"|"m5d.large"|"m5d.xlarge"|"m5d.2xlarge"|"m5d.4xlarge"|"m5d.8xlarge"|"m5d.12xlarge"|"m5d.16xlarge"|"m5d.24xlarge"|"m5d.metal"|"m5dn.large"|"m5dn.xlarge"|"m5dn.2xlarge"|"m5dn.4xlarge"|"m5dn.8xlarge"|"m5dn.12xlarge"|"m5dn.16xlarge"|"m5dn.24xlarge"|"m5dn.metal"|"m5n.large"|"m5n.xlarge"|"m5n.2xlarge"|"m5n.4xlarge"|"m5n.8xlarge"|"m5n.12xlarge"|"m5n.16xlarge"|"m5n.24xlarge"|"m5n.metal"|"m5zn.large"|"m5zn.xlarge"|"m5zn.2xlarge"|"m5zn.3xlarge"|"m5zn.6xlarge"|"m5zn.12xlarge"|"m5zn.metal"|"m6a.large"|"m6a.xlarge"|"m6a.2xlarge"|"m6a.4xlarge"|"m6a.8xlarge"|"m6a.12xlarge"|"m6a.16xlarge"|"m6a.24xlarge"|"m6a.32xlarge"|"m6a.48xlarge"|"m6g.metal"|"m6g.medium"|"m6g.large"|"m6g.xlarge"|"m6g.2xlarge"|"m6g.4xlarge"|"m6g.8xlarge"|"m6g.12xlarge"|"m6g.16xlarge"|"m6gd.metal"|"m6gd.medium"|"m6gd.large"|"m6gd.xlarge"|"m6gd.2xlarge"|"m6gd.4xlarge"|"m6gd.8xlarge"|"m6gd.12xlarge"|"m6gd.16xlarge"|"m6i.large"|"m6i.xlarge"|"m6i.2xlarge"|"m6i.4xlarge"|"m6i.8xlarge"|"m6i.12xlarge"|"m6i.16xlarge"|"m6i.24xlarge"|"m6i.32xlarge"|"m6i.metal"|"mac1.metal"|"p2.xlarge"|"p2.8xlarge"|"p2.16xlarge"|"p3.2xlarge"|"p3.8xlarge"|"p3.16xlarge"|"p3dn.24xlarge"|"p4d.24xlarge"|"r3.large"|"r3.xlarge"|"r3.2xlarge"|"r3.4xlarge"|"r3.8xlarge"|"r4.large"|"r4.xlarge"|"r4.2xlarge"|"r4.4xlarge"|"r4.8xlarge"|"r4.16xlarge"|"r5.large"|"r5.xlarge"|"r5.2xlarge"|"r5.4xlarge"|"r5.8xlarge"|"r5.12xlarge"|"r5.16xlarge"|"r5.24xlarge"|"r5.metal"|"r5a.large"|"r5a.xlarge"|"r5a.2xlarge"|"r5a.4xlarge"|"r5a.8xlarge"|"r5a.12xlarge"|"r5a.16xlarge"|"r5a.24xlarge"|"r5ad.large"|"r5ad.xlarge"|"r5ad.2xlarge"|"r5ad.4xlarge"|"r5ad.8xlarge"|"r5ad.12xlarge"|"r5ad.16xlarge"|"r5ad.24xlarge"|"r5b.large"|"r5b.xlarge"|"r5b.2xlarge"|"r5b.4xlarge"|"r5b.8xlarge"|"r5b.12xlarge"|"r5b.16xlarge"|"r5b.24xlarge"|"r5b.metal"|"r5d.large"|"r5d.xlarge"|"r5d.2xlarge"|"r5d.4xlarge"|"r5d.8xlarge"|"r5d.12xlarge"|"r5d.16xlarge"|"r5d.24xlarge"|"r5d.metal"|"r5dn.large"|"r5dn.xlarge"|"r5dn.2xlarge"|"r5dn.4xlarge"|"r5dn.8xlarge"|"r5dn.12xlarge"|"r5dn.16xlarge"|"r5dn.24xlarge"|"r5dn.metal"|"r5n.large"|"r5n.xlarge"|"r5n.2xlarge"|"r5n.4xlarge"|"r5n.8xlarge"|"r5n.12xlarge"|"r5n.16xlarge"|"r5n.24xlarge"|"r5n.metal"|"r6g.medium"|"r6g.large"|"r6g.xlarge"|"r6g.2xlarge"|"r6g.4xlarge"|"r6g.8xlarge"|"r6g.12xlarge"|"r6g.16xlarge"|"r6g.metal"|"r6gd.medium"|"r6gd.large"|"r6gd.xlarge"|"r6gd.2xlarge"|"r6gd.4xlarge"|"r6gd.8xlarge"|"r6gd.12xlarge"|"r6gd.16xlarge"|"r6gd.metal"|"r6i.large"|"r6i.xlarge"|"r6i.2xlarge"|"r6i.4xlarge"|"r6i.8xlarge"|"r6i.12xlarge"|"r6i.16xlarge"|"r6i.24xlarge"|"r6i.32xlarge"|"r6i.metal"|"t1.micro"|"t2.nano"|"t2.micro"|"t2.small"|"t2.medium"|"t2.large"|"t2.xlarge"|"t2.2xlarge"|"t3.nano"|"t3.micro"|"t3.small"|"t3.medium"|"t3.large"|"t3.xlarge"|"t3.2xlarge"|"t3a.nano"|"t3a.micro"|"t3a.small"|"t3a.medium"|"t3a.large"|"t3a.xlarge"|"t3a.2xlarge"|"t4g.nano"|"t4g.micro"|"t4g.small"|"t4g.medium"|"t4g.large"|"t4g.xlarge"|"t4g.2xlarge"|"u-6tb1.56xlarge"|"u-6tb1.112xlarge"|"u-9tb1.112xlarge"|"u-12tb1.112xlarge"|"u-6tb1.metal"|"u-9tb1.metal"|"u-12tb1.metal"|"u-18tb1.metal"|"u-24tb1.metal"|"vt1.3xlarge"|"vt1.6xlarge"|"vt1.24xlarge"|"x1.16xlarge"|"x1.32xlarge"|"x1e.xlarge"|"x1e.2xlarge"|"x1e.4xlarge"|"x1e.8xlarge"|"x1e.16xlarge"|"x1e.32xlarge"|"x2iezn.2xlarge"|"x2iezn.4xlarge"|"x2iezn.6xlarge"|"x2iezn.8xlarge"|"x2iezn.12xlarge"|"x2iezn.metal"|"x2gd.medium"|"x2gd.large"|"x2gd.xlarge"|"x2gd.2xlarge"|"x2gd.4xlarge"|"x2gd.8xlarge"|"x2gd.12xlarge"|"x2gd.16xlarge"|"x2gd.metal"|"z1d.large"|"z1d.xlarge"|"z1d.2xlarge"|"z1d.3xlarge"|"z1d.6xlarge"|"z1d.12xlarge"|"z1d.metal"|"x2idn.16xlarge"|"x2idn.24xlarge"|"x2idn.32xlarge"|"x2iedn.xlarge"|"x2iedn.2xlarge"|"x2iedn.4xlarge"|"x2iedn.8xlarge"|"x2iedn.16xlarge"|"x2iedn.24xlarge"|"x2iedn.32xlarge"|"c6a.large"|"c6a.xlarge"|"c6a.2xlarge"|"c6a.4xlarge"|"c6a.8xlarge"|"c6a.12xlarge"|"c6a.16xlarge"|"c6a.24xlarge"|"c6a.32xlarge"|"c6a.48xlarge"|"c6a.metal"|"m6a.metal"|"i4i.large"|"i4i.xlarge"|"i4i.2xlarge"|"i4i.4xlarge"|"i4i.8xlarge"|"i4i.16xlarge"|"i4i.32xlarge"|"i4i.metal"|"x2idn.metal"|"x2iedn.metal"|"c7g.medium"|"c7g.large"|"c7g.xlarge"|"c7g.2xlarge"|"c7g.4xlarge"|"c7g.8xlarge"|"c7g.12xlarge"|"c7g.16xlarge"|"mac2.metal"|"c6id.large"|"c6id.xlarge"|"c6id.2xlarge"|"c6id.4xlarge"|"c6id.8xlarge"|"c6id.12xlarge"|"c6id.16xlarge"|"c6id.24xlarge"|"c6id.32xlarge"|"c6id.metal"|"m6id.large"|"m6id.xlarge"|"m6id.2xlarge"|"m6id.4xlarge"|"m6id.8xlarge"|"m6id.12xlarge"|"m6id.16xlarge"|"m6id.24xlarge"|"m6id.32xlarge"|"m6id.metal"|"r6id.large"|"r6id.xlarge"|"r6id.2xlarge"|"r6id.4xlarge"|"r6id.8xlarge"|"r6id.12xlarge"|"r6id.16xlarge"|"r6id.24xlarge"|"r6id.32xlarge"|"r6id.metal"|"r6a.large"|"r6a.xlarge"|"r6a.2xlarge"|"r6a.4xlarge"|"r6a.8xlarge"|"r6a.12xlarge"|"r6a.16xlarge"|"r6a.24xlarge"|"r6a.32xlarge"|"r6a.48xlarge"|"r6a.metal"|"p4de.24xlarge"|"u-3tb1.56xlarge"|"u-18tb1.112xlarge"|"u-24tb1.112xlarge"|"trn1.2xlarge"|"trn1.32xlarge"|"hpc6id.32xlarge"|"c6in.large"|"c6in.xlarge"|"c6in.2xlarge"|"c6in.4xlarge"|"c6in.8xlarge"|"c6in.12xlarge"|"c6in.16xlarge"|"c6in.24xlarge"|"c6in.32xlarge"|"m6in.large"|"m6in.xlarge"|"m6in.2xlarge"|"m6in.4xlarge"|"m6in.8xlarge"|"m6in.12xlarge"|"m6in.16xlarge"|"m6in.24xlarge"|"m6in.32xlarge"|"m6idn.large"|"m6idn.xlarge"|"m6idn.2xlarge"|"m6idn.4xlarge"|"m6idn.8xlarge"|"m6idn.12xlarge"|"m6idn.16xlarge"|"m6idn.24xlarge"|"m6idn.32xlarge"|"r6in.large"|"r6in.xlarge"|"r6in.2xlarge"|"r6in.4xlarge"|"r6in.8xlarge"|"r6in.12xlarge"|"r6in.16xlarge"|"r6in.24xlarge"|"r6in.32xlarge"|"r6idn.large"|"r6idn.xlarge"|"r6idn.2xlarge"|"r6idn.4xlarge"|"r6idn.8xlarge"|"r6idn.12xlarge"|"r6idn.16xlarge"|"r6idn.24xlarge"|"r6idn.32xlarge"|"c7g.metal"|"m7g.medium"|"m7g.large"|"m7g.xlarge"|"m7g.2xlarge"|"m7g.4xlarge"|"m7g.8xlarge"|"m7g.12xlarge"|"m7g.16xlarge"|"m7g.metal"|"r7g.medium"|"r7g.large"|"r7g.xlarge"|"r7g.2xlarge"|"r7g.4xlarge"|"r7g.8xlarge"|"r7g.12xlarge"|"r7g.16xlarge"|"r7g.metal"|"c6in.metal"|"m6in.metal"|"m6idn.metal"|"r6in.metal"|"r6idn.metal"|"inf2.xlarge"|"inf2.8xlarge"|"inf2.24xlarge"|"inf2.48xlarge"|"trn1n.32xlarge"|"i4g.large"|"i4g.xlarge"|"i4g.2xlarge"|"i4g.4xlarge"|"i4g.8xlarge"|"i4g.16xlarge",
          KernelId = "string",
          KeyName = "string",
          LaunchTime = as.POSIXct(
            "2015-01-01"
          ),
          Monitoring = list(
            State = "disabled"|"disabling"|"enabled"|"pending"
          ),
          Placement = list(
            AvailabilityZone = "string",
            Affinity = "string",
            GroupName = "string",
            PartitionNumber = 123,
            HostId = "string",
            Tenancy = "default"|"dedicated"|"host",
            SpreadDomain = "string",
            HostResourceGroupArn = "string",
            GroupId = "string"
          ),
          Platform = "Windows",
          PrivateDnsName = "string",
          PrivateIpAddress = "string",
          ProductCodes = list(
            list(
              ProductCodeId = "string",
              ProductCodeType = "devpay"|"marketplace"
            )
          ),
          PublicDnsName = "string",
          PublicIpAddress = "string",
          RamdiskId = "string",
          State = list(
            Code = 123,
            Name = "pending"|"running"|"shutting-down"|"terminated"|"stopping"|"stopped"
          ),
          StateTransitionReason = "string",
          SubnetId = "string",
          VpcId = "string",
          Architecture = "i386"|"x86_64"|"arm64"|"x86_64_mac"|"arm64_mac",
          BlockDeviceMappings = list(
            list(
              DeviceName = "string",
              Ebs = list(
                AttachTime = as.POSIXct(
                  "2015-01-01"
                ),
                DeleteOnTermination = TRUE|FALSE,
                Status = "attaching"|"attached"|"detaching"|"detached",
                VolumeId = "string"
              )
            )
          ),
          ClientToken = "string",
          EbsOptimized = TRUE|FALSE,
          EnaSupport = TRUE|FALSE,
          Hypervisor = "ovm"|"xen",
          IamInstanceProfile = list(
            Arn = "string",
            Id = "string"
          ),
          InstanceLifecycle = "spot"|"scheduled",
          ElasticGpuAssociations = list(
            list(
              ElasticGpuId = "string",
              ElasticGpuAssociationId = "string",
              ElasticGpuAssociationState = "string",
              ElasticGpuAssociationTime = "string"
            )
          ),
          ElasticInferenceAcceleratorAssociations = list(
            list(
              ElasticInferenceAcceleratorArn = "string",
              ElasticInferenceAcceleratorAssociationId = "string",
              ElasticInferenceAcceleratorAssociationState = "string",
              ElasticInferenceAcceleratorAssociationTime = as.POSIXct(
                "2015-01-01"
              )
            )
          ),
          NetworkInterfaces = list(
            list(
              Association = list(
                CarrierIp = "string",
                CustomerOwnedIp = "string",
                IpOwnerId = "string",
                PublicDnsName = "string",
                PublicIp = "string"
              ),
              Attachment = list(
                AttachTime = as.POSIXct(
                  "2015-01-01"
                ),
                AttachmentId = "string",
                DeleteOnTermination = TRUE|FALSE,
                DeviceIndex = 123,
                Status = "attaching"|"attached"|"detaching"|"detached",
                NetworkCardIndex = 123
              ),
              Description = "string",
              Groups = list(
                list(
                  GroupName = "string",
                  GroupId = "string"
                )
              ),
              Ipv6Addresses = list(
                list(
                  Ipv6Address = "string"
                )
              ),
              MacAddress = "string",
              NetworkInterfaceId = "string",
              OwnerId = "string",
              PrivateDnsName = "string",
              PrivateIpAddress = "string",
              PrivateIpAddresses = list(
                list(
                  Association = list(
                    CarrierIp = "string",
                    CustomerOwnedIp = "string",
                    IpOwnerId = "string",
                    PublicDnsName = "string",
                    PublicIp = "string"
                  ),
                  Primary = TRUE|FALSE,
                  PrivateDnsName = "string",
                  PrivateIpAddress = "string"
                )
              ),
              SourceDestCheck = TRUE|FALSE,
              Status = "available"|"associated"|"attaching"|"in-use"|"detaching",
              SubnetId = "string",
              VpcId = "string",
              InterfaceType = "string",
              Ipv4Prefixes = list(
                list(
                  Ipv4Prefix = "string"
                )
              ),
              Ipv6Prefixes = list(
                list(
                  Ipv6Prefix = "string"
                )
              )
            )
          ),
          OutpostArn = "string",
          RootDeviceName = "string",
          RootDeviceType = "ebs"|"instance-store",
          SecurityGroups = list(
            list(
              GroupName = "string",
              GroupId = "string"
            )
          ),
          SourceDestCheck = TRUE|FALSE,
          SpotInstanceRequestId = "string",
          SriovNetSupport = "string",
          StateReason = list(
            Code = "string",
            Message = "string"
          ),
          Tags = list(
            list(
              Key = "string",
              Value = "string"
            )
          ),
          VirtualizationType = "hvm"|"paravirtual",
          CpuOptions = list(
            CoreCount = 123,
            ThreadsPerCore = 123,
            AmdSevSnp = "enabled"|"disabled"
          ),
          CapacityReservationId = "string",
          CapacityReservationSpecification = list(
            CapacityReservationPreference = "open"|"none",
            CapacityReservationTarget = list(
              CapacityReservationId = "string",
              CapacityReservationResourceGroupArn = "string"
            )
          ),
          HibernationOptions = list(
            Configured = TRUE|FALSE
          ),
          Licenses = list(
            list(
              LicenseConfigurationArn = "string"
            )
          ),
          MetadataOptions = list(
            State = "pending"|"applied",
            HttpTokens = "optional"|"required",
            HttpPutResponseHopLimit = 123,
            HttpEndpoint = "disabled"|"enabled",
            HttpProtocolIpv6 = "disabled"|"enabled",
            InstanceMetadataTags = "disabled"|"enabled"
          ),
          EnclaveOptions = list(
            Enabled = TRUE|FALSE
          ),
          BootMode = "legacy-bios"|"uefi"|"uefi-preferred",
          PlatformDetails = "string",
          UsageOperation = "string",
          UsageOperationUpdateTime = as.POSIXct(
            "2015-01-01"
          ),
          PrivateDnsNameOptions = list(
            HostnameType = "ip-name"|"resource-name",
            EnableResourceNameDnsARecord = TRUE|FALSE,
            EnableResourceNameDnsAAAARecord = TRUE|FALSE
          ),
          Ipv6Address = "string",
          TpmSupport = "string",
          MaintenanceOptions = list(
            AutoRecovery = "disabled"|"default"
          ),
          CurrentInstanceBootMode = "legacy-bios"|"uefi"
        )
      ),
      OwnerId = "string",
      RequesterId = "string",
      ReservationId = "string"
    )

### Request syntax

    svc$run_instances(
      BlockDeviceMappings = list(
        list(
          DeviceName = "string",
          VirtualName = "string",
          Ebs = list(
            DeleteOnTermination = TRUE|FALSE,
            Iops = 123,
            SnapshotId = "string",
            VolumeSize = 123,
            VolumeType = "standard"|"io1"|"io2"|"gp2"|"sc1"|"st1"|"gp3",
            KmsKeyId = "string",
            Throughput = 123,
            OutpostArn = "string",
            Encrypted = TRUE|FALSE
          ),
          NoDevice = "string"
        )
      ),
      ImageId = "string",
      InstanceType = "a1.medium"|"a1.large"|"a1.xlarge"|"a1.2xlarge"|"a1.4xlarge"|"a1.metal"|"c1.medium"|"c1.xlarge"|"c3.large"|"c3.xlarge"|"c3.2xlarge"|"c3.4xlarge"|"c3.8xlarge"|"c4.large"|"c4.xlarge"|"c4.2xlarge"|"c4.4xlarge"|"c4.8xlarge"|"c5.large"|"c5.xlarge"|"c5.2xlarge"|"c5.4xlarge"|"c5.9xlarge"|"c5.12xlarge"|"c5.18xlarge"|"c5.24xlarge"|"c5.metal"|"c5a.large"|"c5a.xlarge"|"c5a.2xlarge"|"c5a.4xlarge"|"c5a.8xlarge"|"c5a.12xlarge"|"c5a.16xlarge"|"c5a.24xlarge"|"c5ad.large"|"c5ad.xlarge"|"c5ad.2xlarge"|"c5ad.4xlarge"|"c5ad.8xlarge"|"c5ad.12xlarge"|"c5ad.16xlarge"|"c5ad.24xlarge"|"c5d.large"|"c5d.xlarge"|"c5d.2xlarge"|"c5d.4xlarge"|"c5d.9xlarge"|"c5d.12xlarge"|"c5d.18xlarge"|"c5d.24xlarge"|"c5d.metal"|"c5n.large"|"c5n.xlarge"|"c5n.2xlarge"|"c5n.4xlarge"|"c5n.9xlarge"|"c5n.18xlarge"|"c5n.metal"|"c6g.medium"|"c6g.large"|"c6g.xlarge"|"c6g.2xlarge"|"c6g.4xlarge"|"c6g.8xlarge"|"c6g.12xlarge"|"c6g.16xlarge"|"c6g.metal"|"c6gd.medium"|"c6gd.large"|"c6gd.xlarge"|"c6gd.2xlarge"|"c6gd.4xlarge"|"c6gd.8xlarge"|"c6gd.12xlarge"|"c6gd.16xlarge"|"c6gd.metal"|"c6gn.medium"|"c6gn.large"|"c6gn.xlarge"|"c6gn.2xlarge"|"c6gn.4xlarge"|"c6gn.8xlarge"|"c6gn.12xlarge"|"c6gn.16xlarge"|"c6i.large"|"c6i.xlarge"|"c6i.2xlarge"|"c6i.4xlarge"|"c6i.8xlarge"|"c6i.12xlarge"|"c6i.16xlarge"|"c6i.24xlarge"|"c6i.32xlarge"|"c6i.metal"|"cc1.4xlarge"|"cc2.8xlarge"|"cg1.4xlarge"|"cr1.8xlarge"|"d2.xlarge"|"d2.2xlarge"|"d2.4xlarge"|"d2.8xlarge"|"d3.xlarge"|"d3.2xlarge"|"d3.4xlarge"|"d3.8xlarge"|"d3en.xlarge"|"d3en.2xlarge"|"d3en.4xlarge"|"d3en.6xlarge"|"d3en.8xlarge"|"d3en.12xlarge"|"dl1.24xlarge"|"f1.2xlarge"|"f1.4xlarge"|"f1.16xlarge"|"g2.2xlarge"|"g2.8xlarge"|"g3.4xlarge"|"g3.8xlarge"|"g3.16xlarge"|"g3s.xlarge"|"g4ad.xlarge"|"g4ad.2xlarge"|"g4ad.4xlarge"|"g4ad.8xlarge"|"g4ad.16xlarge"|"g4dn.xlarge"|"g4dn.2xlarge"|"g4dn.4xlarge"|"g4dn.8xlarge"|"g4dn.12xlarge"|"g4dn.16xlarge"|"g4dn.metal"|"g5.xlarge"|"g5.2xlarge"|"g5.4xlarge"|"g5.8xlarge"|"g5.12xlarge"|"g5.16xlarge"|"g5.24xlarge"|"g5.48xlarge"|"g5g.xlarge"|"g5g.2xlarge"|"g5g.4xlarge"|"g5g.8xlarge"|"g5g.16xlarge"|"g5g.metal"|"hi1.4xlarge"|"hpc6a.48xlarge"|"hs1.8xlarge"|"h1.2xlarge"|"h1.4xlarge"|"h1.8xlarge"|"h1.16xlarge"|"i2.xlarge"|"i2.2xlarge"|"i2.4xlarge"|"i2.8xlarge"|"i3.large"|"i3.xlarge"|"i3.2xlarge"|"i3.4xlarge"|"i3.8xlarge"|"i3.16xlarge"|"i3.metal"|"i3en.large"|"i3en.xlarge"|"i3en.2xlarge"|"i3en.3xlarge"|"i3en.6xlarge"|"i3en.12xlarge"|"i3en.24xlarge"|"i3en.metal"|"im4gn.large"|"im4gn.xlarge"|"im4gn.2xlarge"|"im4gn.4xlarge"|"im4gn.8xlarge"|"im4gn.16xlarge"|"inf1.xlarge"|"inf1.2xlarge"|"inf1.6xlarge"|"inf1.24xlarge"|"is4gen.medium"|"is4gen.large"|"is4gen.xlarge"|"is4gen.2xlarge"|"is4gen.4xlarge"|"is4gen.8xlarge"|"m1.small"|"m1.medium"|"m1.large"|"m1.xlarge"|"m2.xlarge"|"m2.2xlarge"|"m2.4xlarge"|"m3.medium"|"m3.large"|"m3.xlarge"|"m3.2xlarge"|"m4.large"|"m4.xlarge"|"m4.2xlarge"|"m4.4xlarge"|"m4.10xlarge"|"m4.16xlarge"|"m5.large"|"m5.xlarge"|"m5.2xlarge"|"m5.4xlarge"|"m5.8xlarge"|"m5.12xlarge"|"m5.16xlarge"|"m5.24xlarge"|"m5.metal"|"m5a.large"|"m5a.xlarge"|"m5a.2xlarge"|"m5a.4xlarge"|"m5a.8xlarge"|"m5a.12xlarge"|"m5a.16xlarge"|"m5a.24xlarge"|"m5ad.large"|"m5ad.xlarge"|"m5ad.2xlarge"|"m5ad.4xlarge"|"m5ad.8xlarge"|"m5ad.12xlarge"|"m5ad.16xlarge"|"m5ad.24xlarge"|"m5d.large"|"m5d.xlarge"|"m5d.2xlarge"|"m5d.4xlarge"|"m5d.8xlarge"|"m5d.12xlarge"|"m5d.16xlarge"|"m5d.24xlarge"|"m5d.metal"|"m5dn.large"|"m5dn.xlarge"|"m5dn.2xlarge"|"m5dn.4xlarge"|"m5dn.8xlarge"|"m5dn.12xlarge"|"m5dn.16xlarge"|"m5dn.24xlarge"|"m5dn.metal"|"m5n.large"|"m5n.xlarge"|"m5n.2xlarge"|"m5n.4xlarge"|"m5n.8xlarge"|"m5n.12xlarge"|"m5n.16xlarge"|"m5n.24xlarge"|"m5n.metal"|"m5zn.large"|"m5zn.xlarge"|"m5zn.2xlarge"|"m5zn.3xlarge"|"m5zn.6xlarge"|"m5zn.12xlarge"|"m5zn.metal"|"m6a.large"|"m6a.xlarge"|"m6a.2xlarge"|"m6a.4xlarge"|"m6a.8xlarge"|"m6a.12xlarge"|"m6a.16xlarge"|"m6a.24xlarge"|"m6a.32xlarge"|"m6a.48xlarge"|"m6g.metal"|"m6g.medium"|"m6g.large"|"m6g.xlarge"|"m6g.2xlarge"|"m6g.4xlarge"|"m6g.8xlarge"|"m6g.12xlarge"|"m6g.16xlarge"|"m6gd.metal"|"m6gd.medium"|"m6gd.large"|"m6gd.xlarge"|"m6gd.2xlarge"|"m6gd.4xlarge"|"m6gd.8xlarge"|"m6gd.12xlarge"|"m6gd.16xlarge"|"m6i.large"|"m6i.xlarge"|"m6i.2xlarge"|"m6i.4xlarge"|"m6i.8xlarge"|"m6i.12xlarge"|"m6i.16xlarge"|"m6i.24xlarge"|"m6i.32xlarge"|"m6i.metal"|"mac1.metal"|"p2.xlarge"|"p2.8xlarge"|"p2.16xlarge"|"p3.2xlarge"|"p3.8xlarge"|"p3.16xlarge"|"p3dn.24xlarge"|"p4d.24xlarge"|"r3.large"|"r3.xlarge"|"r3.2xlarge"|"r3.4xlarge"|"r3.8xlarge"|"r4.large"|"r4.xlarge"|"r4.2xlarge"|"r4.4xlarge"|"r4.8xlarge"|"r4.16xlarge"|"r5.large"|"r5.xlarge"|"r5.2xlarge"|"r5.4xlarge"|"r5.8xlarge"|"r5.12xlarge"|"r5.16xlarge"|"r5.24xlarge"|"r5.metal"|"r5a.large"|"r5a.xlarge"|"r5a.2xlarge"|"r5a.4xlarge"|"r5a.8xlarge"|"r5a.12xlarge"|"r5a.16xlarge"|"r5a.24xlarge"|"r5ad.large"|"r5ad.xlarge"|"r5ad.2xlarge"|"r5ad.4xlarge"|"r5ad.8xlarge"|"r5ad.12xlarge"|"r5ad.16xlarge"|"r5ad.24xlarge"|"r5b.large"|"r5b.xlarge"|"r5b.2xlarge"|"r5b.4xlarge"|"r5b.8xlarge"|"r5b.12xlarge"|"r5b.16xlarge"|"r5b.24xlarge"|"r5b.metal"|"r5d.large"|"r5d.xlarge"|"r5d.2xlarge"|"r5d.4xlarge"|"r5d.8xlarge"|"r5d.12xlarge"|"r5d.16xlarge"|"r5d.24xlarge"|"r5d.metal"|"r5dn.large"|"r5dn.xlarge"|"r5dn.2xlarge"|"r5dn.4xlarge"|"r5dn.8xlarge"|"r5dn.12xlarge"|"r5dn.16xlarge"|"r5dn.24xlarge"|"r5dn.metal"|"r5n.large"|"r5n.xlarge"|"r5n.2xlarge"|"r5n.4xlarge"|"r5n.8xlarge"|"r5n.12xlarge"|"r5n.16xlarge"|"r5n.24xlarge"|"r5n.metal"|"r6g.medium"|"r6g.large"|"r6g.xlarge"|"r6g.2xlarge"|"r6g.4xlarge"|"r6g.8xlarge"|"r6g.12xlarge"|"r6g.16xlarge"|"r6g.metal"|"r6gd.medium"|"r6gd.large"|"r6gd.xlarge"|"r6gd.2xlarge"|"r6gd.4xlarge"|"r6gd.8xlarge"|"r6gd.12xlarge"|"r6gd.16xlarge"|"r6gd.metal"|"r6i.large"|"r6i.xlarge"|"r6i.2xlarge"|"r6i.4xlarge"|"r6i.8xlarge"|"r6i.12xlarge"|"r6i.16xlarge"|"r6i.24xlarge"|"r6i.32xlarge"|"r6i.metal"|"t1.micro"|"t2.nano"|"t2.micro"|"t2.small"|"t2.medium"|"t2.large"|"t2.xlarge"|"t2.2xlarge"|"t3.nano"|"t3.micro"|"t3.small"|"t3.medium"|"t3.large"|"t3.xlarge"|"t3.2xlarge"|"t3a.nano"|"t3a.micro"|"t3a.small"|"t3a.medium"|"t3a.large"|"t3a.xlarge"|"t3a.2xlarge"|"t4g.nano"|"t4g.micro"|"t4g.small"|"t4g.medium"|"t4g.large"|"t4g.xlarge"|"t4g.2xlarge"|"u-6tb1.56xlarge"|"u-6tb1.112xlarge"|"u-9tb1.112xlarge"|"u-12tb1.112xlarge"|"u-6tb1.metal"|"u-9tb1.metal"|"u-12tb1.metal"|"u-18tb1.metal"|"u-24tb1.metal"|"vt1.3xlarge"|"vt1.6xlarge"|"vt1.24xlarge"|"x1.16xlarge"|"x1.32xlarge"|"x1e.xlarge"|"x1e.2xlarge"|"x1e.4xlarge"|"x1e.8xlarge"|"x1e.16xlarge"|"x1e.32xlarge"|"x2iezn.2xlarge"|"x2iezn.4xlarge"|"x2iezn.6xlarge"|"x2iezn.8xlarge"|"x2iezn.12xlarge"|"x2iezn.metal"|"x2gd.medium"|"x2gd.large"|"x2gd.xlarge"|"x2gd.2xlarge"|"x2gd.4xlarge"|"x2gd.8xlarge"|"x2gd.12xlarge"|"x2gd.16xlarge"|"x2gd.metal"|"z1d.large"|"z1d.xlarge"|"z1d.2xlarge"|"z1d.3xlarge"|"z1d.6xlarge"|"z1d.12xlarge"|"z1d.metal"|"x2idn.16xlarge"|"x2idn.24xlarge"|"x2idn.32xlarge"|"x2iedn.xlarge"|"x2iedn.2xlarge"|"x2iedn.4xlarge"|"x2iedn.8xlarge"|"x2iedn.16xlarge"|"x2iedn.24xlarge"|"x2iedn.32xlarge"|"c6a.large"|"c6a.xlarge"|"c6a.2xlarge"|"c6a.4xlarge"|"c6a.8xlarge"|"c6a.12xlarge"|"c6a.16xlarge"|"c6a.24xlarge"|"c6a.32xlarge"|"c6a.48xlarge"|"c6a.metal"|"m6a.metal"|"i4i.large"|"i4i.xlarge"|"i4i.2xlarge"|"i4i.4xlarge"|"i4i.8xlarge"|"i4i.16xlarge"|"i4i.32xlarge"|"i4i.metal"|"x2idn.metal"|"x2iedn.metal"|"c7g.medium"|"c7g.large"|"c7g.xlarge"|"c7g.2xlarge"|"c7g.4xlarge"|"c7g.8xlarge"|"c7g.12xlarge"|"c7g.16xlarge"|"mac2.metal"|"c6id.large"|"c6id.xlarge"|"c6id.2xlarge"|"c6id.4xlarge"|"c6id.8xlarge"|"c6id.12xlarge"|"c6id.16xlarge"|"c6id.24xlarge"|"c6id.32xlarge"|"c6id.metal"|"m6id.large"|"m6id.xlarge"|"m6id.2xlarge"|"m6id.4xlarge"|"m6id.8xlarge"|"m6id.12xlarge"|"m6id.16xlarge"|"m6id.24xlarge"|"m6id.32xlarge"|"m6id.metal"|"r6id.large"|"r6id.xlarge"|"r6id.2xlarge"|"r6id.4xlarge"|"r6id.8xlarge"|"r6id.12xlarge"|"r6id.16xlarge"|"r6id.24xlarge"|"r6id.32xlarge"|"r6id.metal"|"r6a.large"|"r6a.xlarge"|"r6a.2xlarge"|"r6a.4xlarge"|"r6a.8xlarge"|"r6a.12xlarge"|"r6a.16xlarge"|"r6a.24xlarge"|"r6a.32xlarge"|"r6a.48xlarge"|"r6a.metal"|"p4de.24xlarge"|"u-3tb1.56xlarge"|"u-18tb1.112xlarge"|"u-24tb1.112xlarge"|"trn1.2xlarge"|"trn1.32xlarge"|"hpc6id.32xlarge"|"c6in.large"|"c6in.xlarge"|"c6in.2xlarge"|"c6in.4xlarge"|"c6in.8xlarge"|"c6in.12xlarge"|"c6in.16xlarge"|"c6in.24xlarge"|"c6in.32xlarge"|"m6in.large"|"m6in.xlarge"|"m6in.2xlarge"|"m6in.4xlarge"|"m6in.8xlarge"|"m6in.12xlarge"|"m6in.16xlarge"|"m6in.24xlarge"|"m6in.32xlarge"|"m6idn.large"|"m6idn.xlarge"|"m6idn.2xlarge"|"m6idn.4xlarge"|"m6idn.8xlarge"|"m6idn.12xlarge"|"m6idn.16xlarge"|"m6idn.24xlarge"|"m6idn.32xlarge"|"r6in.large"|"r6in.xlarge"|"r6in.2xlarge"|"r6in.4xlarge"|"r6in.8xlarge"|"r6in.12xlarge"|"r6in.16xlarge"|"r6in.24xlarge"|"r6in.32xlarge"|"r6idn.large"|"r6idn.xlarge"|"r6idn.2xlarge"|"r6idn.4xlarge"|"r6idn.8xlarge"|"r6idn.12xlarge"|"r6idn.16xlarge"|"r6idn.24xlarge"|"r6idn.32xlarge"|"c7g.metal"|"m7g.medium"|"m7g.large"|"m7g.xlarge"|"m7g.2xlarge"|"m7g.4xlarge"|"m7g.8xlarge"|"m7g.12xlarge"|"m7g.16xlarge"|"m7g.metal"|"r7g.medium"|"r7g.large"|"r7g.xlarge"|"r7g.2xlarge"|"r7g.4xlarge"|"r7g.8xlarge"|"r7g.12xlarge"|"r7g.16xlarge"|"r7g.metal"|"c6in.metal"|"m6in.metal"|"m6idn.metal"|"r6in.metal"|"r6idn.metal"|"inf2.xlarge"|"inf2.8xlarge"|"inf2.24xlarge"|"inf2.48xlarge"|"trn1n.32xlarge"|"i4g.large"|"i4g.xlarge"|"i4g.2xlarge"|"i4g.4xlarge"|"i4g.8xlarge"|"i4g.16xlarge",
      Ipv6AddressCount = 123,
      Ipv6Addresses = list(
        list(
          Ipv6Address = "string"
        )
      ),
      KernelId = "string",
      KeyName = "string",
      MaxCount = 123,
      MinCount = 123,
      Monitoring = list(
        Enabled = TRUE|FALSE
      ),
      Placement = list(
        AvailabilityZone = "string",
        Affinity = "string",
        GroupName = "string",
        PartitionNumber = 123,
        HostId = "string",
        Tenancy = "default"|"dedicated"|"host",
        SpreadDomain = "string",
        HostResourceGroupArn = "string",
        GroupId = "string"
      ),
      RamdiskId = "string",
      SecurityGroupIds = list(
        "string"
      ),
      SecurityGroups = list(
        "string"
      ),
      SubnetId = "string",
      UserData = "string",
      AdditionalInfo = "string",
      ClientToken = "string",
      DisableApiTermination = TRUE|FALSE,
      DryRun = TRUE|FALSE,
      EbsOptimized = TRUE|FALSE,
      IamInstanceProfile = list(
        Arn = "string",
        Name = "string"
      ),
      InstanceInitiatedShutdownBehavior = "stop"|"terminate",
      NetworkInterfaces = list(
        list(
          AssociatePublicIpAddress = TRUE|FALSE,
          DeleteOnTermination = TRUE|FALSE,
          Description = "string",
          DeviceIndex = 123,
          Groups = list(
            "string"
          ),
          Ipv6AddressCount = 123,
          Ipv6Addresses = list(
            list(
              Ipv6Address = "string"
            )
          ),
          NetworkInterfaceId = "string",
          PrivateIpAddress = "string",
          PrivateIpAddresses = list(
            list(
              Primary = TRUE|FALSE,
              PrivateIpAddress = "string"
            )
          ),
          SecondaryPrivateIpAddressCount = 123,
          SubnetId = "string",
          AssociateCarrierIpAddress = TRUE|FALSE,
          InterfaceType = "string",
          NetworkCardIndex = 123,
          Ipv4Prefixes = list(
            list(
              Ipv4Prefix = "string"
            )
          ),
          Ipv4PrefixCount = 123,
          Ipv6Prefixes = list(
            list(
              Ipv6Prefix = "string"
            )
          ),
          Ipv6PrefixCount = 123
        )
      ),
      PrivateIpAddress = "string",
      ElasticGpuSpecification = list(
        list(
          Type = "string"
        )
      ),
      ElasticInferenceAccelerators = list(
        list(
          Type = "string",
          Count = 123
        )
      ),
      TagSpecifications = list(
        list(
          ResourceType = "capacity-reservation"|"client-vpn-endpoint"|"customer-gateway"|"carrier-gateway"|"coip-pool"|"dedicated-host"|"dhcp-options"|"egress-only-internet-gateway"|"elastic-ip"|"elastic-gpu"|"export-image-task"|"export-instance-task"|"fleet"|"fpga-image"|"host-reservation"|"image"|"import-image-task"|"import-snapshot-task"|"instance"|"instance-event-window"|"internet-gateway"|"ipam"|"ipam-pool"|"ipam-scope"|"ipv4pool-ec2"|"ipv6pool-ec2"|"key-pair"|"launch-template"|"local-gateway"|"local-gateway-route-table"|"local-gateway-virtual-interface"|"local-gateway-virtual-interface-group"|"local-gateway-route-table-vpc-association"|"local-gateway-route-table-virtual-interface-group-association"|"natgateway"|"network-acl"|"network-interface"|"network-insights-analysis"|"network-insights-path"|"network-insights-access-scope"|"network-insights-access-scope-analysis"|"placement-group"|"prefix-list"|"replace-root-volume-task"|"reserved-instances"|"route-table"|"security-group"|"security-group-rule"|"snapshot"|"spot-fleet-request"|"spot-instances-request"|"subnet"|"subnet-cidr-reservation"|"traffic-mirror-filter"|"traffic-mirror-session"|"traffic-mirror-target"|"transit-gateway"|"transit-gateway-attachment"|"transit-gateway-connect-peer"|"transit-gateway-multicast-domain"|"transit-gateway-policy-table"|"transit-gateway-route-table"|"transit-gateway-route-table-announcement"|"volume"|"vpc"|"vpc-endpoint"|"vpc-endpoint-connection"|"vpc-endpoint-service"|"vpc-endpoint-service-permission"|"vpc-peering-connection"|"vpn-connection"|"vpn-gateway"|"vpc-flow-log"|"capacity-reservation-fleet"|"traffic-mirror-filter-rule"|"vpc-endpoint-connection-device-type"|"verified-access-instance"|"verified-access-group"|"verified-access-endpoint"|"verified-access-policy"|"verified-access-trust-provider"|"vpn-connection-device-type"|"vpc-block-public-access-exclusion"|"ipam-resource-discovery"|"ipam-resource-discovery-association",
          Tags = list(
            list(
              Key = "string",
              Value = "string"
            )
          )
        )
      ),
      LaunchTemplate = list(
        LaunchTemplateId = "string",
        LaunchTemplateName = "string",
        Version = "string"
      ),
      InstanceMarketOptions = list(
        MarketType = "spot",
        SpotOptions = list(
          MaxPrice = "string",
          SpotInstanceType = "one-time"|"persistent",
          BlockDurationMinutes = 123,
          ValidUntil = as.POSIXct(
            "2015-01-01"
          ),
          InstanceInterruptionBehavior = "hibernate"|"stop"|"terminate"
        )
      ),
      CreditSpecification = list(
        CpuCredits = "string"
      ),
      CpuOptions = list(
        CoreCount = 123,
        ThreadsPerCore = 123,
        AmdSevSnp = "enabled"|"disabled"
      ),
      CapacityReservationSpecification = list(
        CapacityReservationPreference = "open"|"none",
        CapacityReservationTarget = list(
          CapacityReservationId = "string",
          CapacityReservationResourceGroupArn = "string"
        )
      ),
      HibernationOptions = list(
        Configured = TRUE|FALSE
      ),
      LicenseSpecifications = list(
        list(
          LicenseConfigurationArn = "string"
        )
      ),
      MetadataOptions = list(
        HttpTokens = "optional"|"required",
        HttpPutResponseHopLimit = 123,
        HttpEndpoint = "disabled"|"enabled",
        HttpProtocolIpv6 = "disabled"|"enabled",
        InstanceMetadataTags = "disabled"|"enabled"
      ),
      EnclaveOptions = list(
        Enabled = TRUE|FALSE
      ),
      PrivateDnsNameOptions = list(
        HostnameType = "ip-name"|"resource-name",
        EnableResourceNameDnsARecord = TRUE|FALSE,
        EnableResourceNameDnsAAAARecord = TRUE|FALSE
      ),
      MaintenanceOptions = list(
        AutoRecovery = "disabled"|"default"
      ),
      DisableApiStop = TRUE|FALSE
    )

### Examples

    ## Not run: 
    # This example launches an instance using the specified AMI, instance
    # type, security group, subnet, block device mapping, and tags.
    svc$run_instances(
      BlockDeviceMappings = list(
        list(
          DeviceName = "/dev/sdh",
          Ebs = list(
            VolumeSize = 100L
          )
        )
      ),
      ImageId = "ami-abc12345",
      InstanceType = "t2.micro",
      KeyName = "my-key-pair",
      MaxCount = 1L,
      MinCount = 1L,
      SecurityGroupIds = list(
        "sg-1a2b3c4d"
      ),
      SubnetId = "subnet-6e7f829e",
      TagSpecifications = list(
        list(
          ResourceType = "instance",
          Tags = list(
            list(
              Key = "Purpose",
              Value = "test"
            )
          )
        )
      )
    )

    ## End(Not run)
