<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>autoscaling_describe_auto_scaling_groups</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets information about the Auto Scaling groups in the account and Region

### Description

Gets information about the Auto Scaling groups in the account and
Region.

If you specify Auto Scaling group names, the output includes information
for only the specified Auto Scaling groups. If you specify filters, the
output includes information for only those Auto Scaling groups that meet
the filter criteria. If you do not specify group names or filters, the
output includes information for all Auto Scaling groups.

This operation also returns information about instances in Auto Scaling
groups. To retrieve information about the instances in a warm pool, you
must call the `describe_warm_pool` API.

### Usage

    autoscaling_describe_auto_scaling_groups(AutoScalingGroupNames,
      NextToken, MaxRecords, Filters)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="autoscaling_describe_auto_scaling_groups_:_AutoScalingGroupNames">AutoScalingGroupNames</code></td>
<td><p>The names of the Auto Scaling groups. By default, you can only
specify up to 50 names. You can optionally increase this limit using the
<code>MaxRecords</code> property.</p>
<p>If you omit this property, all Auto Scaling groups are
described.</p></td>
</tr>
<tr class="even">
<td><code
id="autoscaling_describe_auto_scaling_groups_:_NextToken">NextToken</code></td>
<td><p>The token for the next set of items to return. (You received this
token from a previous call.)</p></td>
</tr>
<tr class="odd">
<td><code
id="autoscaling_describe_auto_scaling_groups_:_MaxRecords">MaxRecords</code></td>
<td><p>The maximum number of items to return with this call. The default
value is <code>50</code> and the maximum value is
<code>100</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="autoscaling_describe_auto_scaling_groups_:_Filters">Filters</code></td>
<td><p>One or more filters to limit the results based on specific
tags.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      AutoScalingGroups = list(
        list(
          AutoScalingGroupName = "string",
          AutoScalingGroupARN = "string",
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
          PredictedCapacity = 123,
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
          Instances = list(
            list(
              InstanceId = "string",
              InstanceType = "string",
              AvailabilityZone = "string",
              LifecycleState = "Pending"|"Pending:Wait"|"Pending:Proceed"|"Quarantined"|"InService"|"Terminating"|"Terminating:Wait"|"Terminating:Proceed"|"Terminated"|"Detaching"|"Detached"|"EnteringStandby"|"Standby"|"Warmed:Pending"|"Warmed:Pending:Wait"|"Warmed:Pending:Proceed"|"Warmed:Terminating"|"Warmed:Terminating:Wait"|"Warmed:Terminating:Proceed"|"Warmed:Terminated"|"Warmed:Stopped"|"Warmed:Running"|"Warmed:Hibernated",
              HealthStatus = "string",
              LaunchConfigurationName = "string",
              LaunchTemplate = list(
                LaunchTemplateId = "string",
                LaunchTemplateName = "string",
                Version = "string"
              ),
              ProtectedFromScaleIn = TRUE|FALSE,
              WeightedCapacity = "string"
            )
          ),
          CreatedTime = as.POSIXct(
            "2015-01-01"
          ),
          SuspendedProcesses = list(
            list(
              ProcessName = "string",
              SuspensionReason = "string"
            )
          ),
          PlacementGroup = "string",
          VPCZoneIdentifier = "string",
          EnabledMetrics = list(
            list(
              Metric = "string",
              Granularity = "string"
            )
          ),
          Status = "string",
          Tags = list(
            list(
              ResourceId = "string",
              ResourceType = "string",
              Key = "string",
              Value = "string",
              PropagateAtLaunch = TRUE|FALSE
            )
          ),
          TerminationPolicies = list(
            "string"
          ),
          NewInstancesProtectedFromScaleIn = TRUE|FALSE,
          ServiceLinkedRoleARN = "string",
          MaxInstanceLifetime = 123,
          CapacityRebalance = TRUE|FALSE,
          WarmPoolConfiguration = list(
            MaxGroupPreparedCapacity = 123,
            MinSize = 123,
            PoolState = "Stopped"|"Running"|"Hibernated",
            Status = "PendingDelete",
            InstanceReusePolicy = list(
              ReuseOnScaleIn = TRUE|FALSE
            )
          ),
          WarmPoolSize = 123,
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
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_auto_scaling_groups(
      AutoScalingGroupNames = list(
        "string"
      ),
      NextToken = "string",
      MaxRecords = 123,
      Filters = list(
        list(
          Name = "string",
          Values = list(
            "string"
          )
        )
      )
    )

### Examples

    ## Not run: 
    # This example describes the specified Auto Scaling group.
    svc$describe_auto_scaling_groups(
      AutoScalingGroupNames = list(
        "my-auto-scaling-group"
      )
    )

    ## End(Not run)
