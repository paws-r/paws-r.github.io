<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>emr_list_instances</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Provides information for all active Amazon EC2 instances and Amazon EC2 instances terminated in the last 30 days, up to a maximum of 2,000

### Description

Provides information for all active Amazon EC2 instances and Amazon EC2
instances terminated in the last 30 days, up to a maximum of 2,000.
Amazon EC2 instances in any of the following states are considered
active: AWAITING\_FULFILLMENT, PROVISIONING, BOOTSTRAPPING, RUNNING.

### Usage

    emr_list_instances(ClusterId, InstanceGroupId, InstanceGroupTypes,
      InstanceFleetId, InstanceFleetType, InstanceStates, Marker)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="emr_list_instances_:_ClusterId">ClusterId</code></td>
<td><p>[required] The identifier of the cluster for which to list the
instances.</p></td>
</tr>
<tr class="even">
<td><code
id="emr_list_instances_:_InstanceGroupId">InstanceGroupId</code></td>
<td><p>The identifier of the instance group for which to list the
instances.</p></td>
</tr>
<tr class="odd">
<td><code
id="emr_list_instances_:_InstanceGroupTypes">InstanceGroupTypes</code></td>
<td><p>The type of instance group for which to list the
instances.</p></td>
</tr>
<tr class="even">
<td><code
id="emr_list_instances_:_InstanceFleetId">InstanceFleetId</code></td>
<td><p>The unique identifier of the instance fleet.</p></td>
</tr>
<tr class="odd">
<td><code
id="emr_list_instances_:_InstanceFleetType">InstanceFleetType</code></td>
<td><p>The node type of the instance fleet. For example MASTER, CORE, or
TASK.</p></td>
</tr>
<tr class="even">
<td><code
id="emr_list_instances_:_InstanceStates">InstanceStates</code></td>
<td><p>A list of instance states that will filter the instances returned
with this request.</p></td>
</tr>
<tr class="odd">
<td><code id="emr_list_instances_:_Marker">Marker</code></td>
<td><p>The pagination token that indicates the next set of results to
retrieve.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Instances = list(
        list(
          Id = "string",
          Ec2InstanceId = "string",
          PublicDnsName = "string",
          PublicIpAddress = "string",
          PrivateDnsName = "string",
          PrivateIpAddress = "string",
          Status = list(
            State = "AWAITING_FULFILLMENT"|"PROVISIONING"|"BOOTSTRAPPING"|"RUNNING"|"TERMINATED",
            StateChangeReason = list(
              Code = "INTERNAL_ERROR"|"VALIDATION_ERROR"|"INSTANCE_FAILURE"|"BOOTSTRAP_FAILURE"|"CLUSTER_TERMINATED",
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
          InstanceGroupId = "string",
          InstanceFleetId = "string",
          Market = "ON_DEMAND"|"SPOT",
          InstanceType = "string",
          EbsVolumes = list(
            list(
              Device = "string",
              VolumeId = "string"
            )
          )
        )
      ),
      Marker = "string"
    )

### Request syntax

    svc$list_instances(
      ClusterId = "string",
      InstanceGroupId = "string",
      InstanceGroupTypes = list(
        "MASTER"|"CORE"|"TASK"
      ),
      InstanceFleetId = "string",
      InstanceFleetType = "MASTER"|"CORE"|"TASK",
      InstanceStates = list(
        "AWAITING_FULFILLMENT"|"PROVISIONING"|"BOOTSTRAPPING"|"RUNNING"|"TERMINATED"
      ),
      Marker = "string"
    )
