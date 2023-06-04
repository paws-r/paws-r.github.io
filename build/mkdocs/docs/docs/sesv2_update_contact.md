<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sesv2_update_contact</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates a contact's preferences for a list

### Description

Updates a contact's preferences for a list. It is not necessary to
specify all existing topic preferences in the TopicPreferences object,
just the ones that need updating.

### Usage

    sesv2_update_contact(ContactListName, EmailAddress, TopicPreferences,
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
id="sesv2_update_contact_:_ContactListName">ContactListName</code></td>
<td><p>[required] The name of the contact list.</p></td>
</tr>
<tr class="even">
<td><code
id="sesv2_update_contact_:_EmailAddress">EmailAddress</code></td>
<td><p>[required] The contact's email address.</p></td>
</tr>
<tr class="odd">
<td><code
id="sesv2_update_contact_:_TopicPreferences">TopicPreferences</code></td>
<td><p>The contact's preference for being opted-in to or opted-out of a
topic.</p></td>
</tr>
<tr class="even">
<td><code
id="sesv2_update_contact_:_UnsubscribeAll">UnsubscribeAll</code></td>
<td><p>A boolean value status noting if the contact is unsubscribed from
all contact list topics.</p></td>
</tr>
<tr class="odd">
<td><code
id="sesv2_update_contact_:_AttributesData">AttributesData</code></td>
<td><p>The attribute data attached to a contact.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_contact(
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
