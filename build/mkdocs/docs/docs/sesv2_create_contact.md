<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sesv2_create_contact</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a contact, which is an end-user who is receiving the email, and adds them to a contact list

### Description

Creates a contact, which is an end-user who is receiving the email, and
adds them to a contact list.

### Usage

    sesv2_create_contact(ContactListName, EmailAddress, TopicPreferences,
      UnsubscribeAll, AttributesData)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sesv2_create_contact_:_ContactListName">ContactListName</code></td>
<td><p>[required] The name of the contact list to which the contact
should be added.</p></td>
</tr>
<tr class="even">
<td><code
id="sesv2_create_contact_:_EmailAddress">EmailAddress</code></td>
<td><p>[required] The contact's email address.</p></td>
</tr>
<tr class="odd">
<td><code
id="sesv2_create_contact_:_TopicPreferences">TopicPreferences</code></td>
<td><p>The contact's preferences for being opted-in to or opted-out of
topics.</p></td>
</tr>
<tr class="even">
<td><code
id="sesv2_create_contact_:_UnsubscribeAll">UnsubscribeAll</code></td>
<td><p>A boolean value status noting if the contact is unsubscribed from
all contact list topics.</p></td>
</tr>
<tr class="odd">
<td><code
id="sesv2_create_contact_:_AttributesData">AttributesData</code></td>
<td><p>The attribute data attached to a contact.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$create_contact(
      ContactListName = "string",
      EmailAddress = "string",
      TopicPreferences = list(
        list(
          TopicName = "string",
          SubscriptionStatus = "OPT_IN"|"OPT_OUT"
        )
      ),
      UnsubscribeAll = TRUE|FALSE,
      AttributesData = "string"
    )
