<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workmail_list_users</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns summaries of the organization's users

### Description

Returns summaries of the organization's users.

### Usage

    workmail_list_users(OrganizationId, NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="workmail_list_users_:_OrganizationId">OrganizationId</code></td>
<td><p>[required] The identifier for the organization under which the
users exist.</p></td>
</tr>
<tr class="even">
<td><code id="workmail_list_users_:_NextToken">NextToken</code></td>
<td><p>The token to use to retrieve the next page of results. The first
call does not contain any tokens.</p></td>
</tr>
<tr class="odd">
<td><code id="workmail_list_users_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return in a single
call.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Users = list(
        list(
          Id = "string",
          Email = "string",
          Name = "string",
          DisplayName = "string",
          State = "ENABLED"|"DISABLED"|"DELETED",
          UserRole = "USER"|"RESOURCE"|"SYSTEM_USER",
          EnabledDate = as.POSIXct(
            "2015-01-01"
          ),
          DisabledDate = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_users(
      OrganizationId = "string",
      NextToken = "string",
      MaxResults = 123
    )
