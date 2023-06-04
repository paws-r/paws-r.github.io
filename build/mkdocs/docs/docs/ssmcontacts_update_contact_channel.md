<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssmcontacts_update_contact_channel</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates a contact's contact channel

### Description

Updates a contact's contact channel.

### Usage

    ssmcontacts_update_contact_channel(ContactChannelId, Name,
      DeliveryAddress)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ssmcontacts_update_contact_channel_:_ContactChannelId">ContactChannelId</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the contact channel
you want to update.</p></td>
</tr>
<tr class="even">
<td><code
id="ssmcontacts_update_contact_channel_:_Name">Name</code></td>
<td><p>The name of the contact channel.</p></td>
</tr>
<tr class="odd">
<td><code
id="ssmcontacts_update_contact_channel_:_DeliveryAddress">DeliveryAddress</code></td>
<td><p>The details that Incident Manager uses when trying to engage the
contact channel.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_contact_channel(
      ContactChannelId = "string",
      Name = "string",
      DeliveryAddress = list(
        SimpleAddress = "string"
      )
    )
