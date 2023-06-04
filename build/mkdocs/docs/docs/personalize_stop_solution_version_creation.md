<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>personalize_stop_solution_version_creation</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Stops creating a solution version that is in a state of CREATE\_PENDING or CREATE IN\_PROGRESS

### Description

Stops creating a solution version that is in a state of CREATE\_PENDING
or CREATE IN\_PROGRESS.

Depending on the current state of the solution version, the solution
version state changes as follows:

-   CREATE\_PENDING \\ CREATE\_STOPPED

    or

-   CREATE\_IN\_PROGRESS \\ CREATE\_STOPPING \\ CREATE\_STOPPED

You are billed for all of the training completed up until you stop the
solution version creation. You cannot resume creating a solution version
once it has been stopped.

### Usage

    personalize_stop_solution_version_creation(solutionVersionArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="personalize_stop_solution_version_creation_:_solutionVersionArn">solutionVersionArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the solution version
you want to stop creating.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$stop_solution_version_creation(
      solutionVersionArn = "string"
    )
