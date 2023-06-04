<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>pinpoint_get_user_endpoints</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves information about all the endpoints that are associated with a specific user ID

### Description

Retrieves information about all the endpoints that are associated with a
specific user ID.

### Usage

    pinpoint_get_user_endpoints(ApplicationId, UserId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="pinpoint_get_user_endpoints_:_ApplicationId">ApplicationId</code></td>
<td><p>[required] The unique identifier for the application. This
identifier is displayed as the <strong>Project ID</strong> on the Amazon
Pinpoint console.</p></td>
</tr>
<tr class="even">
<td><code id="pinpoint_get_user_endpoints_:_UserId">UserId</code></td>
<td><p>[required] The unique identifier for the user.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      EndpointsResponse = list(
        Item = list(
          list(
            Address = "string",
            ApplicationId = "string",
            Attributes = list(
              list(
                "string"
              )
            ),
            ChannelType = "PUSH"|"GCM"|"APNS"|"APNS_SANDBOX"|"APNS_VOIP"|"APNS_VOIP_SANDBOX"|"ADM"|"SMS"|"VOICE"|"EMAIL"|"BAIDU"|"CUSTOM"|"IN_APP",
            CohortId = "string",
            CreationDate = "string",
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

### Request syntax

    svc$get_user_endpoints(
      ApplicationId = "string",
      UserId = "string"
    )
