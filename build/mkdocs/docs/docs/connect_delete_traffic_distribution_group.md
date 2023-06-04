<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>connect_delete_traffic_distribution_group</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a traffic distribution group

### Description

Deletes a traffic distribution group. This API can be called only in the
Region where the traffic distribution group is created.

For more information about deleting traffic distribution groups, see
[Delete traffic distribution
groups](https://docs.aws.amazon.com/connect/latest/adminguide/delete-traffic-distribution-groups.html)
in the *Amazon Connect Administrator Guide*.

### Usage

    connect_delete_traffic_distribution_group(TrafficDistributionGroupId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="connect_delete_traffic_distribution_group_:_TrafficDistributionGroupId">TrafficDistributionGroupId</code></td>
<td><p>[required] The identifier of the traffic distribution group. This
can be the ID or the ARN if the API is being called in the Region where
the traffic distribution group was created. The ARN must be provided if
the call is from the replicated Region.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_traffic_distribution_group(
      TrafficDistributionGroupId = "string"
    )
