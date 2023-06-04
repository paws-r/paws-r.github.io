<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudformation_list_change_sets</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the ID and status of each active change set for a stack

### Description

Returns the ID and status of each active change set for a stack. For
example, CloudFormation lists change sets that are in the
`CREATE_IN_PROGRESS` or `CREATE_PENDING` state.

### Usage

    cloudformation_list_change_sets(StackName, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudformation_list_change_sets_:_StackName">StackName</code></td>
<td><p>[required] The name or the Amazon Resource Name (ARN) of the
stack for which you want to list change sets.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudformation_list_change_sets_:_NextToken">NextToken</code></td>
<td><p>A string (provided by the <code>list_change_sets</code> response
output) that identifies the next page of change sets that you want to
retrieve.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Summaries = list(
        list(
          StackId = "string",
          StackName = "string",
          ChangeSetId = "string",
          ChangeSetName = "string",
          ExecutionStatus = "UNAVAILABLE"|"AVAILABLE"|"EXECUTE_IN_PROGRESS"|"EXECUTE_COMPLETE"|"EXECUTE_FAILED"|"OBSOLETE",
          Status = "CREATE_PENDING"|"CREATE_IN_PROGRESS"|"CREATE_COMPLETE"|"DELETE_PENDING"|"DELETE_IN_PROGRESS"|"DELETE_COMPLETE"|"DELETE_FAILED"|"FAILED",
          StatusReason = "string",
          CreationTime = as.POSIXct(
            "2015-01-01"
          ),
          Description = "string",
          IncludeNestedStacks = TRUE|FALSE,
          ParentChangeSetId = "string",
          RootChangeSetId = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_change_sets(
      StackName = "string",
      NextToken = "string"
    )
