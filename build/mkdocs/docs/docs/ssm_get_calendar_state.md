<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssm_get_calendar_state</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets the state of a Amazon Web Services Systems Manager change calendar at the current time or a specified time

### Description

Gets the state of a Amazon Web Services Systems Manager change calendar
at the current time or a specified time. If you specify a time,
`get_calendar_state` returns the state of the calendar at that specific
time, and returns the next time that the change calendar state will
transition. If you don't specify a time, `get_calendar_state` uses the
current time. Change Calendar entries have two possible states: `OPEN`
or `CLOSED`.

If you specify more than one calendar in a request, the command returns
the status of `OPEN` only if all calendars in the request are open. If
one or more calendars in the request are closed, the status returned is
`CLOSED`.

For more information about Change Calendar, a capability of Amazon Web
Services Systems Manager, see [Amazon Web Services Systems Manager
Change
Calendar](https://docs.aws.amazon.com/systems-manager/latest/userguide/systems-manager-change-calendar.html)
in the *Amazon Web Services Systems Manager User Guide*.

### Usage

    ssm_get_calendar_state(CalendarNames, AtTime)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ssm_get_calendar_state_:_CalendarNames">CalendarNames</code></td>
<td><p>[required] The names or Amazon Resource Names (ARNs) of the
Systems Manager documents (SSM documents) that represent the calendar
entries for which you want to get the state.</p></td>
</tr>
<tr class="even">
<td><code id="ssm_get_calendar_state_:_AtTime">AtTime</code></td>
<td><p>(Optional) The specific time for which you want to get calendar
state information, in <a
href="https://en.wikipedia.org/wiki/ISO_8601">ISO 8601</a> format. If
you don't specify a value or <code>AtTime</code>, the current time is
used.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      State = "OPEN"|"CLOSED",
      AtTime = "string",
      NextTransitionTime = "string"
    )

### Request syntax

    svc$get_calendar_state(
      CalendarNames = list(
        "string"
      ),
      AtTime = "string"
    )
