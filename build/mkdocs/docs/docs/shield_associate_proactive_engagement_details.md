<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>shield_associate_proactive_engagement_details</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Initializes proactive engagement and sets the list of contacts for the Shield Response Team (SRT) to use

### Description

Initializes proactive engagement and sets the list of contacts for the
Shield Response Team (SRT) to use. You must provide at least one phone
number in the emergency contact list.

After you have initialized proactive engagement using this call, to
disable or enable proactive engagement, use the calls
`disable_proactive_engagement` and `enable_proactive_engagement`.

This call defines the list of email addresses and phone numbers that the
SRT can use to contact you for escalations to the SRT and to initiate
proactive customer support.

The contacts that you provide in the request replace any contacts that
were already defined. If you already have contacts defined and want to
use them, retrieve the list using `describe_emergency_contact_settings`
and then provide it to this call.

### Usage

    shield_associate_proactive_engagement_details(EmergencyContactList)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="shield_associate_proactive_engagement_details_:_EmergencyContactList">EmergencyContactList</code></td>
<td><p>[required] A list of email addresses and phone numbers that the
Shield Response Team (SRT) can use to contact you for escalations to the
SRT and to initiate proactive customer support.</p>
<p>To enable proactive engagement, the contact list must include at
least one phone number.</p>
<p>The contacts that you provide here replace any contacts that were
already defined. If you already have contacts defined and want to use
them, retrieve the list using
<code>describe_emergency_contact_settings</code> and then provide it
here.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$associate_proactive_engagement_details(
      EmergencyContactList = list(
        list(
          EmailAddress = "string",
          PhoneNumber = "string",
          ContactNotes = "string"
        )
      )
    )
