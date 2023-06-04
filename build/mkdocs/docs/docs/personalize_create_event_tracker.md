<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>personalize_create_event_tracker</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates an event tracker that you use when adding event data to a specified dataset group using the PutEvents API

### Description

Creates an event tracker that you use when adding event data to a
specified dataset group using the
[PutEvents](https://docs.aws.amazon.com/personalize/latest/dg/API_UBS_PutEvents.html)
API.

Only one event tracker can be associated with a dataset group. You will
get an error if you call `create_event_tracker` using the same dataset
group as an existing event tracker.

When you create an event tracker, the response includes a tracking ID,
which you pass as a parameter when you use the
[PutEvents](https://docs.aws.amazon.com/personalize/latest/dg/API_UBS_PutEvents.html)
operation. Amazon Personalize then appends the event data to the
Interactions dataset of the dataset group you specify in your event
tracker.

The event tracker can be in one of the following states:

-   CREATE PENDING \\ CREATE IN\_PROGRESS \\ ACTIVE -or- CREATE FAILED

-   DELETE PENDING \\ DELETE IN\_PROGRESS

To get the status of the event tracker, call `describe_event_tracker`.

The event tracker must be in the ACTIVE state before using the tracking
ID.

**Related APIs**

-   `list_event_trackers`

-   `describe_event_tracker`

-   `delete_event_tracker`

### Usage

    personalize_create_event_tracker(name, datasetGroupArn, tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="personalize_create_event_tracker_:_name">name</code></td>
<td><p>[required] The name for the event tracker.</p></td>
</tr>
<tr class="even">
<td><code
id="personalize_create_event_tracker_:_datasetGroupArn">datasetGroupArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the dataset group
that receives the event data.</p></td>
</tr>
<tr class="odd">
<td><code id="personalize_create_event_tracker_:_tags">tags</code></td>
<td><p>A list of tags to apply to the event tracker.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      eventTrackerArn = "string",
      trackingId = "string"
    )

### Request syntax

    svc$create_event_tracker(
      name = "string",
      datasetGroupArn = "string",
      tags = list(
        list(
          tagKey = "string",
          tagValue = "string"
        )
      )
    )
