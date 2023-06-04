<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sesv2_get_contact_list</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns contact list metadata

### Description

Returns contact list metadata. It does not return any information about
the contacts present in the list.

### Usage

    sesv2_get_contact_list(ContactListName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sesv2_get_contact_list_:_ContactListName">ContactListName</code></td>
<td><p>[required] The name of the contact list.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
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
      CreatedTimestamp = as.POSIXct(
        "2015-01-01"
      ),
      LastUpdatedTimestamp = as.POSIXct(
        "2015-01-01"
      ),
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )

### Request syntax

    svc$get_contact_list(
      ContactListName = "string"
    )
