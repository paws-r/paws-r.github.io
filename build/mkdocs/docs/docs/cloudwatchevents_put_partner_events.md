<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudwatchevents_put_partner_events</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## This is used by SaaS partners to write events to a customer's partner event bus

### Description

This is used by SaaS partners to write events to a customer's partner
event bus. Amazon Web Services customers do not use this operation.

### Usage

    cloudwatchevents_put_partner_events(Entries)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudwatchevents_put_partner_events_:_Entries">Entries</code></td>
<td><p>[required] The list of events to write to the event bus.</p></td>
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

    svc$put_partner_events(
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
          Detail = "string"
        )
      )
    )
