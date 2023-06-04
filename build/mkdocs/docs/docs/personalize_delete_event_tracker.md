<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>personalize_delete_event_tracker</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the event tracker

### Description

Deletes the event tracker. Does not delete the event-interactions
dataset from the associated dataset group. For more information on event
trackers, see `create_event_tracker`.

### Usage

    personalize_delete_event_tracker(eventTrackerArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="personalize_delete_event_tracker_:_eventTrackerArn">eventTrackerArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the event tracker to
delete.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_event_tracker(
      eventTrackerArn = "string"
    )
