<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>applicationinsights_describe_problem</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes an application problem

### Description

Describes an application problem.

### Usage

    applicationinsights_describe_problem(ProblemId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="applicationinsights_describe_problem_:_ProblemId">ProblemId</code></td>
<td><p>[required] The ID of the problem.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Problem = list(
        Id = "string",
        Title = "string",
        Insights = "string",
        Status = "IGNORE"|"RESOLVED"|"PENDING"|"RECURRING",
        AffectedResource = "string",
        StartTime = as.POSIXct(
          "2015-01-01"
        ),
        EndTime = as.POSIXct(
          "2015-01-01"
        ),
        SeverityLevel = "Informative"|"Low"|"Medium"|"High",
        ResourceGroupName = "string",
        Feedback = list(
          "NOT_SPECIFIED"|"USEFUL"|"NOT_USEFUL"
        ),
        RecurringCount = 123,
        LastRecurrenceTime = as.POSIXct(
          "2015-01-01"
        )
      )
    )

### Request syntax

    svc$describe_problem(
      ProblemId = "string"
    )
