<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssmcontacts_delete_contact_channel</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## To no longer receive engagements on a contact channel, you can delete the channel from a contact

### Description

To no longer receive engagements on a contact channel, you can delete
the channel from a contact. Deleting the contact channel removes it from
the contact's engagement plan. If you delete the only contact channel
for a contact, you won't be able to engage that contact during an
incident.

### Usage

    ssmcontacts_delete_contact_channel(ContactChannelId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ssmcontacts_delete_contact_channel_:_ContactChannelId">ContactChannelId</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the contact
channel.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_contact_channel(
      ContactChannelId = "string"
    )
