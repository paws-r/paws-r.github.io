<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudformation_detect_stack_resource_drift</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns information about whether a resource's actual configuration differs, or has drifted, from it's expected configuration, as defined in the stack template and any values specified as template parameters

### Description

Returns information about whether a resource's actual configuration
differs, or has *drifted*, from it's expected configuration, as defined
in the stack template and any values specified as template parameters.
This information includes actual and expected property values for
resources in which CloudFormation detects drift. Only resource
properties explicitly defined in the stack template are checked for
drift. For more information about stack and resource drift, see
[Detecting Unregulated Configuration Changes to Stacks and
Resources](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-stack-drift.html).

Use `detect_stack_resource_drift` to detect drift on individual
resources, or `detect_stack_drift` to detect drift on all resources in a
given stack that support drift detection.

Resources that don't currently support drift detection can't be checked.
For a list of resources that support drift detection, see [Resources
that Support Drift
Detection](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/resource-import-supported-resources.html).

### Usage

    cloudformation_detect_stack_resource_drift(StackName, LogicalResourceId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudformation_detect_stack_resource_drift_:_StackName">StackName</code></td>
<td><p>[required] The name of the stack to which the resource
belongs.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudformation_detect_stack_resource_drift_:_LogicalResourceId">LogicalResourceId</code></td>
<td><p>[required] The logical name of the resource for which to return
drift information.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      StackResourceDrift = list(
        StackId = "string",
        LogicalResourceId = "string",
        PhysicalResourceId = "string",
        PhysicalResourceIdContext = list(
          list(
            Key = "string",
            Value = "string"
          )
        ),
        ResourceType = "string",
        ExpectedProperties = "string",
        ActualProperties = "string",
        PropertyDifferences = list(
          list(
            PropertyPath = "string",
            ExpectedValue = "string",
            ActualValue = "string",
            DifferenceType = "ADD"|"REMOVE"|"NOT_EQUAL"
          )
        ),
        StackResourceDriftStatus = "IN_SYNC"|"MODIFIED"|"DELETED"|"NOT_CHECKED",
        Timestamp = as.POSIXct(
          "2015-01-01"
        ),
        ModuleInfo = list(
          TypeHierarchy = "string",
          LogicalIdHierarchy = "string"
        )
      )
    )

### Request syntax

    svc$detect_stack_resource_drift(
      StackName = "string",
      LogicalResourceId = "string"
    )
