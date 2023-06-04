<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sesv2_delete_contact_list</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a contact list and all of the contacts on that list

### Description

Deletes a contact list and all of the contacts on that list.

### Usage

    sesv2_delete_contact_list(ContactListName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sesv2_delete_contact_list_:_ContactListName">ContactListName</code></td>
<td><p>[required] The name of the contact list.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_contact_list(
      ContactListName = "string"
    )
