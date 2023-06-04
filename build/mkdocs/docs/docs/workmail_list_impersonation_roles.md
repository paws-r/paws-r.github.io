<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workmail_list_impersonation_roles</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists all the impersonation roles for the given WorkMail organization

### Description

Lists all the impersonation roles for the given WorkMail organization.

### Usage

    workmail_list_impersonation_roles(OrganizationId, NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="workmail_list_impersonation_roles_:_OrganizationId">OrganizationId</code></td>
<td><p>[required] The WorkMail organization to which the listed
impersonation roles belong.</p></td>
</tr>
<tr class="even">
<td><code
id="workmail_list_impersonation_roles_:_NextToken">NextToken</code></td>
<td><p>The token used to retrieve the next page of results. The first
call doesn't require a token.</p></td>
</tr>
<tr class="odd">
<td><code
id="workmail_list_impersonation_roles_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results returned in a single call.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Roles = list(
        list(
          ImpersonationRoleId = "string",
          Name = "string",
          Type = "FULL_ACCESS"|"READ_ONLY",
          DateCreated = as.POSIXct(
            "2015-01-01"
          ),
          DateModified = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_impersonation_roles(
      OrganizationId = "string",
      NextToken = "string",
      MaxResults = 123
    )
