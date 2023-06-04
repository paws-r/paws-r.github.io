<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>autoscaling_describe_instance_refreshes</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets information about the instance refreshes for the specified Auto Scaling group

### Description

Gets information about the instance refreshes for the specified Auto
Scaling group.

This operation is part of the [instance refresh
feature](https://docs.aws.amazon.com/autoscaling/ec2/userguide/asg-instance-refresh.html)
in Amazon EC2 Auto Scaling, which helps you update instances in your
Auto Scaling group after you make configuration changes.

To help you determine the status of an instance refresh, Amazon EC2 Auto
Scaling returns information about the instance refreshes you previously
initiated, including their status, start time, end time, the percentage
of the instance refresh that is complete, and the number of instances
remaining to update before the instance refresh is complete. If a
rollback is initiated while an instance refresh is in progress, Amazon
EC2 Auto Scaling also returns information about the rollback of the
instance refresh.

### Usage

    autoscaling_describe_instance_refreshes(AutoScalingGroupName,
      InstanceRefreshIds, NextToken, MaxRecords)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="autoscaling_describe_instance_refreshes_:_AutoScalingGroupName">AutoScalingGroupName</code></td>
<td><p>[required] The name of the Auto Scaling group.</p></td>
</tr>
<tr class="even">
<td><code
id="autoscaling_describe_instance_refreshes_:_InstanceRefreshIds">InstanceRefreshIds</code></td>
<td><p>One or more instance refresh IDs.</p></td>
</tr>
<tr class="odd">
<td><code
id="autoscaling_describe_instance_refreshes_:_NextToken">NextToken</code></td>
<td><p>The token for the next set of items to return. (You received this
token from a previous call.)</p></td>
</tr>
<tr class="even">
<td><code
id="autoscaling_describe_instance_refreshes_:_MaxRecords">MaxRecords</code></td>
<td><p>The maximum number of items to return with this call. The default
value is <code>50</code> and the maximum value is
<code>100</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      InstanceRefreshes = list(
        list(
          InstanceRefreshId = "string",
          AutoScalingGroupName = "string",
          Status = "Pending"|"InProgress"|"Successful"|"Failed"|"Cancelling"|"Cancelled"|"RollbackInProgress"|"RollbackFailed"|"RollbackSuccessful",
          StatusReason = "string",
          StartTime = as.POSIXct(
            "2015-01-01"
          ),
          EndTime = as.POSIXct(
            "2015-01-01"
          ),
          PercentageComplete = 123,
          InstancesToUpdate = 123,
          ProgressDetails = list(
            LivePoolProgress = list(
              PercentageComplete = 123,
              InstancesToUpdate = 123
            ),
            WarmPoolProgress = list(
              PercentageComplete = 123,
              InstancesToUpdate = 123
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
          ),
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
          RollbackDetails = list(
            RollbackReason = "string",
            RollbackStartTime = as.POSIXct(
              "2015-01-01"
            ),
            PercentageCompleteOnRollback = 123,
            InstancesToUpdateOnRollback = 123,
            ProgressDetailsOnRollback = list(
              LivePoolProgress = list(
                PercentageComplete = 123,
                InstancesToUpdate = 123
              ),
              WarmPoolProgress = list(
                PercentageComplete = 123,
                InstancesToUpdate = 123
              )
            )
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_instance_refreshes(
      AutoScalingGroupName = "string",
      InstanceRefreshIds = list(
        "string"
      ),
      NextToken = "string",
      MaxRecords = 123
    )

### Examples

    ## Not run: 
    # This example describes the instance refreshes for the specified Auto
    # Scaling group.
    svc$describe_instance_refreshes(
      AutoScalingGroupName = "my-auto-scaling-group"
    )

    ## End(Not run)
