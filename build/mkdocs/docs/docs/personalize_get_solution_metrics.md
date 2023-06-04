<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>personalize_get_solution_metrics</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets the metrics for the specified solution version

### Description

Gets the metrics for the specified solution version.

### Usage

    personalize_get_solution_metrics(solutionVersionArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="personalize_get_solution_metrics_:_solutionVersionArn">solutionVersionArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the solution version
for which to get metrics.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      solutionVersionArn = "string",
      metrics = list(
        123.0
      )
    )

### Request syntax

    svc$get_solution_metrics(
      solutionVersionArn = "string"
    )
