<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudwatchevents_start_replay</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Starts the specified replay

### Description

Starts the specified replay. Events are not necessarily replayed in the
exact same order that they were added to the archive. A replay processes
events to replay based on the time in the event, and replays them using
1 minute intervals. If you specify an `EventStartTime` and an
`EventEndTime` that covers a 20 minute time range, the events are
replayed from the first minute of that 20 minute range first. Then the
events from the second minute are replayed. You can use
`describe_replay` to determine the progress of a replay. The value
returned for `EventLastReplayedTime` indicates the time within the
specified time range associated with the last event replayed.

### Usage

    cloudwatchevents_start_replay(ReplayName, Description, EventSourceArn,
      EventStartTime, EventEndTime, Destination)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudwatchevents_start_replay_:_ReplayName">ReplayName</code></td>
<td><p>[required] The name of the replay to start.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatchevents_start_replay_:_Description">Description</code></td>
<td><p>A description for the replay to start.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudwatchevents_start_replay_:_EventSourceArn">EventSourceArn</code></td>
<td><p>[required] The ARN of the archive to replay events from.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatchevents_start_replay_:_EventStartTime">EventStartTime</code></td>
<td><p>[required] A time stamp for the time to start replaying events.
Only events that occurred between the <code>EventStartTime</code> and
<code>EventEndTime</code> are replayed.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudwatchevents_start_replay_:_EventEndTime">EventEndTime</code></td>
<td><p>[required] A time stamp for the time to stop replaying events.
Only events that occurred between the <code>EventStartTime</code> and
<code>EventEndTime</code> are replayed.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatchevents_start_replay_:_Destination">Destination</code></td>
<td><p>[required] A <code>ReplayDestination</code> object that includes
details about the destination for the replay.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ReplayArn = "string",
      State = "STARTING"|"RUNNING"|"CANCELLING"|"COMPLETED"|"CANCELLED"|"FAILED",
      StateReason = "string",
      ReplayStartTime = as.POSIXct(
        "2015-01-01"
      )
    )

### Request syntax

    svc$start_replay(
      ReplayName = "string",
      Description = "string",
      EventSourceArn = "string",
      EventStartTime = as.POSIXct(
        "2015-01-01"
      ),
      EventEndTime = as.POSIXct(
        "2015-01-01"
      ),
      Destination = list(
        Arn = "string",
        FilterArns = list(
          "string"
        )
      )
    )
