<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssmcontacts_delete_contact</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## To remove a contact from Incident Manager, you can delete the contact

### Description

To remove a contact from Incident Manager, you can delete the contact.
Deleting a contact removes them from all escalation plans and related
response plans. Deleting an escalation plan removes it from all related
response plans. You will have to recreate the contact and its contact
channels before you can use it again.

### Usage

    ssmcontacts_delete_contact(ContactId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ssmcontacts_delete_contact_:_ContactId">ContactId</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the contact that
you're deleting.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_contact(
      ContactId = "string"
    )
