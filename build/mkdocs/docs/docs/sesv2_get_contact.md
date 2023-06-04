<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sesv2_get_contact</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a contact from a contact list

### Description

Returns a contact from a contact list.

### Usage

    sesv2_get_contact(ContactListName, EmailAddress)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sesv2_get_contact_:_ContactListName">ContactListName</code></td>
<td><p>[required] The name of the contact list to which the contact
belongs.</p></td>
</tr>
<tr class="even">
<td><code id="sesv2_get_contact_:_EmailAddress">EmailAddress</code></td>
<td><p>[required] The contact's email address.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ContactListName = "string",
      EmailAddress = "string",
      TopicPreferences = list(
        list(
          TopicName = "string",
          SubscriptionStatus = "OPT_IN"|"OPT_OUT"
        )
      ),
      TopicDefaultPreferences = list(
        list(
          TopicName = "string",
          SubscriptionStatus = "OPT_IN"|"OPT_OUT"
        )
      ),
      UnsubscribeAll = TRUE|FALSE,
      AttributesData = "string",
      CreatedTimestamp = as.POSIXct(
        "2015-01-01"
      ),
      LastUpdatedTimestamp = as.POSIXct(
        "2015-01-01"
      )
    )

### Request syntax

    svc$get_contact(
      ContactListName = "string",
      EmailAddress = "string"
    )
