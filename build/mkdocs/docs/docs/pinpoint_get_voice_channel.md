<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>pinpoint_get_voice_channel</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves information about the status and settings of the voice channel for an application

### Description

Retrieves information about the status and settings of the voice channel
for an application.

### Usage

    pinpoint_get_voice_channel(ApplicationId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="pinpoint_get_voice_channel_:_ApplicationId">ApplicationId</code></td>
<td><p>[required] The unique identifier for the application. This
identifier is displayed as the <strong>Project ID</strong> on the Amazon
Pinpoint console.</p></td>
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

    svc$get_voice_channel(
      ApplicationId = "string"
    )
