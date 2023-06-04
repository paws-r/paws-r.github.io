<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>emr_describe_step</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Provides more detail about the cluster step

### Description

Provides more detail about the cluster step.

### Usage

    emr_describe_step(ClusterId, StepId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="emr_describe_step_:_ClusterId">ClusterId</code></td>
<td><p>[required] The identifier of the cluster with steps to
describe.</p></td>
</tr>
<tr class="even">
<td><code id="emr_describe_step_:_StepId">StepId</code></td>
<td><p>[required] The identifier of the step to describe.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Step = list(
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
        ),
        ExecutionRoleArn = "string"
      )
    )

### Request syntax

    svc$describe_step(
      ClusterId = "string",
      StepId = "string"
    )
