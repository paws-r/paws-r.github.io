<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>redshift_describe_scheduled_actions</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes properties of scheduled actions

### Description

Describes properties of scheduled actions.

### Usage

    redshift_describe_scheduled_actions(ScheduledActionName,
      TargetActionType, StartTime, EndTime, Active, Filters, Marker,
      MaxRecords)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="redshift_describe_scheduled_actions_:_ScheduledActionName">ScheduledActionName</code></td>
<td><p>The name of the scheduled action to retrieve.</p></td>
</tr>
<tr class="even">
<td><code
id="redshift_describe_scheduled_actions_:_TargetActionType">TargetActionType</code></td>
<td><p>The type of the scheduled actions to retrieve.</p></td>
</tr>
<tr class="odd">
<td><code
id="redshift_describe_scheduled_actions_:_StartTime">StartTime</code></td>
<td><p>The start time in UTC of the scheduled actions to retrieve. Only
active scheduled actions that have invocations after this time are
retrieved.</p></td>
</tr>
<tr class="even">
<td><code
id="redshift_describe_scheduled_actions_:_EndTime">EndTime</code></td>
<td><p>The end time in UTC of the scheduled action to retrieve. Only
active scheduled actions that have invocations before this time are
retrieved.</p></td>
</tr>
<tr class="odd">
<td><code
id="redshift_describe_scheduled_actions_:_Active">Active</code></td>
<td><p>If true, retrieve only active scheduled actions. If false,
retrieve only disabled scheduled actions.</p></td>
</tr>
<tr class="even">
<td><code
id="redshift_describe_scheduled_actions_:_Filters">Filters</code></td>
<td><p>List of scheduled action filters.</p></td>
</tr>
<tr class="odd">
<td><code
id="redshift_describe_scheduled_actions_:_Marker">Marker</code></td>
<td><p>An optional parameter that specifies the starting point to return
a set of response records. When the results of a
<code>describe_scheduled_actions</code> request exceed the value
specified in <code>MaxRecords</code>, Amazon Web Services returns a
value in the <code>Marker</code> field of the response. You can retrieve
the next set of response records by providing the returned marker value
in the <code>Marker</code> parameter and retrying the request.</p></td>
</tr>
<tr class="even">
<td><code
id="redshift_describe_scheduled_actions_:_MaxRecords">MaxRecords</code></td>
<td><p>The maximum number of response records to return in each call. If
the number of remaining response records exceeds the specified
<code>MaxRecords</code> value, a value is returned in a
<code>marker</code> field of the response. You can retrieve the next set
of records by retrying the command with the returned marker value.</p>
<p>Default: <code>100</code></p>
<p>Constraints: minimum 20, maximum 100.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Marker = "string",
      ScheduledActions = list(
        list(
          ScheduledActionName = "string",
          TargetAction = list(
            ResizeCluster = list(
              ClusterIdentifier = "string",
              ClusterType = "string",
              NodeType = "string",
              NumberOfNodes = 123,
              Classic = TRUE|FALSE,
              ReservedNodeId = "string",
              TargetReservedNodeOfferingId = "string"
            ),
            PauseCluster = list(
              ClusterIdentifier = "string"
            ),
            ResumeCluster = list(
              ClusterIdentifier = "string"
            )
          ),
          Schedule = "string",
          IamRole = "string",
          ScheduledActionDescription = "string",
          State = "ACTIVE"|"DISABLED",
          NextInvocations = list(
            as.POSIXct(
              "2015-01-01"
            )
          ),
          StartTime = as.POSIXct(
            "2015-01-01"
          ),
          EndTime = as.POSIXct(
            "2015-01-01"
          )
        )
      )
    )

### Request syntax

    svc$describe_scheduled_actions(
      ScheduledActionName = "string",
      TargetActionType = "ResizeCluster"|"PauseCluster"|"ResumeCluster",
      StartTime = as.POSIXct(
        "2015-01-01"
      ),
      EndTime = as.POSIXct(
        "2015-01-01"
      ),
      Active = TRUE|FALSE,
      Filters = list(
        list(
          Name = "cluster-identifier"|"iam-role",
          Values = list(
            "string"
          )
        )
      ),
      Marker = "string",
      MaxRecords = 123
    )
