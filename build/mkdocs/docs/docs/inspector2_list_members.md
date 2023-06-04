<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>inspector2_list_members</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## List members associated with the Amazon Inspector delegated administrator for your organization

### Description

List members associated with the Amazon Inspector delegated
administrator for your organization.

### Usage

    inspector2_list_members(maxResults, nextToken, onlyAssociated)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="inspector2_list_members_:_maxResults">maxResults</code></td>
<td><p>The maximum number of results to return in the response.</p></td>
</tr>
<tr class="even">
<td><code id="inspector2_list_members_:_nextToken">nextToken</code></td>
<td><p>A token to use for paginating results that are returned in the
response. Set the value of this parameter to null for the first request
to a list action. For subsequent calls, use the <code>NextToken</code>
value returned from the previous request to continue listing results
after the first page.</p></td>
</tr>
<tr class="odd">
<td><code
id="inspector2_list_members_:_onlyAssociated">onlyAssociated</code></td>
<td><p>Specifies whether to list only currently associated members if
<code>True</code> or to list all members within the organization if
<code>False</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      members = list(
        list(
          accountId = "string",
          delegatedAdminAccountId = "string",
          relationshipStatus = "CREATED"|"INVITED"|"DISABLED"|"ENABLED"|"REMOVED"|"RESIGNED"|"DELETED"|"EMAIL_VERIFICATION_IN_PROGRESS"|"EMAIL_VERIFICATION_FAILED"|"REGION_DISABLED"|"ACCOUNT_SUSPENDED"|"CANNOT_CREATE_DETECTOR_IN_ORG_MASTER",
          updatedAt = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      nextToken = "string"
    )

### Request syntax

    svc$list_members(
      maxResults = 123,
      nextToken = "string",
      onlyAssociated = TRUE|FALSE
    )
