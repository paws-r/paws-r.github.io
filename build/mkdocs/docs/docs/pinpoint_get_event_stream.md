<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>pinpoint_get_event_stream</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves information about the event stream settings for an application

### Description

Retrieves information about the event stream settings for an
application.

### Usage

    pinpoint_get_event_stream(ApplicationId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="pinpoint_get_event_stream_:_ApplicationId">ApplicationId</code></td>
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

    svc$get_event_stream(
      ApplicationId = "string"
    )
