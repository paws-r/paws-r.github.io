<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>pinpoint_update_endpoints_batch</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a new batch of endpoints for an application or updates the settings and attributes of a batch of existing endpoints for an application

### Description

Creates a new batch of endpoints for an application or updates the
settings and attributes of a batch of existing endpoints for an
application. You can also use this operation to define custom attributes
for a batch of endpoints. If an update includes one or more values for a
custom attribute, Amazon Pinpoint replaces (overwrites) any existing
values with the new values.

### Usage

    pinpoint_update_endpoints_batch(ApplicationId, EndpointBatchRequest)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="pinpoint_update_endpoints_batch_:_ApplicationId">ApplicationId</code></td>
<td><p>[required] The unique identifier for the application. This
identifier is displayed as the <strong>Project ID</strong> on the Amazon
Pinpoint console.</p></td>
</tr>
<tr class="even">
<td><code
id="pinpoint_update_endpoints_batch_:_EndpointBatchRequest">EndpointBatchRequest</code></td>
<td><p>[required]</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      MessageBody = list(
        Message = "string",
        RequestID = "string"
      )
    )

### Request syntax

    svc$update_endpoints_batch(
      ApplicationId = "string",
      EndpointBatchRequest = list(
        Item = list(
          list(
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
            Id = "string",
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
          )
        )
      )
    )
