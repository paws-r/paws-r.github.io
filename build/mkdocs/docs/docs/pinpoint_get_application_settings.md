<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>pinpoint_get_application_settings</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves information about the settings for an application

### Description

Retrieves information about the settings for an application.

### Usage

    pinpoint_get_application_settings(ApplicationId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="pinpoint_get_application_settings_:_ApplicationId">ApplicationId</code></td>
<td><p>[required] The unique identifier for the application. This
identifier is displayed as the <strong>Project ID</strong> on the Amazon
Pinpoint console.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ApplicationSettingsResource = list(
        ApplicationId = "string",
        CampaignHook = list(
          LambdaFunctionName = "string",
          Mode = "DELIVERY"|"FILTER",
          WebUrl = "string"
        ),
        LastModifiedDate = "string",
        Limits = list(
          Daily = 123,
          MaximumDuration = 123,
          MessagesPerSecond = 123,
          Total = 123,
          Session = 123
        ),
        QuietTime = list(
          End = "string",
          Start = "string"
        )
      )
    )

### Request syntax

    svc$get_application_settings(
      ApplicationId = "string"
    )
