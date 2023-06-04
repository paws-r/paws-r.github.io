<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssmcontacts_activate_contact_channel</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Activates a contact's contact channel

### Description

Activates a contact's contact channel. Incident Manager can't engage a
contact until the contact channel has been activated.

### Usage

    ssmcontacts_activate_contact_channel(ContactChannelId, ActivationCode)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ssmcontacts_activate_contact_channel_:_ContactChannelId">ContactChannelId</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the contact
channel.</p></td>
</tr>
<tr class="even">
<td><code
id="ssmcontacts_activate_contact_channel_:_ActivationCode">ActivationCode</code></td>
<td><p>[required] The code sent to the contact channel when it was
created in the contact.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$activate_contact_channel(
      ContactChannelId = "string",
      ActivationCode = "string"
    )
