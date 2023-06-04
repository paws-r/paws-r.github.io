<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>emr_list_steps</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Provides a list of steps for the cluster in reverse order unless you specify stepIds with the request or filter by StepStates

### Description

Provides a list of steps for the cluster in reverse order unless you
specify `stepIds` with the request or filter by `StepStates`. You can
specify a maximum of 10 `stepIDs`. The CLI automatically paginates
results to return a list greater than 50 steps. To return more than 50
steps using the CLI, specify a `Marker`, which is a pagination token
that indicates the next set of steps to retrieve.

### Usage

    emr_list_steps(ClusterId, StepStates, StepIds, Marker)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="emr_list_steps_:_ClusterId">ClusterId</code></td>
<td><p>[required] The identifier of the cluster for which to list the
steps.</p></td>
</tr>
<tr class="even">
<td><code id="emr_list_steps_:_StepStates">StepStates</code></td>
<td><p>The filter to limit the step list based on certain
states.</p></td>
</tr>
<tr class="odd">
<td><code id="emr_list_steps_:_StepIds">StepIds</code></td>
<td><p>The filter to limit the step list based on the identifier of the
steps. You can specify a maximum of ten Step IDs. The character
constraint applies to the overall length of the array.</p></td>
</tr>
<tr class="even">
<td><code id="emr_list_steps_:_Marker">Marker</code></td>
<td><p>The maximum number of steps that a single <code>list_steps</code>
action returns is 50. To return a longer list of steps, use multiple
<code>list_steps</code> actions along with the <code>Marker</code>
parameter, which is a pagination token that indicates the next set of
results to retrieve.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Steps = list(
        list(
          Id = "string",
          Name = "string",
          Config = list(
            Jar = "string",
            Properties = list(
              "string"
            ),
            MainClass = "string",
            Args = list(
              "string"
            )
          ),
          ActionOnFailure = "TERMINATE_JOB_FLOW"|"TERMINATE_CLUSTER"|"CANCEL_AND_WAIT"|"CONTINUE",
          Status = list(
            State = "PENDING"|"CANCEL_PENDING"|"RUNNING"|"COMPLETED"|"CANCELLED"|"FAILED"|"INTERRUPTED",
            StateChangeReason = list(
              Code = "NONE",
              Message = "string"
            ),
            FailureDetails = list(
              Reason = "string",
              Message = "string",
              LogFile = "string"
            ),
            Timeline = list(
              CreationDateTime = as.POSIXct(
                "2015-01-01"
              ),
              StartDateTime = as.POSIXct(
                "2015-01-01"
              ),
              EndDateTime = as.POSIXct(
                "2015-01-01"
              )
            )
          )
        )
      ),
      Marker = "string"
    )

### Request syntax

    svc$list_steps(
      ClusterId = "string",
      StepStates = list(
        "PENDING"|"CANCEL_PENDING"|"RUNNING"|"COMPLETED"|"CANCELLED"|"FAILED"|"INTERRUPTED"
      ),
      StepIds = list(
        "string"
      ),
      Marker = "string"
    )
