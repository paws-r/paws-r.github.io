<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>shield_update_emergency_contact_settings</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the details of the list of email addresses and phone numbers that the Shield Response Team (SRT) can use to contact you if you have proactive engagement enabled, for escalations to the SRT and to initiate proactive customer support

### Description

Updates the details of the list of email addresses and phone numbers
that the Shield Response Team (SRT) can use to contact you if you have
proactive engagement enabled, for escalations to the SRT and to initiate
proactive customer support.

### Usage

    shield_update_emergency_contact_settings(EmergencyContactList)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="shield_update_emergency_contact_settings_:_EmergencyContactList">EmergencyContactList</code></td>
<td><p>A list of email addresses and phone numbers that the Shield
Response Team (SRT) can use to contact you if you have proactive
engagement enabled, for escalations to the SRT and to initiate proactive
customer support.</p>
<p>If you have proactive engagement enabled, the contact list must
include at least one phone number.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_emergency_contact_settings(
      EmergencyContactList = list(
        list(
          EmailAddress = "string",
          PhoneNumber = "string",
          ContactNotes = "string"
        )
      )
    )
