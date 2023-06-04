<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>pinpoint_update_sms_channel</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Enables the SMS channel for an application or updates the status and settings of the SMS channel for an application

### Description

Enables the SMS channel for an application or updates the status and
settings of the SMS channel for an application.

### Usage

    pinpoint_update_sms_channel(ApplicationId, SMSChannelRequest)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="pinpoint_update_sms_channel_:_ApplicationId">ApplicationId</code></td>
<td><p>[required] The unique identifier for the application. This
identifier is displayed as the <strong>Project ID</strong> on the Amazon
Pinpoint console.</p></td>
</tr>
<tr class="even">
<td><code
id="pinpoint_update_sms_channel_:_SMSChannelRequest">SMSChannelRequest</code></td>
<td><p>[required]</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      SMSChannelResponse = list(
        ApplicationId = "string",
        CreationDate = "string",
        Enabled = TRUE|FALSE,
        HasCredential = TRUE|FALSE,
        Id = "string",
        IsArchived = TRUE|FALSE,
        LastModifiedBy = "string",
        LastModifiedDate = "string",
        Platform = "string",
        PromotionalMessagesPerSecond = 123,
        SenderId = "string",
        ShortCode = "string",
        TransactionalMessagesPerSecond = 123,
        Version = 123
      )
    )

### Request syntax

    svc$update_sms_channel(
      ApplicationId = "string",
      SMSChannelRequest = list(
        Enabled = TRUE|FALSE,
        SenderId = "string",
        ShortCode = "string"
      )
    )
