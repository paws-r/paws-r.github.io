<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>pinpoint_update_voice_channel</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Enables the voice channel for an application or updates the status and settings of the voice channel for an application

### Description

Enables the voice channel for an application or updates the status and
settings of the voice channel for an application.

### Usage

    pinpoint_update_voice_channel(ApplicationId, VoiceChannelRequest)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="pinpoint_update_voice_channel_:_ApplicationId">ApplicationId</code></td>
<td><p>[required] The unique identifier for the application. This
identifier is displayed as the <strong>Project ID</strong> on the Amazon
Pinpoint console.</p></td>
</tr>
<tr class="even">
<td><code
id="pinpoint_update_voice_channel_:_VoiceChannelRequest">VoiceChannelRequest</code></td>
<td><p>[required]</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      VoiceChannelResponse = list(
        ApplicationId = "string",
        CreationDate = "string",
        Enabled = TRUE|FALSE,
        HasCredential = TRUE|FALSE,
        Id = "string",
        IsArchived = TRUE|FALSE,
        LastModifiedBy = "string",
        LastModifiedDate = "string",
        Platform = "string",
        Version = 123
      )
    )

### Request syntax

    svc$update_voice_channel(
      ApplicationId = "string",
      VoiceChannelRequest = list(
        Enabled = TRUE|FALSE
      )
    )
