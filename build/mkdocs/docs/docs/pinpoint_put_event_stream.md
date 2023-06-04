<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>pinpoint_put_event_stream</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a new event stream for an application or updates the settings of an existing event stream for an application

### Description

Creates a new event stream for an application or updates the settings of
an existing event stream for an application.

### Usage

    pinpoint_put_event_stream(ApplicationId, WriteEventStream)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="pinpoint_put_event_stream_:_ApplicationId">ApplicationId</code></td>
<td><p>[required] The unique identifier for the application. This
identifier is displayed as the <strong>Project ID</strong> on the Amazon
Pinpoint console.</p></td>
</tr>
<tr class="even">
<td><code
id="pinpoint_put_event_stream_:_WriteEventStream">WriteEventStream</code></td>
<td><p>[required]</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      EventStream = list(
        ApplicationId = "string",
        DestinationStreamArn = "string",
        ExternalId = "string",
        LastModifiedDate = "string",
        LastUpdatedBy = "string",
        RoleArn = "string"
      )
    )

### Request syntax

    svc$put_event_stream(
      ApplicationId = "string",
      WriteEventStream = list(
        DestinationStreamArn = "string",
        RoleArn = "string"
      )
    )
