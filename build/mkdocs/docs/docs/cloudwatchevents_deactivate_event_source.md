<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudwatchevents_deactivate_event_source</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## You can use this operation to temporarily stop receiving events from the specified partner event source

### Description

You can use this operation to temporarily stop receiving events from the
specified partner event source. The matching event bus is not deleted.

When you deactivate a partner event source, the source goes into PENDING
state. If it remains in PENDING state for more than two weeks, it is
deleted.

To activate a deactivated partner event source, use
`activate_event_source`.

### Usage

    cloudwatchevents_deactivate_event_source(Name)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudwatchevents_deactivate_event_source_:_Name">Name</code></td>
<td><p>[required] The name of the partner event source to
deactivate.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$deactivate_event_source(
      Name = "string"
    )
