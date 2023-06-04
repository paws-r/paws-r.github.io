<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>emr_list_instance_fleets</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists all available details about the instance fleets in a cluster

### Description

Lists all available details about the instance fleets in a cluster.

The instance fleet configuration is available only in Amazon EMR
releases 4.8.0 and later, excluding 5.0.x versions.

### Usage

    emr_list_instance_fleets(ClusterId, Marker)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="emr_list_instance_fleets_:_ClusterId">ClusterId</code></td>
<td><p>[required] The unique identifier of the cluster.</p></td>
</tr>
<tr class="even">
<td><code id="emr_list_instance_fleets_:_Marker">Marker</code></td>
<td><p>The pagination token that indicates the next set of results to
retrieve.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      InstanceFleets = list(
        list(
          Id = "string",
          Name = "string",
          Status = list(
            State = "PROVISIONING"|"BOOTSTRAPPING"|"RUNNING"|"RESIZING"|"SUSPENDED"|"TERMINATING"|"TERMINATED",
            StateChangeReason = list(
              Code = "INTERNAL_ERROR"|"VALIDATION_ERROR"|"INSTANCE_FAILURE"|"CLUSTER_TERMINATED",
              Message = "string"
            ),
            Timeline = list(
              CreationDateTime = as.POSIXct(
                "2015-01-01"
              ),
              ReadyDateTime = as.POSIXct(
                "2015-01-01"
              ),
              EndDateTime = as.POSIXct(
                "2015-01-01"
              )
            )
          ),
          InstanceFleetType = "MASTER"|"CORE"|"TASK",
          TargetOnDemandCapacity = 123,
          TargetSpotCapacity = 123,
          ProvisionedOnDemandCapacity = 123,
          ProvisionedSpotCapacity = 123,
          InstanceTypeSpecifications = list(
            list(
              InstanceType = "string",
              WeightedCapacity = 123,
              BidPrice = "string",
              BidPriceAsPercentageOfOnDemandPrice = 123.0,
              Configurations = list(
                list(
                  Classification = "string",
                  Configurations = list(),
                  Properties = list(
                    "string"
                  )
                )
              ),
              EbsBlockDevices = list(
                list(
                  VolumeSpecification = list(
                    VolumeType = "string",
                    Iops = 123,
                    SizeInGB = 123,
                    Throughput = 123
                  ),
                  Device = "string"
                )
              ),
              EbsOptimized = TRUE|FALSE,
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
      ),
      Marker = "string"
    )

### Request syntax

    svc$list_instance_fleets(
      ClusterId = "string",
      Marker = "string"
    )
