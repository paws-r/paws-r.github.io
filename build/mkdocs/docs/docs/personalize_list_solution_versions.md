<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>personalize_list_solution_versions</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of solution versions for the given solution

### Description

Returns a list of solution versions for the given solution. When a
solution is not specified, all the solution versions associated with the
account are listed. The response provides the properties for each
solution version, including the Amazon Resource Name (ARN).

### Usage

    personalize_list_solution_versions(solutionArn, nextToken, maxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="personalize_list_solution_versions_:_solutionArn">solutionArn</code></td>
<td><p>The Amazon Resource Name (ARN) of the solution.</p></td>
</tr>
<tr class="even">
<td><code
id="personalize_list_solution_versions_:_nextToken">nextToken</code></td>
<td><p>A token returned from the previous call to
<code>list_solution_versions</code> for getting the next set of solution
versions (if they exist).</p></td>
</tr>
<tr class="odd">
<td><code
id="personalize_list_solution_versions_:_maxResults">maxResults</code></td>
<td><p>The maximum number of solution versions to return.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      solutionVersions = list(
        list(
          solutionVersionArn = "string",
          status = "string",
          creationDateTime = as.POSIXct(
            "2015-01-01"
          ),
          lastUpdatedDateTime = as.POSIXct(
            "2015-01-01"
          ),
          failureReason = "string"
        )
      ),
      nextToken = "string"
    )

### Request syntax

    svc$list_solution_versions(
      solutionArn = "string",
      nextToken = "string",
      maxResults = 123
    )
