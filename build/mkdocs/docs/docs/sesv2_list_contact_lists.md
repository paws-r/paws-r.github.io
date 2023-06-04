<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sesv2_list_contact_lists</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists all of the contact lists available

### Description

Lists all of the contact lists available.

### Usage

    sesv2_list_contact_lists(PageSize, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="sesv2_list_contact_lists_:_PageSize">PageSize</code></td>
<td><p>Maximum number of contact lists to return at once. Use this
parameter to paginate results. If additional contact lists exist beyond
the specified limit, the <code>NextToken</code> element is sent in the
response. Use the <code>NextToken</code> value in subsequent requests to
retrieve additional lists.</p></td>
</tr>
<tr class="even">
<td><code
id="sesv2_list_contact_lists_:_NextToken">NextToken</code></td>
<td><p>A string token indicating that there might be additional contact
lists available to be listed. Use the token provided in the Response to
use in the subsequent call to ListContactLists with the same parameters
to retrieve the next page of contact lists.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ContactLists = list(
        list(
          ContactListName = "string",
          LastUpdatedTimestamp = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_contact_lists(
      PageSize = 123,
      NextToken = "string"
    )
