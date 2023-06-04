<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudformation_describe_stack_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a description of the specified resource in the specified stack

### Description

Returns a description of the specified resource in the specified stack.

For deleted stacks, DescribeStackResource returns resource information
for up to 90 days after the stack has been deleted.

### Usage

    cloudformation_describe_stack_resource(StackName, LogicalResourceId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudformation_describe_stack_resource_:_StackName">StackName</code></td>
<td><p>[required] The name or the unique stack ID that's associated with
the stack, which aren't always interchangeable:</p>
<ul>
<li><p>Running stacks: You can specify either the stack's name or its
unique stack ID.</p></li>
<li><p>Deleted stacks: You must specify the unique stack ID.</p></li>
</ul>
<p>Default: There is no default value.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudformation_describe_stack_resource_:_LogicalResourceId">LogicalResourceId</code></td>
<td><p>[required] The logical name of the resource as specified in the
template.</p>
<p>Default: There is no default value.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      StackResourceDetail = list(
        StackName = "string",
        StackId = "string",
        LogicalResourceId = "string",
        PhysicalResourceId = "string",
        ResourceType = "string",
        LastUpdatedTimestamp = as.POSIXct(
          "2015-01-01"
        ),
        ResourceStatus = "CREATE_IN_PROGRESS"|"CREATE_FAILED"|"CREATE_COMPLETE"|"DELETE_IN_PROGRESS"|"DELETE_FAILED"|"DELETE_COMPLETE"|"DELETE_SKIPPED"|"UPDATE_IN_PROGRESS"|"UPDATE_FAILED"|"UPDATE_COMPLETE"|"IMPORT_FAILED"|"IMPORT_COMPLETE"|"IMPORT_IN_PROGRESS"|"IMPORT_ROLLBACK_IN_PROGRESS"|"IMPORT_ROLLBACK_FAILED"|"IMPORT_ROLLBACK_COMPLETE"|"UPDATE_ROLLBACK_IN_PROGRESS"|"UPDATE_ROLLBACK_COMPLETE"|"UPDATE_ROLLBACK_FAILED"|"ROLLBACK_IN_PROGRESS"|"ROLLBACK_COMPLETE"|"ROLLBACK_FAILED",
        ResourceStatusReason = "string",
        Description = "string",
        Metadata = "string",
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
    )

### Request syntax

    svc$describe_stack_resource(
      StackName = "string",
      LogicalResourceId = "string"
    )
