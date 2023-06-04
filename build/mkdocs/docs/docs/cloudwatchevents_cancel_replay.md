<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudwatchevents_cancel_replay</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Cancels the specified replay

### Description

Cancels the specified replay.

### Usage

    cloudwatchevents_cancel_replay(ReplayName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudwatchevents_cancel_replay_:_ReplayName">ReplayName</code></td>
<td><p>[required] The name of the replay to cancel.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ReplayArn = "string",
      State = "STARTING"|"RUNNING"|"CANCELLING"|"COMPLETED"|"CANCELLED"|"FAILED",
      StateReason = "string"
    )

### Request syntax

    svc$cancel_replay(
      ReplayName = "string"
    )
