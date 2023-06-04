<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudformation_describe_stack_resource_drifts</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns drift information for the resources that have been checked for drift in the specified stack

### Description

Returns drift information for the resources that have been checked for
drift in the specified stack. This includes actual and expected
configuration values for resources where CloudFormation detects
configuration drift.

For a given stack, there will be one `StackResourceDrift` for each stack
resource that has been checked for drift. Resources that haven't yet
been checked for drift aren't included. Resources that don't currently
support drift detection aren't checked, and so not included. For a list
of resources that support drift detection, see [Resources that Support
Drift
Detection](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/resource-import-supported-resources.html).

Use `detect_stack_resource_drift` to detect drift on individual
resources, or `detect_stack_drift` to detect drift on all supported
resources for a given stack.

### Usage

    cloudformation_describe_stack_resource_drifts(StackName,
      StackResourceDriftStatusFilters, NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudformation_describe_stack_resource_drifts_:_StackName">StackName</code></td>
<td><p>[required] The name of the stack for which you want drift
information.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudformation_describe_stack_resource_drifts_:_StackResourceDriftStatusFilters">StackResourceDriftStatusFilters</code></td>
<td><p>The resource drift status values to use as filters for the
resource drift results returned.</p>
<ul>
<li><p><code>DELETED</code>: The resource differs from its expected
template configuration in that the resource has been deleted.</p></li>
<li><p><code>MODIFIED</code>: One or more resource properties differ
from their expected template values.</p></li>
<li><p><code>IN_SYNC</code>: The resource's actual configuration matches
its expected template configuration.</p></li>
<li><p><code>NOT_CHECKED</code>: CloudFormation doesn't currently return
this value.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="cloudformation_describe_stack_resource_drifts_:_NextToken">NextToken</code></td>
<td><p>A string that identifies the next page of stack resource drift
results.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudformation_describe_stack_resource_drifts_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to be returned with a single call.
If the number of available results exceeds this maximum, the response
includes a <code>NextToken</code> value that you can assign to the
<code>NextToken</code> request parameter to get the next set of
results.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      StackResourceDrifts = list(
        list(
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
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_stack_resource_drifts(
      StackName = "string",
      StackResourceDriftStatusFilters = list(
        "IN_SYNC"|"MODIFIED"|"DELETED"|"NOT_CHECKED"
      ),
      NextToken = "string",
      MaxResults = 123
    )
