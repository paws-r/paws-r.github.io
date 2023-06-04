<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>connect_get_current_user_data</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets the real-time active user data from the specified Amazon Connect instance

### Description

Gets the real-time active user data from the specified Amazon Connect
instance.

### Usage

    connect_get_current_user_data(InstanceId, Filters, NextToken,
      MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="connect_get_current_user_data_:_InstanceId">InstanceId</code></td>
<td><p>[required] The identifier of the Amazon Connect instance. You can
<a
href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find
the instance ID</a> in the Amazon Resource Name (ARN) of the
instance.</p></td>
</tr>
<tr class="even">
<td><code
id="connect_get_current_user_data_:_Filters">Filters</code></td>
<td><p>[required] The filters to apply to returned user data. You can
filter up to the following limits:</p>
<ul>
<li><p>Queues: 100</p></li>
<li><p>Routing profiles: 100</p></li>
<li><p>Agents: 100</p></li>
<li><p>Contact states: 9</p></li>
<li><p>User hierarchy groups: 1</p></li>
</ul>
<p>The user data is retrieved for only the specified values/resources in
the filter. A maximum of one filter can be passed from queues, routing
profiles, agents, and user hierarchy groups.</p>
<p>Currently tagging is only supported on the resources that are passed
in the filter.</p></td>
</tr>
<tr class="odd">
<td><code
id="connect_get_current_user_data_:_NextToken">NextToken</code></td>
<td><p>The token for the next set of results. Use the value returned in
the previous response in the next request to retrieve the next set of
results.</p></td>
</tr>
<tr class="even">
<td><code
id="connect_get_current_user_data_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return per page.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      NextToken = "string",
      UserDataList = list(
        list(
          User = list(
            Id = "string",
            Arn = "string"
          ),
          RoutingProfile = list(
            Id = "string",
            Arn = "string"
          ),
          HierarchyPath = list(
            LevelOne = list(
              Id = "string",
              Arn = "string"
            ),
            LevelTwo = list(
              Id = "string",
              Arn = "string"
            ),
            LevelThree = list(
              Id = "string",
              Arn = "string"
            ),
            LevelFour = list(
              Id = "string",
              Arn = "string"
            ),
            LevelFive = list(
              Id = "string",
              Arn = "string"
            )
          ),
          Status = list(
            StatusStartTimestamp = as.POSIXct(
              "2015-01-01"
            ),
            StatusArn = "string",
            StatusName = "string"
          ),
          AvailableSlotsByChannel = list(
            123
          ),
          MaxSlotsByChannel = list(
            123
          ),
          ActiveSlotsByChannel = list(
            123
          ),
          Contacts = list(
            list(
              ContactId = "string",
              Channel = "VOICE"|"CHAT"|"TASK",
              InitiationMethod = "INBOUND"|"OUTBOUND"|"TRANSFER"|"QUEUE_TRANSFER"|"CALLBACK"|"API"|"DISCONNECT"|"MONITOR"|"EXTERNAL_OUTBOUND",
              AgentContactState = "INCOMING"|"PENDING"|"CONNECTING"|"CONNECTED"|"CONNECTED_ONHOLD"|"MISSED"|"ERROR"|"ENDED"|"REJECTED",
              StateStartTimestamp = as.POSIXct(
                "2015-01-01"
              ),
              ConnectedToAgentTimestamp = as.POSIXct(
                "2015-01-01"
              ),
              Queue = list(
                Id = "string",
                Arn = "string"
              )
            )
          ),
          NextStatus = "string"
        )
      ),
      ApproximateTotalCount = 123
    )

### Request syntax

    svc$get_current_user_data(
      InstanceId = "string",
      Filters = list(
        Queues = list(
          "string"
        ),
        ContactFilter = list(
          ContactStates = list(
            "INCOMING"|"PENDING"|"CONNECTING"|"CONNECTED"|"CONNECTED_ONHOLD"|"MISSED"|"ERROR"|"ENDED"|"REJECTED"
          )
        ),
        RoutingProfiles = list(
          "string"
        ),
        Agents = list(
          "string"
        ),
        UserHierarchyGroups = list(
          "string"
        )
      ),
      NextToken = "string",
      MaxResults = 123
    )
