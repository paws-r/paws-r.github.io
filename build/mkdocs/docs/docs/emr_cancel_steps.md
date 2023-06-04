<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>emr_cancel_steps</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Cancels a pending step or steps in a running cluster

### Description

Cancels a pending step or steps in a running cluster. Available only in
Amazon EMR versions 4.8.0 and later, excluding version 5.0.0. A maximum
of 256 steps are allowed in each CancelSteps request. CancelSteps is
idempotent but asynchronous; it does not guarantee that a step will be
canceled, even if the request is successfully submitted. When you use
Amazon EMR releases 5.28.0 and later, you can cancel steps that are in a
`PENDING` or `RUNNING` state. In earlier versions of Amazon EMR, you can
only cancel steps that are in a `PENDING` state.

### Usage

    emr_cancel_steps(ClusterId, StepIds, StepCancellationOption)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="emr_cancel_steps_:_ClusterId">ClusterId</code></td>
<td><p>[required] The <code>ClusterID</code> for the specified steps
that will be canceled. Use <code>run_job_flow</code> and
<code>list_clusters</code> to get ClusterIDs.</p></td>
</tr>
<tr class="even">
<td><code id="emr_cancel_steps_:_StepIds">StepIds</code></td>
<td><p>[required] The list of <code>StepIDs</code> to cancel. Use
<code>list_steps</code> to get steps and their states for the specified
cluster.</p></td>
</tr>
<tr class="odd">
<td><code
id="emr_cancel_steps_:_StepCancellationOption">StepCancellationOption</code></td>
<td><p>The option to choose to cancel <code>RUNNING</code> steps. By
default, the value is <code>SEND_INTERRUPT</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      CancelStepsInfoList = list(
        list(
          StepId = "string",
          Status = "SUBMITTED"|"FAILED",
          Reason = "string"
        )
      )
    )

### Request syntax

    svc$cancel_steps(
      ClusterId = "string",
      StepIds = list(
        "string"
      ),
      StepCancellationOption = "SEND_INTERRUPT"|"TERMINATE_PROCESS"
    )
