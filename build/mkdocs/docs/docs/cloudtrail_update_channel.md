<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudtrail_update_channel</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates a channel specified by a required channel ARN or UUID

### Description

Updates a channel specified by a required channel ARN or UUID.

### Usage

    cloudtrail_update_channel(Channel, Destinations, Name)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="cloudtrail_update_channel_:_Channel">Channel</code></td>
<td><p>[required] The ARN or ID (the ARN suffix) of the channel that you
want to update.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudtrail_update_channel_:_Destinations">Destinations</code></td>
<td><p>The ARNs of event data stores that you want to log events
arriving through the channel.</p></td>
</tr>
<tr class="odd">
<td><code id="cloudtrail_update_channel_:_Name">Name</code></td>
<td><p>Changes the name of the channel.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ChannelArn = "string",
      Name = "string",
      Source = "string",
      Destinations = list(
        list(
          Type = "EVENT_DATA_STORE"|"AWS_SERVICE",
          Location = "string"
        )
      )
    )

### Request syntax

    svc$update_channel(
      Channel = "string",
      Destinations = list(
        list(
          Type = "EVENT_DATA_STORE"|"AWS_SERVICE",
          Location = "string"
        )
      ),
      Name = "string"
    )
