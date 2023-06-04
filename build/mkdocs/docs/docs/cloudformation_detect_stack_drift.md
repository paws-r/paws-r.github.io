<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudformation_detect_stack_drift</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Detects whether a stack's actual configuration differs, or has drifted, from it's expected configuration, as defined in the stack template and any values specified as template parameters

### Description

Detects whether a stack's actual configuration differs, or has
*drifted*, from it's expected configuration, as defined in the stack
template and any values specified as template parameters. For each
resource in the stack that supports drift detection, CloudFormation
compares the actual configuration of the resource with its expected
template configuration. Only resource properties explicitly defined in
the stack template are checked for drift. A stack is considered to have
drifted if one or more of its resources differ from their expected
template configurations. For more information, see [Detecting
Unregulated Configuration Changes to Stacks and
Resources](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-stack-drift.html).

Use `detect_stack_drift` to detect drift on all supported resources for
a given stack, or `detect_stack_resource_drift` to detect drift on
individual resources.

For a list of stack resources that currently support drift detection,
see [Resources that Support Drift
Detection](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/resource-import-supported-resources.html).

`detect_stack_drift` can take up to several minutes, depending on the
number of resources contained within the stack. Use
`describe_stack_drift_detection_status` to monitor the progress of a
detect stack drift operation. Once the drift detection operation has
completed, use `describe_stack_resource_drifts` to return drift
information about the stack and its resources.

When detecting drift on a stack, CloudFormation doesn't detect drift on
any nested stacks belonging to that stack. Perform `detect_stack_drift`
directly on the nested stack itself.

### Usage

    cloudformation_detect_stack_drift(StackName, LogicalResourceIds)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudformation_detect_stack_drift_:_StackName">StackName</code></td>
<td><p>[required] The name of the stack for which you want to detect
drift.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudformation_detect_stack_drift_:_LogicalResourceIds">LogicalResourceIds</code></td>
<td><p>The logical names of any resources you want to use as
filters.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      StackDriftDetectionId = "string"
    )

### Request syntax

    svc$detect_stack_drift(
      StackName = "string",
      LogicalResourceIds = list(
        "string"
      )
    )
