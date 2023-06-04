<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssmcontacts_list_pages_by_engagement</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the engagements to contact channels that occurred by engaging a contact

### Description

Lists the engagements to contact channels that occurred by engaging a
contact.

### Usage

    ssmcontacts_list_pages_by_engagement(EngagementId, NextToken,
      MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ssmcontacts_list_pages_by_engagement_:_EngagementId">EngagementId</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the
engagement.</p></td>
</tr>
<tr class="even">
<td><code
id="ssmcontacts_list_pages_by_engagement_:_NextToken">NextToken</code></td>
<td><p>The pagination token to continue to the next page of
results.</p></td>
</tr>
<tr class="odd">
<td><code
id="ssmcontacts_list_pages_by_engagement_:_MaxResults">MaxResults</code></td>
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

    svc$list_pages_by_engagement(
      EngagementId = "string",
      NextToken = "string",
      MaxResults = 123
    )
