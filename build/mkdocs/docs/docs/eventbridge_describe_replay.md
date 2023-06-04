<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>eventbridge_describe_replay</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves details about a replay

### Description

Retrieves details about a replay. Use `describe_replay` to determine the
progress of a running replay. A replay processes events to replay based
on the time in the event, and replays them using 1 minute intervals. If
you use `start_replay` and specify an `EventStartTime` and an
`EventEndTime` that covers a 20 minute time range, the events are
replayed from the first minute of that 20 minute range first. Then the
events from the second minute are replayed. You can use
`describe_replay` to determine the progress of a replay. The value
returned for `EventLastReplayedTime` indicates the time within the
specified time range associated with the last event replayed.

### Usage

    eventbridge_describe_replay(ReplayName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="eventbridge_describe_replay_:_ReplayName">ReplayName</code></td>
<td><p>[required] The name of the replay to retrieve.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ReplayName = "string",
      ReplayArn = "string",
      Description = "string",
      State = "STARTING"|"RUNNING"|"CANCELLING"|"COMPLETED"|"CANCELLED"|"FAILED",
      StateReason = "string",
      EventSourceArn = "string",
      Destination = list(
        Arn = "string",
        FilterArns = list(
          "string"
        )
      ),
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

### Request syntax

    svc$describe_replay(
      ReplayName = "string"
    )
