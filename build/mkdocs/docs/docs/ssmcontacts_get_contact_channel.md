<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssmcontacts_get_contact_channel</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## List details about a specific contact channel

### Description

List details about a specific contact channel.

### Usage

    ssmcontacts_get_contact_channel(ContactChannelId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ssmcontacts_get_contact_channel_:_ContactChannelId">ContactChannelId</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the contact channel
you want information about.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ContactArn = "string",
      ContactChannelArn = "string",
      Name = "string",
      Type = "SMS"|"VOICE"|"EMAIL",
      DeliveryAddress = list(
        SimpleAddress = "string"
      ),
      ActivationStatus = "ACTIVATED"|"NOT_ACTIVATED"
    )

### Request syntax

    svc$get_contact_channel(
      ContactChannelId = "string"
    )
