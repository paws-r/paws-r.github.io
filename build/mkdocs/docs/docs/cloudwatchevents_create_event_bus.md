<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudwatchevents_create_event_bus</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a new event bus within your account

### Description

Creates a new event bus within your account. This can be a custom event
bus which you can use to receive events from your custom applications
and services, or it can be a partner event bus which can be matched to a
partner event source.

### Usage

    cloudwatchevents_create_event_bus(Name, EventSourceName, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="cloudwatchevents_create_event_bus_:_Name">Name</code></td>
<td><p>[required] The name of the new event bus.</p>
<p>Event bus names cannot contain the / character. You can't use the
name <code>default</code> for a custom event bus, as this name is
already used for your account's default event bus.</p>
<p>If this is a partner event bus, the name must exactly match the name
of the partner event source that this event bus is matched to.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatchevents_create_event_bus_:_EventSourceName">EventSourceName</code></td>
<td><p>If you are creating a partner event bus, this specifies the
partner event source that the new event bus will be matched
with.</p></td>
</tr>
<tr class="odd">
<td><code id="cloudwatchevents_create_event_bus_:_Tags">Tags</code></td>
<td><p>Tags to associate with the event bus.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      EventBusArn = "string"
    )

### Request syntax

    svc$create_event_bus(
      Name = "string",
      EventSourceName = "string",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
