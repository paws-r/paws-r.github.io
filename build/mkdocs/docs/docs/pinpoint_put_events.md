<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>pinpoint_put_events</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a new event to record for endpoints, or creates or updates endpoint data that existing events are associated with

### Description

Creates a new event to record for endpoints, or creates or updates
endpoint data that existing events are associated with.

### Usage

    pinpoint_put_events(ApplicationId, EventsRequest)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="pinpoint_put_events_:_ApplicationId">ApplicationId</code></td>
<td><p>[required] The unique identifier for the application. This
identifier is displayed as the <strong>Project ID</strong> on the Amazon
Pinpoint console.</p></td>
</tr>
<tr class="even">
<td><code
id="pinpoint_put_events_:_EventsRequest">EventsRequest</code></td>
<td><p>[required]</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      EventsResponse = list(
        Results = list(
          list(
            EndpointItemResponse = list(
              Message = "string",
              StatusCode = 123
            ),
            EventsItemResponse = list(
              list(
                Message = "string",
                StatusCode = 123
              )
            )
          )
        )
      )
    )

### Request syntax

    svc$put_events(
      ApplicationId = "string",
      EventsRequest = list(
        BatchItem = list(
          list(
            Endpoint = list(
              Address = "string",
              Attributes = list(
                list(
                  "string"
                )
              ),
              ChannelType = "PUSH"|"GCM"|"APNS"|"APNS_SANDBOX"|"APNS_VOIP"|"APNS_VOIP_SANDBOX"|"ADM"|"SMS"|"VOICE"|"EMAIL"|"BAIDU"|"CUSTOM"|"IN_APP",
              Demographic = list(
                AppVersion = "string",
                Locale = "string",
                Make = "string",
                Model = "string",
                ModelVersion = "string",
                Platform = "string",
                PlatformVersion = "string",
                Timezone = "string"
              ),
              EffectiveDate = "string",
              EndpointStatus = "string",
              Location = list(
                City = "string",
                Country = "string",
                Latitude = 123.0,
                Longitude = 123.0,
                PostalCode = "string",
                Region = "string"
              ),
              Metrics = list(
                123.0
              ),
              OptOut = "string",
              RequestId = "string",
              User = list(
                UserAttributes = list(
                  list(
                    "string"
                  )
                ),
                UserId = "string"
              )
            ),
            Events = list(
              list(
                AppPackageName = "string",
                AppTitle = "string",
                AppVersionCode = "string",
                Attributes = list(
                  "string"
                ),
                ClientSdkVersion = "string",
                EventType = "string",
                Metrics = list(
                  123.0
                ),
                SdkName = "string",
                Session = list(
                  Duration = 123,
                  Id = "string",
                  StartTimestamp = "string",
                  StopTimestamp = "string"
                ),
                Timestamp = "string"
              )
            )
          )
        )
      )
    )
