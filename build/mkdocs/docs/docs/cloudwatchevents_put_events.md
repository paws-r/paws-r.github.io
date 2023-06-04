<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudwatchevents_put_events</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Sends custom events to Amazon EventBridge so that they can be matched to rules

### Description

Sends custom events to Amazon EventBridge so that they can be matched to
rules.

### Usage

    cloudwatchevents_put_events(Entries)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="cloudwatchevents_put_events_:_Entries">Entries</code></td>
<td><p>[required] The entry that defines an event in your system. You
can specify several parameters for the entry such as the source and type
of the event, resources associated with the event, and so on.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      FailedEntryCount = 123,
      Entries = list(
        list(
          EventId = "string",
          ErrorCode = "string",
          ErrorMessage = "string"
        )
      )
    )

### Request syntax

    svc$put_events(
      Entries = list(
        list(
          Time = as.POSIXct(
            "2015-01-01"
          ),
          Source = "string",
          Resources = list(
            "string"
          ),
          DetailType = "string",
          Detail = "string",
          EventBusName = "string",
          TraceHeader = "string"
        )
      )
    )
