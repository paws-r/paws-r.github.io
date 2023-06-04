<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>proton_list_repositories</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## List linked repositories with detail data

### Description

List linked repositories with detail data.

### Usage

    proton_list_repositories(maxResults, nextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="proton_list_repositories_:_maxResults">maxResults</code></td>
<td><p>The maximum number of repositories to list.</p></td>
</tr>
<tr class="even">
<td><code
id="proton_list_repositories_:_nextToken">nextToken</code></td>
<td><p>A token that indicates the location of the next repository in the
array of repositories, after the list of repositories previously
requested.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      nextToken = "string",
      repositories = list(
        list(
          arn = "string",
          connectionArn = "string",
          name = "string",
          provider = "GITHUB"|"GITHUB_ENTERPRISE"|"BITBUCKET"
        )
      )
    )

### Request syntax

    svc$list_repositories(
      maxResults = 123,
      nextToken = "string"
    )
