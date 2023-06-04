<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>emr_add_instance_fleet</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Adds an instance fleet to a running cluster

### Description

Adds an instance fleet to a running cluster.

The instance fleet configuration is available only in Amazon EMR
releases 4.8.0 and later, excluding 5.0.x.

### Usage

    emr_add_instance_fleet(ClusterId, InstanceFleet)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="emr_add_instance_fleet_:_ClusterId">ClusterId</code></td>
<td><p>[required] The unique identifier of the cluster.</p></td>
</tr>
<tr class="even">
<td><code
id="emr_add_instance_fleet_:_InstanceFleet">InstanceFleet</code></td>
<td><p>[required] Specifies the configuration of the instance
fleet.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ClusterId = "string",
      InstanceFleetId = "string",
      ClusterArn = "string"
    )

### Request syntax

    svc$add_instance_fleet(
      ClusterId = "string",
      InstanceFleet = list(
        Name = "string",
        InstanceFleetType = "MASTER"|"CORE"|"TASK",
        TargetOnDemandCapacity = 123,
        TargetSpotCapacity = 123,
        InstanceTypeConfigs = list(
          list(
            InstanceType = "string",
            WeightedCapacity = 123,
            BidPrice = "string",
            BidPriceAsPercentageOfOnDemandPrice = 123.0,
            EbsConfiguration = list(
              EbsBlockDeviceConfigs = list(
                list(
                  VolumeSpecification = list(
                    VolumeType = "string",
                    Iops = 123,
                    SizeInGB = 123,
                    Throughput = 123
                  ),
                  VolumesPerInstance = 123
                )
              ),
              EbsOptimized = TRUE|FALSE
            ),
            Configurations = list(
              list(
                Classification = "string",
                Configurations = list(),
                Properties = list(
                  "string"
                )
              )
            ),
            CustomAmiId = "string"
          )
        ),
        LaunchSpecifications = list(
          SpotSpecification = list(
            TimeoutDurationMinutes = 123,
            TimeoutAction = "SWITCH_TO_ON_DEMAND"|"TERMINATE_CLUSTER",
            BlockDurationMinutes = 123,
            AllocationStrategy = "capacity-optimized"
          ),
          OnDemandSpecification = list(
            AllocationStrategy = "lowest-price",
            CapacityReservationOptions = list(
              UsageStrategy = "use-capacity-reservations-first",
              CapacityReservationPreference = "open"|"none",
              CapacityReservationResourceGroupArn = "string"
            )
          )
        ),
        ResizeSpecifications = list(
          SpotResizeSpecification = list(
            TimeoutDurationMinutes = 123
          ),
          OnDemandResizeSpecification = list(
            TimeoutDurationMinutes = 123
          )
        )
      )
    )
