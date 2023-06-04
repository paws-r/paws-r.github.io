<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>autoscaling_create_auto_scaling_group</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## We strongly recommend using a launch template when calling this operation to ensure full functionality for Amazon EC2 Auto Scaling and Amazon EC2

### Description

**We strongly recommend using a launch template when calling this
operation to ensure full functionality for Amazon EC2 Auto Scaling and
Amazon EC2.**

Creates an Auto Scaling group with the specified name and attributes.

If you exceed your maximum limit of Auto Scaling groups, the call fails.
To query this limit, call the `describe_account_limits` API. For
information about updating this limit, see [Quotas for Amazon EC2 Auto
Scaling](https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-quotas.html)
in the *Amazon EC2 Auto Scaling User Guide*.

For introductory exercises for creating an Auto Scaling group, see
[Getting started with Amazon EC2 Auto
Scaling](https://docs.aws.amazon.com/autoscaling/ec2/userguide/get-started-with-ec2-auto-scaling.html)
and [Tutorial: Set up a scaled and load-balanced
application](https://docs.aws.amazon.com/autoscaling/ec2/userguide/tutorial-ec2-auto-scaling-load-balancer.html)
in the *Amazon EC2 Auto Scaling User Guide*. For more information, see
[Auto Scaling
groups](https://docs.aws.amazon.com/autoscaling/ec2/userguide/auto-scaling-groups.html)
in the *Amazon EC2 Auto Scaling User Guide*.

Every Auto Scaling group has three size properties (`DesiredCapacity`,
`MaxSize`, and `MinSize`). Usually, you set these sizes based on a
specific number of instances. However, if you configure a mixed
instances policy that defines weights for the instance types, you must
specify these sizes with the same units that you use for weighting
instances.

### Usage

    autoscaling_create_auto_scaling_group(AutoScalingGroupName,
      LaunchConfigurationName, LaunchTemplate, MixedInstancesPolicy,
      InstanceId, MinSize, MaxSize, DesiredCapacity, DefaultCooldown,
      AvailabilityZones, LoadBalancerNames, TargetGroupARNs, HealthCheckType,
      HealthCheckGracePeriod, PlacementGroup, VPCZoneIdentifier,
      TerminationPolicies, NewInstancesProtectedFromScaleIn,
      CapacityRebalance, LifecycleHookSpecificationList, Tags,
      ServiceLinkedRoleARN, MaxInstanceLifetime, Context, DesiredCapacityType,
      DefaultInstanceWarmup, TrafficSources)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="autoscaling_create_auto_scaling_group_:_AutoScalingGroupName">AutoScalingGroupName</code></td>
<td><p>[required] The name of the Auto Scaling group. This name must be
unique per Region per account.</p>
<p>The name can contain any ASCII character 33 to 126 including most
punctuation characters, digits, and upper and lowercased letters.</p>
<p>You cannot use a colon (:) in the name.</p></td>
</tr>
<tr class="even">
<td><code
id="autoscaling_create_auto_scaling_group_:_LaunchConfigurationName">LaunchConfigurationName</code></td>
<td><p>The name of the launch configuration to use to launch
instances.</p>
<p>Conditional: You must specify either a launch template
(<code>LaunchTemplate</code> or <code>MixedInstancesPolicy</code>) or a
launch configuration (<code>LaunchConfigurationName</code> or
<code>InstanceId</code>).</p></td>
</tr>
<tr class="odd">
<td><code
id="autoscaling_create_auto_scaling_group_:_LaunchTemplate">LaunchTemplate</code></td>
<td><p>Information used to specify the launch template and version to
use to launch instances.</p>
<p>Conditional: You must specify either a launch template
(<code>LaunchTemplate</code> or <code>MixedInstancesPolicy</code>) or a
launch configuration (<code>LaunchConfigurationName</code> or
<code>InstanceId</code>).</p>
<p>The launch template that is specified must be configured for use with
an Auto Scaling group. For more information, see <a
href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/create-launch-template.html">Creating
a launch template for an Auto Scaling group</a> in the <em>Amazon EC2
Auto Scaling User Guide</em>.</p></td>
</tr>
<tr class="even">
<td><code
id="autoscaling_create_auto_scaling_group_:_MixedInstancesPolicy">MixedInstancesPolicy</code></td>
<td><p>The mixed instances policy. For more information, see <a
href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-mixed-instances-groups.html">Auto
Scaling groups with multiple instance types and purchase options</a> in
the <em>Amazon EC2 Auto Scaling User Guide</em>.</p></td>
</tr>
<tr class="odd">
<td><code
id="autoscaling_create_auto_scaling_group_:_InstanceId">InstanceId</code></td>
<td><p>The ID of the instance used to base the launch configuration on.
If specified, Amazon EC2 Auto Scaling uses the configuration values from
the specified instance to create a new launch configuration. To get the
instance ID, use the Amazon EC2 <a
href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeInstances.html">DescribeInstances</a>
API operation. For more information, see <a
href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/create-asg-from-instance.html">Creating
an Auto Scaling group using an EC2 instance</a> in the <em>Amazon EC2
Auto Scaling User Guide</em>.</p></td>
</tr>
<tr class="even">
<td><code
id="autoscaling_create_auto_scaling_group_:_MinSize">MinSize</code></td>
<td><p>[required] The minimum size of the group.</p></td>
</tr>
<tr class="odd">
<td><code
id="autoscaling_create_auto_scaling_group_:_MaxSize">MaxSize</code></td>
<td><p>[required] The maximum size of the group.</p>
<p>With a mixed instances policy that uses instance weighting, Amazon
EC2 Auto Scaling may need to go above <code>MaxSize</code> to meet your
capacity requirements. In this event, Amazon EC2 Auto Scaling will never
go above <code>MaxSize</code> by more than your largest instance weight
(weights that define how many units each instance contributes to the
desired capacity of the group).</p></td>
</tr>
<tr class="even">
<td><code
id="autoscaling_create_auto_scaling_group_:_DesiredCapacity">DesiredCapacity</code></td>
<td><p>The desired capacity is the initial capacity of the Auto Scaling
group at the time of its creation and the capacity it attempts to
maintain. It can scale beyond this capacity if you configure auto
scaling. This number must be greater than or equal to the minimum size
of the group and less than or equal to the maximum size of the group. If
you do not specify a desired capacity, the default is the minimum size
of the group.</p></td>
</tr>
<tr class="odd">
<td><code
id="autoscaling_create_auto_scaling_group_:_DefaultCooldown">DefaultCooldown</code></td>
<td><p><em>Only needed if you use simple scaling policies.</em></p>
<p>The amount of time, in seconds, between one scaling activity ending
and another one starting due to simple scaling policies. For more
information, see <a
href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-scaling-cooldowns.html">Scaling
cooldowns for Amazon EC2 Auto Scaling</a> in the <em>Amazon EC2 Auto
Scaling User Guide</em>.</p>
<p>Default: <code>300</code> seconds</p></td>
</tr>
<tr class="even">
<td><code
id="autoscaling_create_auto_scaling_group_:_AvailabilityZones">AvailabilityZones</code></td>
<td><p>A list of Availability Zones where instances in the Auto Scaling
group can be created. Used for launching into the default VPC subnet in
each Availability Zone when not using the <code>VPCZoneIdentifier</code>
property, or for attaching a network interface when an existing network
interface ID is specified in a launch template.</p></td>
</tr>
<tr class="odd">
<td><code
id="autoscaling_create_auto_scaling_group_:_LoadBalancerNames">LoadBalancerNames</code></td>
<td><p>A list of Classic Load Balancers associated with this Auto
Scaling group. For Application Load Balancers, Network Load Balancers,
and Gateway Load Balancers, specify the <code>TargetGroupARNs</code>
property instead.</p></td>
</tr>
<tr class="even">
<td><code
id="autoscaling_create_auto_scaling_group_:_TargetGroupARNs">TargetGroupARNs</code></td>
<td><p>The Amazon Resource Names (ARN) of the Elastic Load Balancing
target groups to associate with the Auto Scaling group. Instances are
registered as targets with the target groups. The target groups receive
incoming traffic and route requests to one or more registered targets.
For more information, see <a
href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/autoscaling-load-balancer.html">Use
Elastic Load Balancing to distribute traffic across the instances in
your Auto Scaling group</a> in the <em>Amazon EC2 Auto Scaling User
Guide</em>.</p></td>
</tr>
<tr class="odd">
<td><code
id="autoscaling_create_auto_scaling_group_:_HealthCheckType">HealthCheckType</code></td>
<td><p>A comma-separated value string of one or more health check
types.</p>
<p>The valid values are <code>EC2</code>, <code>ELB</code>, and
<code>VPC_LATTICE</code>. <code>EC2</code> is the default health check
and cannot be disabled. For more information, see <a
href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-health-checks.html">Health
checks for Auto Scaling instances</a> in the <em>Amazon EC2 Auto Scaling
User Guide</em>.</p>
<p>Only specify <code>EC2</code> if you must clear a value that was
previously set.</p></td>
</tr>
<tr class="even">
<td><code
id="autoscaling_create_auto_scaling_group_:_HealthCheckGracePeriod">HealthCheckGracePeriod</code></td>
<td><p>The amount of time, in seconds, that Amazon EC2 Auto Scaling
waits before checking the health status of an EC2 instance that has come
into service and marking it unhealthy due to a failed health check. This
is useful if your instances do not immediately pass their health checks
after they enter the <code>InService</code> state. For more information,
see <a
href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/health-check-grace-period.html">Set
the health check grace period for an Auto Scaling group</a> in the
<em>Amazon EC2 Auto Scaling User Guide</em>.</p>
<p>Default: <code>0</code> seconds</p></td>
</tr>
<tr class="odd">
<td><code
id="autoscaling_create_auto_scaling_group_:_PlacementGroup">PlacementGroup</code></td>
<td><p>The name of the placement group into which to launch your
instances. For more information, see <a
href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/placement-groups.html">Placement
groups</a> in the <em>Amazon EC2 User Guide for Linux
Instances</em>.</p>
<p>A <em>cluster</em> placement group is a logical grouping of instances
within a single Availability Zone. You cannot specify multiple
Availability Zones and a cluster placement group.</p></td>
</tr>
<tr class="even">
<td><code
id="autoscaling_create_auto_scaling_group_:_VPCZoneIdentifier">VPCZoneIdentifier</code></td>
<td><p>A comma-separated list of subnet IDs for a virtual private cloud
(VPC) where instances in the Auto Scaling group can be created. If you
specify <code>VPCZoneIdentifier</code> with
<code>AvailabilityZones</code>, the subnets that you specify must reside
in those Availability Zones.</p></td>
</tr>
<tr class="odd">
<td><code
id="autoscaling_create_auto_scaling_group_:_TerminationPolicies">TerminationPolicies</code></td>
<td><p>A policy or a list of policies that are used to select the
instance to terminate. These policies are executed in the order that you
list them. For more information, see <a
href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-termination-policies.html">Work
with Amazon EC2 Auto Scaling termination policies</a> in the <em>Amazon
EC2 Auto Scaling User Guide</em>.</p>
<p>Valid values: <code>Default</code> | <code>AllocationStrategy</code>
| <code>ClosestToNextInstanceHour</code> | <code>NewestInstance</code> |
<code>OldestInstance</code> | <code>OldestLaunchConfiguration</code> |
<code>OldestLaunchTemplate</code> | <code
style="white-space: pre;">⁠arn:aws:lambda:region:account-id:function:my-function:my-alias⁠</code></p></td>
</tr>
<tr class="even">
<td><code
id="autoscaling_create_auto_scaling_group_:_NewInstancesProtectedFromScaleIn">NewInstancesProtectedFromScaleIn</code></td>
<td><p>Indicates whether newly launched instances are protected from
termination by Amazon EC2 Auto Scaling when scaling in. For more
information about preventing instances from terminating on scale in, see
<a
href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-instance-protection.html">Using
instance scale-in protection</a> in the <em>Amazon EC2 Auto Scaling User
Guide</em>.</p></td>
</tr>
<tr class="odd">
<td><code
id="autoscaling_create_auto_scaling_group_:_CapacityRebalance">CapacityRebalance</code></td>
<td><p>Indicates whether Capacity Rebalancing is enabled. Otherwise,
Capacity Rebalancing is disabled. When you turn on Capacity Rebalancing,
Amazon EC2 Auto Scaling attempts to launch a Spot Instance whenever
Amazon EC2 notifies that a Spot Instance is at an elevated risk of
interruption. After launching a new instance, it then terminates an old
instance. For more information, see <a
href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-capacity-rebalancing.html">Use
Capacity Rebalancing to handle Amazon EC2 Spot Interruptions</a> in the
in the <em>Amazon EC2 Auto Scaling User Guide</em>.</p></td>
</tr>
<tr class="even">
<td><code
id="autoscaling_create_auto_scaling_group_:_LifecycleHookSpecificationList">LifecycleHookSpecificationList</code></td>
<td><p>One or more lifecycle hooks to add to the Auto Scaling group
before instances are launched.</p></td>
</tr>
<tr class="odd">
<td><code
id="autoscaling_create_auto_scaling_group_:_Tags">Tags</code></td>
<td><p>One or more tags. You can tag your Auto Scaling group and
propagate the tags to the Amazon EC2 instances it launches. Tags are not
propagated to Amazon EBS volumes. To add tags to Amazon EBS volumes,
specify the tags in a launch template but use caution. If the launch
template specifies an instance tag with a key that is also specified for
the Auto Scaling group, Amazon EC2 Auto Scaling overrides the value of
that instance tag with the value specified by the Auto Scaling group.
For more information, see <a
href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-tagging.html">Tag
Auto Scaling groups and instances</a> in the <em>Amazon EC2 Auto Scaling
User Guide</em>.</p></td>
</tr>
<tr class="even">
<td><code
id="autoscaling_create_auto_scaling_group_:_ServiceLinkedRoleARN">ServiceLinkedRoleARN</code></td>
<td><p>The Amazon Resource Name (ARN) of the service-linked role that
the Auto Scaling group uses to call other Amazon Web Services service on
your behalf. By default, Amazon EC2 Auto Scaling uses a service-linked
role named <code>AWSServiceRoleForAutoScaling</code>, which it creates
if it does not exist. For more information, see <a
href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/autoscaling-service-linked-role.html">Service-linked
roles</a> in the <em>Amazon EC2 Auto Scaling User Guide</em>.</p></td>
</tr>
<tr class="odd">
<td><code
id="autoscaling_create_auto_scaling_group_:_MaxInstanceLifetime">MaxInstanceLifetime</code></td>
<td><p>The maximum amount of time, in seconds, that an instance can be
in service. The default is null. If specified, the value must be either
0 or a number equal to or greater than 86,400 seconds (1 day). For more
information, see <a
href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/asg-max-instance-lifetime.html">Replacing
Auto Scaling instances based on maximum instance lifetime</a> in the
<em>Amazon EC2 Auto Scaling User Guide</em>.</p></td>
</tr>
<tr class="even">
<td><code
id="autoscaling_create_auto_scaling_group_:_Context">Context</code></td>
<td><p>Reserved.</p></td>
</tr>
<tr class="odd">
<td><code
id="autoscaling_create_auto_scaling_group_:_DesiredCapacityType">DesiredCapacityType</code></td>
<td><p>The unit of measurement for the value specified for desired
capacity. Amazon EC2 Auto Scaling supports
<code>DesiredCapacityType</code> for attribute-based instance type
selection only. For more information, see <a
href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/create-asg-instance-type-requirements.html">Creating
an Auto Scaling group using attribute-based instance type selection</a>
in the <em>Amazon EC2 Auto Scaling User Guide</em>.</p>
<p>By default, Amazon EC2 Auto Scaling specifies <code>units</code>,
which translates into number of instances.</p>
<p>Valid values: <code>units</code> | <code>vcpu</code> |
<code>memory-mib</code></p></td>
</tr>
<tr class="even">
<td><code
id="autoscaling_create_auto_scaling_group_:_DefaultInstanceWarmup">DefaultInstanceWarmup</code></td>
<td><p>The amount of time, in seconds, until a new instance is
considered to have finished initializing and resource consumption to
become stable after it enters the <code>InService</code> state.</p>
<p>During an instance refresh, Amazon EC2 Auto Scaling waits for the
warm-up period after it replaces an instance before it moves on to
replacing the next instance. Amazon EC2 Auto Scaling also waits for the
warm-up period before aggregating the metrics for new instances with
existing instances in the Amazon CloudWatch metrics that are used for
scaling, resulting in more reliable usage data. For more information,
see <a
href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-default-instance-warmup.html">Set
the default instance warmup for an Auto Scaling group</a> in the
<em>Amazon EC2 Auto Scaling User Guide</em>.</p>
<p>To manage various warm-up settings at the group level, we recommend
that you set the default instance warmup, <em>even if it is set to 0
seconds</em>. To remove a value that you previously set, include the
property but specify <code>-1</code> for the value. However, we strongly
recommend keeping the default instance warmup enabled by specifying a
value of <code>0</code> or other nominal value.</p>
<p>Default: None</p></td>
</tr>
<tr class="odd">
<td><code
id="autoscaling_create_auto_scaling_group_:_TrafficSources">TrafficSources</code></td>
<td><p>The list of traffic sources to attach to this Auto Scaling group.
You can use any of the following as traffic sources for an Auto Scaling
group: Classic Load Balancer, Application Load Balancer, Gateway Load
Balancer, Network Load Balancer, and VPC Lattice.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$create_auto_scaling_group(
      AutoScalingGroupName = "string",
      LaunchConfigurationName = "string",
      LaunchTemplate = list(
        LaunchTemplateId = "string",
        LaunchTemplateName = "string",
        Version = "string"
      ),
      MixedInstancesPolicy = list(
        LaunchTemplate = list(
          LaunchTemplateSpecification = list(
            LaunchTemplateId = "string",
            LaunchTemplateName = "string",
            Version = "string"
          ),
          Overrides = list(
            list(
              InstanceType = "string",
              WeightedCapacity = "string",
              LaunchTemplateSpecification = list(
                LaunchTemplateId = "string",
                LaunchTemplateName = "string",
                Version = "string"
              ),
              InstanceRequirements = list(
                VCpuCount = list(
                  Min = 123,
                  Max = 123
                ),
                MemoryMiB = list(
                  Min = 123,
                  Max = 123
                ),
                CpuManufacturers = list(
                  "intel"|"amd"|"amazon-web-services"
                ),
                MemoryGiBPerVCpu = list(
                  Min = 123.0,
                  Max = 123.0
                ),
                ExcludedInstanceTypes = list(
                  "string"
                ),
                InstanceGenerations = list(
                  "current"|"previous"
                ),
                SpotMaxPricePercentageOverLowestPrice = 123,
                OnDemandMaxPricePercentageOverLowestPrice = 123,
                BareMetal = "included"|"excluded"|"required",
                BurstablePerformance = "included"|"excluded"|"required",
                RequireHibernateSupport = TRUE|FALSE,
                NetworkInterfaceCount = list(
                  Min = 123,
                  Max = 123
                ),
                LocalStorage = "included"|"excluded"|"required",
                LocalStorageTypes = list(
                  "hdd"|"ssd"
                ),
                TotalLocalStorageGB = list(
                  Min = 123.0,
                  Max = 123.0
                ),
                BaselineEbsBandwidthMbps = list(
                  Min = 123,
                  Max = 123
                ),
                AcceleratorTypes = list(
                  "gpu"|"fpga"|"inference"
                ),
                AcceleratorCount = list(
                  Min = 123,
                  Max = 123
                ),
                AcceleratorManufacturers = list(
                  "nvidia"|"amd"|"amazon-web-services"|"xilinx"
                ),
                AcceleratorNames = list(
                  "a100"|"v100"|"k80"|"t4"|"m60"|"radeon-pro-v520"|"vu9p"
                ),
                AcceleratorTotalMemoryMiB = list(
                  Min = 123,
                  Max = 123
                ),
                NetworkBandwidthGbps = list(
                  Min = 123.0,
                  Max = 123.0
                ),
                AllowedInstanceTypes = list(
                  "string"
                )
              )
            )
          )
        ),
        InstancesDistribution = list(
          OnDemandAllocationStrategy = "string",
          OnDemandBaseCapacity = 123,
          OnDemandPercentageAboveBaseCapacity = 123,
          SpotAllocationStrategy = "string",
          SpotInstancePools = 123,
          SpotMaxPrice = "string"
        )
      ),
      InstanceId = "string",
      MinSize = 123,
      MaxSize = 123,
      DesiredCapacity = 123,
      DefaultCooldown = 123,
      AvailabilityZones = list(
        "string"
      ),
      LoadBalancerNames = list(
        "string"
      ),
      TargetGroupARNs = list(
        "string"
      ),
      HealthCheckType = "string",
      HealthCheckGracePeriod = 123,
      PlacementGroup = "string",
      VPCZoneIdentifier = "string",
      TerminationPolicies = list(
        "string"
      ),
      NewInstancesProtectedFromScaleIn = TRUE|FALSE,
      CapacityRebalance = TRUE|FALSE,
      LifecycleHookSpecificationList = list(
        list(
          LifecycleHookName = "string",
          LifecycleTransition = "string",
          NotificationMetadata = "string",
          HeartbeatTimeout = 123,
          DefaultResult = "string",
          NotificationTargetARN = "string",
          RoleARN = "string"
        )
      ),
      Tags = list(
        list(
          ResourceId = "string",
          ResourceType = "string",
          Key = "string",
          Value = "string",
          PropagateAtLaunch = TRUE|FALSE
        )
      ),
      ServiceLinkedRoleARN = "string",
      MaxInstanceLifetime = 123,
      Context = "string",
      DesiredCapacityType = "string",
      DefaultInstanceWarmup = 123,
      TrafficSources = list(
        list(
          Identifier = "string",
          Type = "string"
        )
      )
    )

### Examples

    ## Not run: 
    # This example creates an Auto Scaling group.
    svc$create_auto_scaling_group(
      AutoScalingGroupName = "my-auto-scaling-group",
      LaunchTemplate = list(
        LaunchTemplateName = "my-template-for-auto-scaling",
        Version = "$Latest"
      ),
      MaxInstanceLifetime = 2592000L,
      MaxSize = 3L,
      MinSize = 1L,
      VPCZoneIdentifier = "subnet-057fa0918fEXAMPLE"
    )

    # This example creates an Auto Scaling group and attaches the specified
    # target group.
    svc$create_auto_scaling_group(
      AutoScalingGroupName = "my-auto-scaling-group",
      HealthCheckGracePeriod = 300L,
      HealthCheckType = "ELB",
      LaunchTemplate = list(
        LaunchTemplateName = "my-template-for-auto-scaling",
        Version = "$Latest"
      ),
      MaxSize = 3L,
      MinSize = 1L,
      TargetGroupARNs = list(
        "arn:aws:elasticloadbalancing:us-west-2:123456789012:targetgroup/my-tar..."
      ),
      VPCZoneIdentifier = "subnet-057fa0918fEXAMPLE, subnet-610acd08EXAMPLE"
    )

    # This example creates an Auto Scaling group with a mixed instances
    # policy. It specifies the c5.large, c5a.large, and c6g.large instance
    # types and defines a different launch template for the c6g.large instance
    # type.
    svc$create_auto_scaling_group(
      AutoScalingGroupName = "my-asg",
      DesiredCapacity = 3L,
      MaxSize = 5L,
      MinSize = 1L,
      MixedInstancesPolicy = list(
        InstancesDistribution = list(
          OnDemandBaseCapacity = 1L,
          OnDemandPercentageAboveBaseCapacity = 50L,
          SpotAllocationStrategy = "capacity-optimized"
        ),
        LaunchTemplate = list(
          LaunchTemplateSpecification = list(
            LaunchTemplateName = "my-launch-template-for-x86",
            Version = "$Latest"
          ),
          Overrides = list(
            list(
              InstanceType = "c6g.large",
              LaunchTemplateSpecification = list(
                LaunchTemplateName = "my-launch-template-for-arm",
                Version = "$Latest"
              )
            ),
            list(
              InstanceType = "c5.large"
            ),
            list(
              InstanceType = "c5a.large"
            )
          )
        )
      ),
      VPCZoneIdentifier = "subnet-057fa0918fEXAMPLE, subnet-610acd08EXAMPLE"
    )

    ## End(Not run)
