<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudwatchevents_list_replays</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists your replays

### Description

Lists your replays. You can either list all the replays or you can
provide a prefix to match to the replay names. Filter parameters are
exclusive.

### Usage

    cloudwatchevents_list_replays(NamePrefix, State, EventSourceArn,
      NextToken, Limit)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudwatchevents_list_replays_:_NamePrefix">NamePrefix</code></td>
<td><p>A name prefix to filter the replays returned. Only replays with
name that match the prefix are returned.</p></td>
</tr>
<tr class="even">
<td><code id="cloudwatchevents_list_replays_:_State">State</code></td>
<td><p>The state of the replay.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudwatchevents_list_replays_:_EventSourceArn">EventSourceArn</code></td>
<td><p>The ARN of the archive from which the events are
replayed.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatchevents_list_replays_:_NextToken">NextToken</code></td>
<td><p>The token returned by a previous call to retrieve the next set of
results.</p></td>
</tr>
<tr class="odd">
<td><code id="cloudwatchevents_list_replays_:_Limit">Limit</code></td>
<td><p>The maximum number of replays to retrieve.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Replays = list(
        list(
          ReplayName = "string",
          EventSourceArn = "string",
          State = "STARTING"|"RUNNING"|"CANCELLING"|"COMPLETED"|"CANCELLED"|"FAILED",
          StateReason = "string",
          EventStartTime = as.POSIXct(
            "2015-01-01"
          ),
          EventEndTime = as.POSIXct(
            "2015-01-01"
          ),
          EventLastReplayedTime = as.POSIXct(
            "2015-01-01"
          ),
          ReplayStartTime = as.POSIXct(
            "2015-01-01"
          ),
          ReplayEndTime = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_replays(
      NamePrefix = "string",
      State = "STARTING"|"RUNNING"|"CANCELLING"|"COMPLETED"|"CANCELLED"|"FAILED",
      EventSourceArn = "string",
      NextToken = "string",
      Limit = 123
    )
