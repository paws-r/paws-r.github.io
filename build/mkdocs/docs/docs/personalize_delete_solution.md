<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>personalize_delete_solution</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes all versions of a solution and the Solution object itself

### Description

Deletes all versions of a solution and the `Solution` object itself.
Before deleting a solution, you must delete all campaigns based on the
solution. To determine what campaigns are using the solution, call
`list_campaigns` and supply the Amazon Resource Name (ARN) of the
solution. You can't delete a solution if an associated `SolutionVersion`
is in the CREATE PENDING or IN PROGRESS state. For more information on
solutions, see `create_solution`.

### Usage

    personalize_delete_solution(solutionArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="personalize_delete_solution_:_solutionArn">solutionArn</code></td>
<td><p>[required] The ARN of the solution to delete.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_solution(
      solutionArn = "string"
    )
