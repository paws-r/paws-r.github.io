<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codestar_list_projects</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists all projects in AWS CodeStar associated with your AWS account

### Description

Lists all projects in AWS CodeStar associated with your AWS account.

### Usage

    codestar_list_projects(nextToken, maxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="codestar_list_projects_:_nextToken">nextToken</code></td>
<td><p>The continuation token to be used to return the next set of
results, if the results cannot be returned in one response.</p></td>
</tr>
<tr class="even">
<td><code
id="codestar_list_projects_:_maxResults">maxResults</code></td>
<td><p>The maximum amount of data that can be contained in a single set
of results.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      projects = list(
        list(
          projectId = "string",
          projectArn = "string"
        )
      ),
      nextToken = "string"
    )

### Request syntax

    svc$list_projects(
      nextToken = "string",
      maxResults = 123
    )
