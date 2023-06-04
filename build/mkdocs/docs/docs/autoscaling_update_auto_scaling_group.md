<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>autoscaling_update_auto_scaling_group</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## We strongly recommend that all Auto Scaling groups use launch templates to ensure full functionality for Amazon EC2 Auto Scaling and Amazon EC2

### Description

**We strongly recommend that all Auto Scaling groups use launch
templates to ensure full functionality for Amazon EC2 Auto Scaling and
Amazon EC2.**

Updates the configuration for the specified Auto Scaling group.

To update an Auto Scaling group, specify the name of the group and the
property that you want to change. Any properties that you don't specify
are not changed by this update request. The new settings take effect on
any scaling activities after this call returns.

If you associate a new launch configuration or template with an Auto
Scaling group, all new instances will get the updated configuration.
Existing instances continue to run with the configuration that they were
originally launched with. When you update a group to specify a mixed
instances policy instead of a launch configuration or template, existing
instances may be replaced to match the new purchasing options that you
specified in the policy. For example, if the group currently has 100%
On-Demand capacity and the policy specifies 50% Spot capacity, this
means that half of your instances will be gradually terminated and
relaunched as Spot Instances. When replacing instances, Amazon EC2 Auto
Scaling launches new instances before terminating the old ones, so that
updating your group does not compromise the performance or availability
of your application.

Note the following about changing `DesiredCapacity`, `MaxSize`, or
`MinSize`:

-   If a scale-in activity occurs as a result of a new `DesiredCapacity`
    value that is lower than the current size of the group, the Auto
    Scaling group uses its termination policy to determine which
    instances to terminate.

-   If you specify a new value for `MinSize` without specifying a value
    for `DesiredCapacity`, and the new `MinSize` is larger than the
    current size of the group, this sets the group's `DesiredCapacity`
    to the new `MinSize` value.

-   If you specify a new value for `MaxSize` without specifying a value
    for `DesiredCapacity`, and the new `MaxSize` is smaller than the
    current size of the group, this sets the group's `DesiredCapacity`
    to the new `MaxSize` value.

To see which properties have been set, call the
`describe_auto_scaling_groups` API. To view the scaling policies for an
Auto Scaling group, call the `describe_policies` API. If the group has
scaling policies, you can update them by calling the
`put_scaling_policy` API.

### Usage

    autoscaling_update_auto_scaling_group(AutoScalingGroupName,
      LaunchConfigurationName, LaunchTemplate, MixedInstancesPolicy, MinSize,
      MaxSize, DesiredCapacity, DefaultCooldown, AvailabilityZones,
      HealthCheckType, HealthCheckGracePeriod, PlacementGroup,
      VPCZoneIdentifier, TerminationPolicies,
      NewInstancesProtectedFromScaleIn, ServiceLinkedRoleARN,
      MaxInstanceLifetime, CapacityRebalance, Context, DesiredCapacityType,
      DefaultInstanceWarmup)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="autoscaling_update_auto_scaling_group_:_AutoScalingGroupName">AutoScalingGroupName</code></td>
<td><p>[required] The name of the Auto Scaling group.</p></td>
</tr>
<tr class="even">
<td><code
id="autoscaling_update_auto_scaling_group_:_LaunchConfigurationName">LaunchConfigurationName</code></td>
<td><p>The name of the launch configuration. If you specify
<code>LaunchConfigurationName</code> in your update request, you can't
specify <code>LaunchTemplate</code> or
<code>MixedInstancesPolicy</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="autoscaling_update_auto_scaling_group_:_LaunchTemplate">LaunchTemplate</code></td>
<td><p>The launch template and version to use to specify the updates. If
you specify <code>LaunchTemplate</code> in your update request, you
can't specify <code>LaunchConfigurationName</code> or
<code>MixedInstancesPolicy</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="autoscaling_update_auto_scaling_group_:_MixedInstancesPolicy">MixedInstancesPolicy</code></td>
<td><p>The mixed instances policy. For more information, see <a
href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-mixed-instances-groups.html">Auto
Scaling groups with multiple instance types and purchase options</a> in
the <em>Amazon EC2 Auto Scaling User Guide</em>.</p></td>
</tr>
<tr class="odd">
<td><code
id="autoscaling_update_auto_scaling_group_:_MinSize">MinSize</code></td>
<td><p>The minimum size of the Auto Scaling group.</p></td>
</tr>
<tr class="even">
<td><code
id="autoscaling_update_auto_scaling_group_:_MaxSize">MaxSize</code></td>
<td><p>The maximum size of the Auto Scaling group.</p>
<p>With a mixed instances policy that uses instance weighting, Amazon
EC2 Auto Scaling may need to go above <code>MaxSize</code> to meet your
capacity requirements. In this event, Amazon EC2 Auto Scaling will never
go above <code>MaxSize</code> by more than your largest instance weight
(weights that define how many units each instance contributes to the
desired capacity of the group).</p></td>
</tr>
<tr class="odd">
<td><code
id="autoscaling_update_auto_scaling_group_:_DesiredCapacity">DesiredCapacity</code></td>
<td><p>The desired capacity is the initial capacity of the Auto Scaling
group after this operation completes and the capacity it attempts to
maintain. This number must be greater than or equal to the minimum size
of the group and less than or equal to the maximum size of the
group.</p></td>
</tr>
<tr class="even">
<td><code
id="autoscaling_update_auto_scaling_group_:_DefaultCooldown">DefaultCooldown</code></td>
<td><p><em>Only needed if you use simple scaling policies.</em></p>
<p>The amount of time, in seconds, between one scaling activity ending
and another one starting due to simple scaling policies. For more
information, see <a
href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-scaling-cooldowns.html">Scaling
cooldowns for Amazon EC2 Auto Scaling</a> in the <em>Amazon EC2 Auto
Scaling User Guide</em>.</p></td>
</tr>
<tr class="odd">
<td><code
id="autoscaling_update_auto_scaling_group_:_AvailabilityZones">AvailabilityZones</code></td>
<td><p>One or more Availability Zones for the group.</p></td>
</tr>
<tr class="even">
<td><code
id="autoscaling_update_auto_scaling_group_:_HealthCheckType">HealthCheckType</code></td>
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
<tr class="odd">
<td><code
id="autoscaling_update_auto_scaling_group_:_HealthCheckGracePeriod">HealthCheckGracePeriod</code></td>
<td><p>The amount of time, in seconds, that Amazon EC2 Auto Scaling
waits before checking the health status of an EC2 instance that has come
into service and marking it unhealthy due to a failed health check. This
is useful if your instances do not immediately pass their health checks
after they enter the <code>InService</code> state. For more information,
see <a
href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/health-check-grace-period.html">Set
the health check grace period for an Auto Scaling group</a> in the
<em>Amazon EC2 Auto Scaling User Guide</em>.</p></td>
</tr>
<tr class="even">
<td><code
id="autoscaling_update_auto_scaling_group_:_PlacementGroup">PlacementGroup</code></td>
<td><p>The name of an existing placement group into which to launch your
instances. For more information, see <a
href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/placement-groups.html">Placement
groups</a> in the <em>Amazon EC2 User Guide for Linux
Instances</em>.</p>
<p>A <em>cluster</em> placement group is a logical grouping of instances
within a single Availability Zone. You cannot specify multiple
Availability Zones and a cluster placement group.</p></td>
</tr>
<tr class="odd">
<td><code
id="autoscaling_update_auto_scaling_group_:_VPCZoneIdentifier">VPCZoneIdentifier</code></td>
<td><p>A comma-separated list of subnet IDs for a virtual private cloud
(VPC). If you specify <code>VPCZoneIdentifier</code> with
<code>AvailabilityZones</code>, the subnets that you specify must reside
in those Availability Zones.</p></td>
</tr>
<tr class="even">
<td><code
id="autoscaling_update_auto_scaling_group_:_TerminationPolicies">TerminationPolicies</code></td>
<td><p>A policy or a list of policies that are used to select the
instances to terminate. The policies are executed in the order that you
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
<tr class="odd">
<td><code
id="autoscaling_update_auto_scaling_group_:_NewInstancesProtectedFromScaleIn">NewInstancesProtectedFromScaleIn</code></td>
<td><p>Indicates whether newly launched instances are protected from
termination by Amazon EC2 Auto Scaling when scaling in. For more
information about preventing instances from terminating on scale in, see
<a
href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-instance-protection.html">Using
instance scale-in protection</a> in the <em>Amazon EC2 Auto Scaling User
Guide</em>.</p></td>
</tr>
<tr class="even">
<td><code
id="autoscaling_update_auto_scaling_group_:_ServiceLinkedRoleARN">ServiceLinkedRoleARN</code></td>
<td><p>The Amazon Resource Name (ARN) of the service-linked role that
the Auto Scaling group uses to call other Amazon Web Services on your
behalf. For more information, see <a
href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/autoscaling-service-linked-role.html">Service-linked
roles</a> in the <em>Amazon EC2 Auto Scaling User Guide</em>.</p></td>
</tr>
<tr class="odd">
<td><code
id="autoscaling_update_auto_scaling_group_:_MaxInstanceLifetime">MaxInstanceLifetime</code></td>
<td><p>The maximum amount of time, in seconds, that an instance can be
in service. The default is null. If specified, the value must be either
0 or a number equal to or greater than 86,400 seconds (1 day). To clear
a previously set value, specify a new value of 0. For more information,
see <a
href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/asg-max-instance-lifetime.html">Replacing
Auto Scaling instances based on maximum instance lifetime</a> in the
<em>Amazon EC2 Auto Scaling User Guide</em>.</p></td>
</tr>
<tr class="even">
<td><code
id="autoscaling_update_auto_scaling_group_:_CapacityRebalance">CapacityRebalance</code></td>
<td><p>Enables or disables Capacity Rebalancing. For more information,
see <a
href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-capacity-rebalancing.html">Use
Capacity Rebalancing to handle Amazon EC2 Spot Interruptions</a> in the
<em>Amazon EC2 Auto Scaling User Guide</em>.</p></td>
</tr>
<tr class="odd">
<td><code
id="autoscaling_update_auto_scaling_group_:_Context">Context</code></td>
<td><p>Reserved.</p></td>
</tr>
<tr class="even">
<td><code
id="autoscaling_update_auto_scaling_group_:_DesiredCapacityType">DesiredCapacityType</code></td>
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
<tr class="odd">
<td><code
id="autoscaling_update_auto_scaling_group_:_DefaultInstanceWarmup">DefaultInstanceWarmup</code></td>
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
value of <code>0</code> or other nominal value.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_auto_scaling_group(
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
      MinSize = 123,
      MaxSize = 123,
      DesiredCapacity = 123,
      DefaultCooldown = 123,
      AvailabilityZones = list(
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
      ServiceLinkedRoleARN = "string",
      MaxInstanceLifetime = 123,
      CapacityRebalance = TRUE|FALSE,
      Context = "string",
      DesiredCapacityType = "string",
      DefaultInstanceWarmup = 123
    )

### Examples

    ## Not run: 
    # This example updates multiple properties at the same time.
    svc$update_auto_scaling_group(
      AutoScalingGroupName = "my-auto-scaling-group",
      LaunchTemplate = list(
        LaunchTemplateName = "my-template-for-auto-scaling",
        Version = "2"
      ),
      MaxSize = 5L,
      MinSize = 1L,
      NewInstancesProtectedFromScaleIn = TRUE
    )

    ## End(Not run)
