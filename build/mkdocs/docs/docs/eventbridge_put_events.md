<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>eventbridge_put_events</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Sends custom events to Amazon EventBridge so that they can be matched to rules

### Description

Sends custom events to Amazon EventBridge so that they can be matched to
rules.

PutEvents will only process nested JSON up to 1100 levels deep.

### Usage

    eventbridge_put_events(Entries, EndpointId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="eventbridge_put_events_:_Entries">Entries</code></td>
<td><p>[required] The entry that defines an event in your system. You
can specify several parameters for the entry such as the source and type
of the event, resources associated with the event, and so on.</p></td>
</tr>
<tr class="even">
<td><code
id="eventbridge_put_events_:_EndpointId">EndpointId</code></td>
<td><p>The URL subdomain of the endpoint. For example, if the URL for
Endpoint is https://abcde.veo.endpoints.event.amazonaws.com, then the
EndpointId is <code>abcde.veo</code>.</p>
<p>When using Java, you must include <code>auth-crt</code> on the class
path.</p></td>
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
      ),
      EndpointId = "string"
    )
