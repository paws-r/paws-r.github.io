<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>connect_list_traffic_distribution_groups</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists traffic distribution groups

### Description

Lists traffic distribution groups.

### Usage

    connect_list_traffic_distribution_groups(MaxResults, NextToken,
      InstanceId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="connect_list_traffic_distribution_groups_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return per page.</p></td>
</tr>
<tr class="even">
<td><code
id="connect_list_traffic_distribution_groups_:_NextToken">NextToken</code></td>
<td><p>The token for the next set of results. Use the value returned in
the previous response in the next request to retrieve the next set of
results.</p></td>
</tr>
<tr class="odd">
<td><code
id="connect_list_traffic_distribution_groups_:_InstanceId">InstanceId</code></td>
<td><p>The identifier of the Amazon Connect instance. You can <a
href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find
the instance ID</a> in the Amazon Resource Name (ARN) of the
instance.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      NextToken = "string",
      TrafficDistributionGroupSummaryList = list(
        list(
          Id = "string",
          Arn = "string",
          Name = "string",
          InstanceArn = "string",
          Status = "CREATION_IN_PROGRESS"|"ACTIVE"|"CREATION_FAILED"|"PENDING_DELETION"|"DELETION_FAILED"|"UPDATE_IN_PROGRESS"
        )
      )
    )

### Request syntax

    svc$list_traffic_distribution_groups(
      MaxResults = 123,
      NextToken = "string",
      InstanceId = "string"
    )
