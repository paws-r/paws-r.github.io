<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudformation_list_stack_resources</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns descriptions of all resources of the specified stack

### Description

Returns descriptions of all resources of the specified stack.

For deleted stacks, ListStackResources returns resource information for
up to 90 days after the stack has been deleted.

### Usage

    cloudformation_list_stack_resources(StackName, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudformation_list_stack_resources_:_StackName">StackName</code></td>
<td><p>[required] The name or the unique stack ID that is associated
with the stack, which aren't always interchangeable:</p>
<ul>
<li><p>Running stacks: You can specify either the stack's name or its
unique stack ID.</p></li>
<li><p>Deleted stacks: You must specify the unique stack ID.</p></li>
</ul>
<p>Default: There is no default value.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudformation_list_stack_resources_:_NextToken">NextToken</code></td>
<td><p>A string that identifies the next page of stack resources that
you want to retrieve.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      StackResourceSummaries = list(
        list(
          LogicalResourceId = "string",
          PhysicalResourceId = "string",
          ResourceType = "string",
          LastUpdatedTimestamp = as.POSIXct(
            "2015-01-01"
          ),
          ResourceStatus = "CREATE_IN_PROGRESS"|"CREATE_FAILED"|"CREATE_COMPLETE"|"DELETE_IN_PROGRESS"|"DELETE_FAILED"|"DELETE_COMPLETE"|"DELETE_SKIPPED"|"UPDATE_IN_PROGRESS"|"UPDATE_FAILED"|"UPDATE_COMPLETE"|"IMPORT_FAILED"|"IMPORT_COMPLETE"|"IMPORT_IN_PROGRESS"|"IMPORT_ROLLBACK_IN_PROGRESS"|"IMPORT_ROLLBACK_FAILED"|"IMPORT_ROLLBACK_COMPLETE"|"UPDATE_ROLLBACK_IN_PROGRESS"|"UPDATE_ROLLBACK_COMPLETE"|"UPDATE_ROLLBACK_FAILED"|"ROLLBACK_IN_PROGRESS"|"ROLLBACK_COMPLETE"|"ROLLBACK_FAILED",
          ResourceStatusReason = "string",
          DriftInformation = list(
            StackResourceDriftStatus = "IN_SYNC"|"MODIFIED"|"DELETED"|"NOT_CHECKED",
            LastCheckTimestamp = as.POSIXct(
              "2015-01-01"
            )
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

    svc$list_stack_resources(
      StackName = "string",
      NextToken = "string"
    )
