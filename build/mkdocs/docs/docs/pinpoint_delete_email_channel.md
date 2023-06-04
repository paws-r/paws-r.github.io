<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>pinpoint_delete_email_channel</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Disables the email channel for an application and deletes any existing settings for the channel

### Description

Disables the email channel for an application and deletes any existing
settings for the channel.

### Usage

    pinpoint_delete_email_channel(ApplicationId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="pinpoint_delete_email_channel_:_ApplicationId">ApplicationId</code></td>
<td><p>[required] The unique identifier for the application. This
identifier is displayed as the <strong>Project ID</strong> on the Amazon
Pinpoint console.</p></td>
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

    svc$delete_email_channel(
      ApplicationId = "string"
    )
