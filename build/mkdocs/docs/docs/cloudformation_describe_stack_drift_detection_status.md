<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudformation_describe_stack_drift_detection_status</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns information about a stack drift detection operation

### Description

Returns information about a stack drift detection operation. A stack
drift detection operation detects whether a stack's actual configuration
differs, or has *drifted*, from it's expected configuration, as defined
in the stack template and any values specified as template parameters. A
stack is considered to have drifted if one or more of its resources have
drifted. For more information about stack and resource drift, see
[Detecting Unregulated Configuration Changes to Stacks and
Resources](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-stack-drift.html).

Use `detect_stack_drift` to initiate a stack drift detection operation.
`detect_stack_drift` returns a `StackDriftDetectionId` you can use to
monitor the progress of the operation using
`describe_stack_drift_detection_status`. Once the drift detection
operation has completed, use `describe_stack_resource_drifts` to return
drift information about the stack and its resources.

### Usage

    cloudformation_describe_stack_drift_detection_status(
      StackDriftDetectionId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudformation_describe_stack_drift_detection_status_:_StackDriftDetectionId">StackDriftDetectionId</code></td>
<td><p>[required] The ID of the drift detection results of this
operation.</p>
<p>CloudFormation generates new results, with a new drift detection ID,
each time this operation is run. However, the number of drift results
CloudFormation retains for any given stack, and for how long, may
vary.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      StackId = "string",
      StackDriftDetectionId = "string",
      StackDriftStatus = "DRIFTED"|"IN_SYNC"|"UNKNOWN"|"NOT_CHECKED",
      DetectionStatus = "DETECTION_IN_PROGRESS"|"DETECTION_FAILED"|"DETECTION_COMPLETE",
      DetectionStatusReason = "string",
      DriftedStackResourceCount = 123,
      Timestamp = as.POSIXct(
        "2015-01-01"
      )
    )

### Request syntax

    svc$describe_stack_drift_detection_status(
      StackDriftDetectionId = "string"
    )
