<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workmail_list_organizations</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns summaries of the customer's organizations

### Description

Returns summaries of the customer's organizations.

### Usage

    workmail_list_organizations(NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="workmail_list_organizations_:_NextToken">NextToken</code></td>
<td><p>The token to use to retrieve the next page of results. The first
call does not contain any tokens.</p></td>
</tr>
<tr class="even">
<td><code
id="workmail_list_organizations_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return in a single
call.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      OrganizationSummaries = list(
        list(
          OrganizationId = "string",
          Alias = "string",
          DefaultMailDomain = "string",
          ErrorMessage = "string",
          State = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_organizations(
      NextToken = "string",
      MaxResults = 123
    )
