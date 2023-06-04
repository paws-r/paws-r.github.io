<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssmcontacts_send_activation_code</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Sends an activation code to a contact channel

### Description

Sends an activation code to a contact channel. The contact can use this
code to activate the contact channel in the console or with the
`ActivateChannel` operation. Incident Manager can't engage a contact
channel until it has been activated.

### Usage

    ssmcontacts_send_activation_code(ContactChannelId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ssmcontacts_send_activation_code_:_ContactChannelId">ContactChannelId</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the contact
channel.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$send_activation_code(
      ContactChannelId = "string"
    )
