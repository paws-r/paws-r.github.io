<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudwatchevents_describe_event_bus</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Displays details about an event bus in your account

### Description

Displays details about an event bus in your account. This can include
the external Amazon Web Services accounts that are permitted to write
events to your default event bus, and the associated policy. For custom
event buses and partner event buses, it displays the name, ARN, policy,
state, and creation time.

To enable your account to receive events from other accounts on its
default event bus, use `put_permission`.

For more information about partner event buses, see `create_event_bus`.

### Usage

    cloudwatchevents_describe_event_bus(Name)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudwatchevents_describe_event_bus_:_Name">Name</code></td>
<td><p>The name or ARN of the event bus to show details for. If you omit
this, the default event bus is displayed.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Name = "string",
      Arn = "string",
      Policy = "string"
    )

### Request syntax

    svc$describe_event_bus(
      Name = "string"
    )
