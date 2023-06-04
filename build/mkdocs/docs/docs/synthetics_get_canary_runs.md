<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>synthetics_get_canary_runs</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves a list of runs for a specified canary

### Description

Retrieves a list of runs for a specified canary.

### Usage

    synthetics_get_canary_runs(Name, NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="synthetics_get_canary_runs_:_Name">Name</code></td>
<td><p>[required] The name of the canary that you want to see runs
for.</p></td>
</tr>
<tr class="even">
<td><code
id="synthetics_get_canary_runs_:_NextToken">NextToken</code></td>
<td><p>A token that indicates that there is more data available. You can
use this token in a subsequent <code>get_canary_runs</code> operation to
retrieve the next set of results.</p></td>
</tr>
<tr class="odd">
<td><code
id="synthetics_get_canary_runs_:_MaxResults">MaxResults</code></td>
<td><p>Specify this parameter to limit how many runs are returned each
time you use the <code>get_canary_runs</code> operation. If you omit
this parameter, the default of 100 is used.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      CanaryRuns = list(
        list(
          Id = "string",
          Name = "string",
          Status = list(
            State = "RUNNING"|"PASSED"|"FAILED",
            StateReason = "string",
            StateReasonCode = "CANARY_FAILURE"|"EXECUTION_FAILURE"
          ),
          Timeline = list(
            Started = as.POSIXct(
              "2015-01-01"
            ),
            Completed = as.POSIXct(
              "2015-01-01"
            )
          ),
          ArtifactS3Location = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$get_canary_runs(
      Name = "string",
      NextToken = "string",
      MaxResults = 123
    )
