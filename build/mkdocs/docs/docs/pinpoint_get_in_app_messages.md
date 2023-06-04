<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>pinpoint_get_in_app_messages</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves the in-app messages targeted for the provided endpoint ID

### Description

Retrieves the in-app messages targeted for the provided endpoint ID.

### Usage

    pinpoint_get_in_app_messages(ApplicationId, EndpointId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="pinpoint_get_in_app_messages_:_ApplicationId">ApplicationId</code></td>
<td><p>[required] The unique identifier for the application. This
identifier is displayed as the <strong>Project ID</strong> on the Amazon
Pinpoint console.</p></td>
</tr>
<tr class="even">
<td><code
id="pinpoint_get_in_app_messages_:_EndpointId">EndpointId</code></td>
<td><p>[required] The unique identifier for the endpoint.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      InAppMessagesResponse = list(
        InAppMessageCampaigns = list(
          list(
            CampaignId = "string",
            DailyCap = 123,
            InAppMessage = list(
              Content = list(
                list(
                  BackgroundColor = "string",
                  BodyConfig = list(
                    Alignment = "LEFT"|"CENTER"|"RIGHT",
                    Body = "string",
                    TextColor = "string"
                  ),
                  HeaderConfig = list(
                    Alignment = "LEFT"|"CENTER"|"RIGHT",
                    Header = "string",
                    TextColor = "string"
                  ),
                  ImageUrl = "string",
                  PrimaryBtn = list(
                    Android = list(
                      ButtonAction = "LINK"|"DEEP_LINK"|"CLOSE",
                      Link = "string"
                    ),
                    DefaultConfig = list(
                      BackgroundColor = "string",
                      BorderRadius = 123,
                      ButtonAction = "LINK"|"DEEP_LINK"|"CLOSE",
                      Link = "string",
                      Text = "string",
                      TextColor = "string"
                    ),
                    IOS = list(
                      ButtonAction = "LINK"|"DEEP_LINK"|"CLOSE",
                      Link = "string"
                    ),
                    Web = list(
                      ButtonAction = "LINK"|"DEEP_LINK"|"CLOSE",
                      Link = "string"
                    )
                  ),
                  SecondaryBtn = list(
                    Android = list(
                      ButtonAction = "LINK"|"DEEP_LINK"|"CLOSE",
                      Link = "string"
                    ),
                    DefaultConfig = list(
                      BackgroundColor = "string",
                      BorderRadius = 123,
                      ButtonAction = "LINK"|"DEEP_LINK"|"CLOSE",
                      Link = "string",
                      Text = "string",
                      TextColor = "string"
                    ),
                    IOS = list(
                      ButtonAction = "LINK"|"DEEP_LINK"|"CLOSE",
                      Link = "string"
                    ),
                    Web = list(
                      ButtonAction = "LINK"|"DEEP_LINK"|"CLOSE",
                      Link = "string"
                    )
                  )
                )
              ),
              CustomConfig = list(
                "string"
              ),
              Layout = "BOTTOM_BANNER"|"TOP_BANNER"|"OVERLAYS"|"MOBILE_FEED"|"MIDDLE_BANNER"|"CAROUSEL"
            ),
            Priority = 123,
            Schedule = list(
              EndDate = "string",
              EventFilter = list(
                Dimensions = list(
                  Attributes = list(
                    list(
                      AttributeType = "INCLUSIVE"|"EXCLUSIVE"|"CONTAINS"|"BEFORE"|"AFTER"|"ON"|"BETWEEN",
                      Values = list(
                        "string"
                      )
                    )
                  ),
                  EventType = list(
                    DimensionType = "INCLUSIVE"|"EXCLUSIVE",
                    Values = list(
                      "string"
                    )
                  ),
                  Metrics = list(
                    list(
                      ComparisonOperator = "string",
                      Value = 123.0
                    )
                  )
                ),
                FilterType = "SYSTEM"|"ENDPOINT"
              ),
              QuietTime = list(
                End = "string",
                Start = "string"
              )
            ),
            SessionCap = 123,
            TotalCap = 123,
            TreatmentId = "string"
          )
        )
      )
    )

### Request syntax

    svc$get_in_app_messages(
      ApplicationId = "string",
      EndpointId = "string"
    )
