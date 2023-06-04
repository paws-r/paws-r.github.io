<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>eventbridge_activate_event_source</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Activates a partner event source that has been deactivated

### Description

Activates a partner event source that has been deactivated. Once
activated, your matching event bus will start receiving events from the
event source.

### Usage

    eventbridge_activate_event_source(Name)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="eventbridge_activate_event_source_:_Name">Name</code></td>
<td><p>[required] The name of the partner event source to
activate.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$activate_event_source(
      Name = "string"
    )
