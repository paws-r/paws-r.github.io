<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>connect_list_agent_statuses</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## This API is in preview release for Amazon Connect and is subject to change

### Description

This API is in preview release for Amazon Connect and is subject to
change.

Lists agent statuses.

### Usage

    connect_list_agent_statuses(InstanceId, NextToken, MaxResults,
      AgentStatusTypes)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="connect_list_agent_statuses_:_InstanceId">InstanceId</code></td>
<td><p>[required] The identifier of the Amazon Connect instance. You can
<a
href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find
the instance ID</a> in the Amazon Resource Name (ARN) of the
instance.</p></td>
</tr>
<tr class="even">
<td><code
id="connect_list_agent_statuses_:_NextToken">NextToken</code></td>
<td><p>The token for the next set of results. Use the value returned in
the previous response in the next request to retrieve the next set of
results.</p></td>
</tr>
<tr class="odd">
<td><code
id="connect_list_agent_statuses_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return per page.</p></td>
</tr>
<tr class="even">
<td><code
id="connect_list_agent_statuses_:_AgentStatusTypes">AgentStatusTypes</code></td>
<td><p>Available agent status types.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      NextToken = "string",
      AgentStatusSummaryList = list(
        list(
          Id = "string",
          Arn = "string",
          Name = "string",
          Type = "ROUTABLE"|"CUSTOM"|"OFFLINE"
        )
      )
    )

### Request syntax

    svc$list_agent_statuses(
      InstanceId = "string",
      NextToken = "string",
      MaxResults = 123,
      AgentStatusTypes = list(
        "ROUTABLE"|"CUSTOM"|"OFFLINE"
      )
    )
