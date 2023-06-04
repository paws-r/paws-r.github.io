<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>personalize_list_solutions</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of solutions that use the given dataset group

### Description

Returns a list of solutions that use the given dataset group. When a
dataset group is not specified, all the solutions associated with the
account are listed. The response provides the properties for each
solution, including the Amazon Resource Name (ARN). For more information
on solutions, see `create_solution`.

### Usage

    personalize_list_solutions(datasetGroupArn, nextToken, maxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="personalize_list_solutions_:_datasetGroupArn">datasetGroupArn</code></td>
<td><p>The Amazon Resource Name (ARN) of the dataset group.</p></td>
</tr>
<tr class="even">
<td><code
id="personalize_list_solutions_:_nextToken">nextToken</code></td>
<td><p>A token returned from the previous call to
<code>list_solutions</code> for getting the next set of solutions (if
they exist).</p></td>
</tr>
<tr class="odd">
<td><code
id="personalize_list_solutions_:_maxResults">maxResults</code></td>
<td><p>The maximum number of solutions to return.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      solutions = list(
        list(
          name = "string",
          solutionArn = "string",
          status = "string",
          creationDateTime = as.POSIXct(
            "2015-01-01"
          ),
          lastUpdatedDateTime = as.POSIXct(
            "2015-01-01"
          ),
          recipeArn = "string"
        )
      ),
      nextToken = "string"
    )

### Request syntax

    svc$list_solutions(
      datasetGroupArn = "string",
      nextToken = "string",
      maxResults = 123
    )
