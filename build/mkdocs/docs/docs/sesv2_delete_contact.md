<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sesv2_delete_contact</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Removes a contact from a contact list

### Description

Removes a contact from a contact list.

### Usage

    sesv2_delete_contact(ContactListName, EmailAddress)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sesv2_delete_contact_:_ContactListName">ContactListName</code></td>
<td><p>[required] The name of the contact list from which the contact
should be removed.</p></td>
</tr>
<tr class="even">
<td><code
id="sesv2_delete_contact_:_EmailAddress">EmailAddress</code></td>
<td><p>[required] The contact's email address.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_contact(
      ContactListName = "string",
      EmailAddress = "string"
    )
