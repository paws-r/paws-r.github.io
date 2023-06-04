<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>pinpoint_update_email_channel</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Enables the email channel for an application or updates the status and settings of the email channel for an application

### Description

Enables the email channel for an application or updates the status and
settings of the email channel for an application.

### Usage

    pinpoint_update_email_channel(ApplicationId, EmailChannelRequest)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="pinpoint_update_email_channel_:_ApplicationId">ApplicationId</code></td>
<td><p>[required] The unique identifier for the application. This
identifier is displayed as the <strong>Project ID</strong> on the Amazon
Pinpoint console.</p></td>
</tr>
<tr class="even">
<td><code
id="pinpoint_update_email_channel_:_EmailChannelRequest">EmailChannelRequest</code></td>
<td><p>[required]</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      EmailChannelResponse = list(
        ApplicationId = "string",
        ConfigurationSet = "string",
        CreationDate = "string",
        Enabled = TRUE|FALSE,
        FromAddress = "string",
        HasCredential = TRUE|FALSE,
        Id = "string",
        Identity = "string",
        IsArchived = TRUE|FALSE,
        LastModifiedBy = "string",
        LastModifiedDate = "string",
        MessagesPerSecond = 123,
        Platform = "string",
        RoleArn = "string",
        Version = 123
      )
    )

### Request syntax

    svc$update_email_channel(
      ApplicationId = "string",
      EmailChannelRequest = list(
        ConfigurationSet = "string",
        Enabled = TRUE|FALSE,
        FromAddress = "string",
        Identity = "string",
        RoleArn = "string"
      )
    )
