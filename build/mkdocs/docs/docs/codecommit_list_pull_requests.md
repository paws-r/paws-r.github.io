<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codecommit_list_pull_requests</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of pull requests for a specified repository

### Description

Returns a list of pull requests for a specified repository. The return
list can be refined by pull request status or pull request author ARN.

### Usage

    codecommit_list_pull_requests(repositoryName, authorArn,
      pullRequestStatus, nextToken, maxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codecommit_list_pull_requests_:_repositoryName">repositoryName</code></td>
<td><p>[required] The name of the repository for which you want to list
pull requests.</p></td>
</tr>
<tr class="even">
<td><code
id="codecommit_list_pull_requests_:_authorArn">authorArn</code></td>
<td><p>Optional. The Amazon Resource Name (ARN) of the user who created
the pull request. If used, this filters the results to pull requests
created by that user.</p></td>
</tr>
<tr class="odd">
<td><code
id="codecommit_list_pull_requests_:_pullRequestStatus">pullRequestStatus</code></td>
<td><p>Optional. The status of the pull request. If used, this refines
the results to the pull requests that match the specified
status.</p></td>
</tr>
<tr class="even">
<td><code
id="codecommit_list_pull_requests_:_nextToken">nextToken</code></td>
<td><p>An enumeration token that, when provided in a request, returns
the next batch of the results.</p></td>
</tr>
<tr class="odd">
<td><code
id="codecommit_list_pull_requests_:_maxResults">maxResults</code></td>
<td><p>A non-zero, non-negative integer used to limit the number of
returned results.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      pullRequestIds = list(
        "string"
      ),
      nextToken = "string"
    )

### Request syntax

    svc$list_pull_requests(
      repositoryName = "string",
      authorArn = "string",
      pullRequestStatus = "OPEN"|"CLOSED",
      nextToken = "string",
      maxResults = 123
    )
