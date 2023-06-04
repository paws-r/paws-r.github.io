<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudformation_describe_stack_events</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns all stack related events for a specified stack in reverse chronological order

### Description

Returns all stack related events for a specified stack in reverse
chronological order. For more information about a stack's event history,
go to
[Stacks](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/cfn-whatis-concepts.html)
in the CloudFormation User Guide.

You can list events for stacks that have failed to create or have been
deleted by specifying the unique stack identifier (stack ID).

### Usage

    cloudformation_describe_stack_events(StackName, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudformation_describe_stack_events_:_StackName">StackName</code></td>
<td><p>The name or the unique stack ID that's associated with the stack,
which aren't always interchangeable:</p>
<ul>
<li><p>Running stacks: You can specify either the stack's name or its
unique stack ID.</p></li>
<li><p>Deleted stacks: You must specify the unique stack ID.</p></li>
</ul>
<p>Default: There is no default value.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudformation_describe_stack_events_:_NextToken">NextToken</code></td>
<td><p>A string that identifies the next page of events that you want to
retrieve.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      StackEvents = list(
        list(
          StackId = "string",
          EventId = "string",
          StackName = "string",
          LogicalResourceId = "string",
          PhysicalResourceId = "string",
          ResourceType = "string",
          Timestamp = as.POSIXct(
            "2015-01-01"
          ),
          ResourceStatus = "CREATE_IN_PROGRESS"|"CREATE_FAILED"|"CREATE_COMPLETE"|"DELETE_IN_PROGRESS"|"DELETE_FAILED"|"DELETE_COMPLETE"|"DELETE_SKIPPED"|"UPDATE_IN_PROGRESS"|"UPDATE_FAILED"|"UPDATE_COMPLETE"|"IMPORT_FAILED"|"IMPORT_COMPLETE"|"IMPORT_IN_PROGRESS"|"IMPORT_ROLLBACK_IN_PROGRESS"|"IMPORT_ROLLBACK_FAILED"|"IMPORT_ROLLBACK_COMPLETE"|"UPDATE_ROLLBACK_IN_PROGRESS"|"UPDATE_ROLLBACK_COMPLETE"|"UPDATE_ROLLBACK_FAILED"|"ROLLBACK_IN_PROGRESS"|"ROLLBACK_COMPLETE"|"ROLLBACK_FAILED",
          ResourceStatusReason = "string",
          ResourceProperties = "string",
          ClientRequestToken = "string",
          HookType = "string",
          HookStatus = "HOOK_IN_PROGRESS"|"HOOK_COMPLETE_SUCCEEDED"|"HOOK_COMPLETE_FAILED"|"HOOK_FAILED",
          HookStatusReason = "string",
          HookInvocationPoint = "PRE_PROVISION",
          HookFailureMode = "FAIL"|"WARN"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_stack_events(
      StackName = "string",
      NextToken = "string"
    )
