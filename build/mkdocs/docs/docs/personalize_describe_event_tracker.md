<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>personalize_describe_event_tracker</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes an event tracker

### Description

Describes an event tracker. The response includes the `trackingId` and
`status` of the event tracker. For more information on event trackers,
see `create_event_tracker`.

### Usage

    personalize_describe_event_tracker(eventTrackerArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="personalize_describe_event_tracker_:_eventTrackerArn">eventTrackerArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the event tracker to
describe.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      eventTracker = list(
        name = "string",
        eventTrackerArn = "string",
        accountId = "string",
        trackingId = "string",
        datasetGroupArn = "string",
        status = "string",
        creationDateTime = as.POSIXct(
          "2015-01-01"
        ),
        lastUpdatedDateTime = as.POSIXct(
          "2015-01-01"
        )
      )
    )

### Request syntax

    svc$describe_event_tracker(
      eventTrackerArn = "string"
    )
