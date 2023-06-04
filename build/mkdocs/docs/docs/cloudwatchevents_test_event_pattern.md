<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudwatchevents_test_event_pattern</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Tests whether the specified event pattern matches the provided event

### Description

Tests whether the specified event pattern matches the provided event.

Most services in Amazon Web Services treat : or / as the same character
in Amazon Resource Names (ARNs). However, EventBridge uses an exact
match in event patterns and rules. Be sure to use the correct ARN
characters when creating event patterns so that they match the ARN
syntax in the event you want to match.

### Usage

    cloudwatchevents_test_event_pattern(EventPattern, Event)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudwatchevents_test_event_pattern_:_EventPattern">EventPattern</code></td>
<td><p>[required] The event pattern. For more information, see <a
href="https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-events.html">Events
and Event Patterns</a> in the <em>Amazon EventBridge User
Guide</em>.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatchevents_test_event_pattern_:_Event">Event</code></td>
<td><p>[required] The event, in JSON format, to test against the event
pattern. The JSON must follow the format specified in <a
href="https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-events.html">Amazon
Web Services Events</a>, and the following fields are mandatory:</p>
<ul>
<li><p><code>id</code></p></li>
<li><p><code>account</code></p></li>
<li><p><code>source</code></p></li>
<li><p><code>time</code></p></li>
<li><p><code>region</code></p></li>
<li><p><code>resources</code></p></li>
<li><p><code>detail-type</code></p></li>
</ul></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Result = TRUE|FALSE
    )

### Request syntax

    svc$test_event_pattern(
      EventPattern = "string",
      Event = "string"
    )
