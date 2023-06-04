<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>emr_modify_instance_fleet</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Modifies the target On-Demand and target Spot capacities for the instance fleet with the specified InstanceFleetID within the cluster specified using ClusterID

### Description

Modifies the target On-Demand and target Spot capacities for the
instance fleet with the specified InstanceFleetID within the cluster
specified using ClusterID. The call either succeeds or fails atomically.

The instance fleet configuration is available only in Amazon EMR
releases 4.8.0 and later, excluding 5.0.x versions.

### Usage

    emr_modify_instance_fleet(ClusterId, InstanceFleet)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="emr_modify_instance_fleet_:_ClusterId">ClusterId</code></td>
<td><p>[required] The unique identifier of the cluster.</p></td>
</tr>
<tr class="even">
<td><code
id="emr_modify_instance_fleet_:_InstanceFleet">InstanceFleet</code></td>
<td><p>[required] The configuration parameters of the instance
fleet.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$modify_instance_fleet(
      ClusterId = "string",
      InstanceFleet = list(
        InstanceFleetId = "string",
        TargetOnDemandCapacity = 123,
        TargetSpotCapacity = 123,
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
