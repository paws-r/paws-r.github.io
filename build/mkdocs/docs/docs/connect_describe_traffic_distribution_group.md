<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>connect_describe_traffic_distribution_group</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets details and status of a traffic distribution group

### Description

Gets details and status of a traffic distribution group.

### Usage

    connect_describe_traffic_distribution_group(TrafficDistributionGroupId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="connect_describe_traffic_distribution_group_:_TrafficDistributionGroupId">TrafficDistributionGroupId</code></td>
<td><p>[required] The identifier of the traffic distribution group. This
can be the ID or the ARN if the API is being called in the Region where
the traffic distribution group was created. The ARN must be provided if
the call is from the replicated Region.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      TrafficDistributionGroup = list(
        Id = "string",
        Arn = "string",
        Name = "string",
        Description = "string",
        InstanceArn = "string",
        Status = "CREATION_IN_PROGRESS"|"ACTIVE"|"CREATION_FAILED"|"PENDING_DELETION"|"DELETION_FAILED"|"UPDATE_IN_PROGRESS",
        Tags = list(
          "string"
        )
      )
    )

### Request syntax

    svc$describe_traffic_distribution_group(
      TrafficDistributionGroupId = "string"
    )
