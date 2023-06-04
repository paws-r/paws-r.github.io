<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssmcontacts_deactivate_contact_channel</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## To no longer receive Incident Manager engagements to a contact channel, you can deactivate the channel

### Description

To no longer receive Incident Manager engagements to a contact channel,
you can deactivate the channel.

### Usage

    ssmcontacts_deactivate_contact_channel(ContactChannelId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ssmcontacts_deactivate_contact_channel_:_ContactChannelId">ContactChannelId</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the contact channel
you're deactivating.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$deactivate_contact_channel(
      ContactChannelId = "string"
    )
