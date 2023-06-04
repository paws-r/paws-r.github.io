<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssmcontacts_list_pages_by_contact</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the engagements to a contact's contact channels

### Description

Lists the engagements to a contact's contact channels.

### Usage

    ssmcontacts_list_pages_by_contact(ContactId, NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ssmcontacts_list_pages_by_contact_:_ContactId">ContactId</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the contact you are
retrieving engagements for.</p></td>
</tr>
<tr class="even">
<td><code
id="ssmcontacts_list_pages_by_contact_:_NextToken">NextToken</code></td>
<td><p>The pagination token to continue to the next page of
results.</p></td>
</tr>
<tr class="odd">
<td><code
id="ssmcontacts_list_pages_by_contact_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of engagements to contact channels to list per
page of results.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      NextToken = "string",
      Pages = list(
        list(
          PageArn = "string",
          EngagementArn = "string",
          ContactArn = "string",
          Sender = "string",
          IncidentId = "string",
          SentTime = as.POSIXct(
            "2015-01-01"
          ),
          DeliveryTime = as.POSIXct(
            "2015-01-01"
          ),
          ReadTime = as.POSIXct(
            "2015-01-01"
          )
        )
      )
    )

### Request syntax

    svc$list_pages_by_contact(
      ContactId = "string",
      NextToken = "string",
      MaxResults = 123
    )
