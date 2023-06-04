<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>pinpoint_delete_event_stream</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the event stream for an application

### Description

Deletes the event stream for an application.

### Usage

    pinpoint_delete_event_stream(ApplicationId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="pinpoint_delete_event_stream_:_ApplicationId">ApplicationId</code></td>
<td><p>[required] The unique identifier for the application. This
identifier is displayed as the <strong>Project ID</strong> on the Amazon
Pinpoint console.</p></td>
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

    svc$delete_event_stream(
      ApplicationId = "string"
    )
