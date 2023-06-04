<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>pinpoint_delete_baidu_channel</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Disables the Baidu channel for an application and deletes any existing settings for the channel

### Description

Disables the Baidu channel for an application and deletes any existing
settings for the channel.

### Usage

    pinpoint_delete_baidu_channel(ApplicationId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="pinpoint_delete_baidu_channel_:_ApplicationId">ApplicationId</code></td>
<td><p>[required] The unique identifier for the application. This
identifier is displayed as the <strong>Project ID</strong> on the Amazon
Pinpoint console.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      BaiduChannelResponse = list(
        ApplicationId = "string",
        CreationDate = "string",
        Credential = "string",
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

    svc$delete_baidu_channel(
      ApplicationId = "string"
    )
