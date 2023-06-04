<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codestar_list_team_members</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists all team members associated with a project

### Description

Lists all team members associated with a project.

### Usage

    codestar_list_team_members(projectId, nextToken, maxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codestar_list_team_members_:_projectId">projectId</code></td>
<td><p>[required] The ID of the project for which you want to list team
members.</p></td>
</tr>
<tr class="even">
<td><code
id="codestar_list_team_members_:_nextToken">nextToken</code></td>
<td><p>The continuation token for the next set of results, if the
results cannot be returned in one response.</p></td>
</tr>
<tr class="odd">
<td><code
id="codestar_list_team_members_:_maxResults">maxResults</code></td>
<td><p>The maximum number of team members you want returned in a
response.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      teamMembers = list(
        list(
          userArn = "string",
          projectRole = "string",
          remoteAccessAllowed = TRUE|FALSE
        )
      ),
      nextToken = "string"
    )

### Request syntax

    svc$list_team_members(
      projectId = "string",
      nextToken = "string",
      maxResults = 123
    )
