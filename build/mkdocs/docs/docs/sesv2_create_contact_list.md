<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sesv2_create_contact_list</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a contact list

### Description

Creates a contact list.

### Usage

    sesv2_create_contact_list(ContactListName, Topics, Description, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sesv2_create_contact_list_:_ContactListName">ContactListName</code></td>
<td><p>[required] The name of the contact list.</p></td>
</tr>
<tr class="even">
<td><code id="sesv2_create_contact_list_:_Topics">Topics</code></td>
<td><p>An interest group, theme, or label within a list. A contact list
can have multiple topics.</p></td>
</tr>
<tr class="odd">
<td><code
id="sesv2_create_contact_list_:_Description">Description</code></td>
<td><p>A description of what the contact list is about.</p></td>
</tr>
<tr class="even">
<td><code id="sesv2_create_contact_list_:_Tags">Tags</code></td>
<td><p>The tags associated with a contact list.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$create_contact_list(
      ContactListName = "string",
      Topics = list(
        list(
          TopicName = "string",
          DisplayName = "string",
          Description = "string",
          DefaultSubscriptionStatus = "OPT_IN"|"OPT_OUT"
        )
      ),
      Description = "string",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
