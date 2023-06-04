<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>autoscaling_start_instance_refresh</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Starts an instance refresh

### Description

Starts an instance refresh. During an instance refresh, Amazon EC2 Auto
Scaling performs a rolling update of instances in an Auto Scaling group.
Instances are terminated first and then replaced, which temporarily
reduces the capacity available within your Auto Scaling group.

This operation is part of the [instance refresh
feature](https://docs.aws.amazon.com/autoscaling/ec2/userguide/asg-instance-refresh.html)
in Amazon EC2 Auto Scaling, which helps you update instances in your
Auto Scaling group. This feature is helpful, for example, when you have
a new AMI or a new user data script. You just need to create a new
launch template that specifies the new AMI or user data script. Then
start an instance refresh to immediately begin the process of updating
instances in the group.

If successful, the request's response contains a unique ID that you can
use to track the progress of the instance refresh. To query its status,
call the `describe_instance_refreshes` API. To describe the instance
refreshes that have already run, call the `describe_instance_refreshes`
API. To cancel an instance refresh that is in progress, use the
`cancel_instance_refresh` API.

An instance refresh might fail for several reasons, such as EC2 launch
failures, misconfigured health checks, or not ignoring or allowing the
termination of instances that are in `Standby` state or protected from
scale in. You can monitor for failed EC2 launches using the scaling
activities. To find the scaling activities, call the
`describe_scaling_activities` API.

If you enable auto rollback, your Auto Scaling group will be rolled back
automatically when the instance refresh fails. You can enable this
feature before starting an instance refresh by specifying the
`AutoRollback` property in the instance refresh preferences. Otherwise,
to roll back an instance refresh before it finishes, use the
`rollback_instance_refresh` API.

### Usage

    autoscaling_start_instance_refresh(AutoScalingGroupName, Strategy,
      DesiredConfiguration, Preferences)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="autoscaling_start_instance_refresh_:_AutoScalingGroupName">AutoScalingGroupName</code></td>
<td><p>[required] The name of the Auto Scaling group.</p></td>
</tr>
<tr class="even">
<td><code
id="autoscaling_start_instance_refresh_:_Strategy">Strategy</code></td>
<td><p>The strategy to use for the instance refresh. The only valid
value is <code>Rolling</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="autoscaling_start_instance_refresh_:_DesiredConfiguration">DesiredConfiguration</code></td>
<td><p>The desired configuration. For example, the desired configuration
can specify a new launch template or a new version of the current launch
template.</p>
<p>Once the instance refresh succeeds, Amazon EC2 Auto Scaling updates
the settings of the Auto Scaling group to reflect the new desired
configuration.</p>
<p>When you specify a new launch template or a new version of the
current launch template for your desired configuration, consider
enabling the <code>SkipMatching</code> property in preferences. If it's
enabled, Amazon EC2 Auto Scaling skips replacing instances that already
use the specified launch template and instance types. This can help you
reduce the number of replacements that are required to apply
updates.</p></td>
</tr>
<tr class="even">
<td><code
id="autoscaling_start_instance_refresh_:_Preferences">Preferences</code></td>
<td><p>Sets your preferences for the instance refresh so that it
performs as expected when you start it. Includes the instance warmup
time, the minimum healthy percentage, and the behaviors that you want
Amazon EC2 Auto Scaling to use if instances that are in
<code>Standby</code> state or protected from scale in are found. You can
also choose to enable additional features, such as the following:</p>
<ul>
<li><p>Auto rollback</p></li>
<li><p>Checkpoints</p></li>
<li><p>Skip matching</p></li>
</ul></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      InstanceRefreshId = "string"
    )

### Request syntax

    svc$start_instance_refresh(
      AutoScalingGroupName = "string",
      Strategy = "Rolling",
      DesiredConfiguration = list(
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
        )
      ),
      Preferences = list(
        MinHealthyPercentage = 123,
        InstanceWarmup = 123,
        CheckpointPercentages = list(
          123
        ),
        CheckpointDelay = 123,
        SkipMatching = TRUE|FALSE,
        AutoRollback = TRUE|FALSE,
        ScaleInProtectedInstances = "Refresh"|"Ignore"|"Wait",
        StandbyInstances = "Terminate"|"Ignore"|"Wait"
      )
    )

### Examples

    ## Not run: 
    # This example starts an instance refresh for the specified Auto Scaling
    # group.
    svc$start_instance_refresh(
      AutoScalingGroupName = "my-auto-scaling-group",
      DesiredConfiguration = list(
        LaunchTemplate = list(
          LaunchTemplateName = "my-template-for-auto-scaling",
          Version = "$Latest"
        )
      ),
      Preferences = list(
        InstanceWarmup = 400L,
        MinHealthyPercentage = 90L,
        SkipMatching = TRUE
      )
    )

    ## End(Not run)
