<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codestar_list_resources</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists resources associated with a project in AWS CodeStar

### Description

Lists resources associated with a project in AWS CodeStar.

### Usage

    codestar_list_resources(projectId, nextToken, maxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="codestar_list_resources_:_projectId">projectId</code></td>
<td><p>[required] The ID of the project.</p></td>
</tr>
<tr class="even">
<td><code id="codestar_list_resources_:_nextToken">nextToken</code></td>
<td><p>The continuation token for the next set of results, if the
results cannot be returned in one response.</p></td>
</tr>
<tr class="odd">
<td><code
id="codestar_list_resources_:_maxResults">maxResults</code></td>
<td><p>The maximum amount of data that can be contained in a single set
of results.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      resources = list(
        list(
          id = "string"
        )
      ),
      nextToken = "string"
    )

### Request syntax

    svc$list_resources(
      projectId = "string",
      nextToken = "string",
      maxResults = 123
    )
