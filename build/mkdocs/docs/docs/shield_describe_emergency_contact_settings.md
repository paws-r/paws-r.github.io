<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>shield_describe_emergency_contact_settings</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## A list of email addresses and phone numbers that the Shield Response Team (SRT) can use to contact you if you have proactive engagement enabled, for escalations to the SRT and to initiate proactive customer support

### Description

A list of email addresses and phone numbers that the Shield Response
Team (SRT) can use to contact you if you have proactive engagement
enabled, for escalations to the SRT and to initiate proactive customer
support.

### Usage

    shield_describe_emergency_contact_settings()

### Value

A list with the following syntax:

    list(
      EmergencyContactList = list(
        list(
          EmailAddress = "string",
          PhoneNumber = "string",
          ContactNotes = "string"
        )
      )
    )

### Request syntax

    svc$describe_emergency_contact_settings()
