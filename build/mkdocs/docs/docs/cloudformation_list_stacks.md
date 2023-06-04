<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudformation_list_stacks</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the summary information for stacks whose status matches the specified StackStatusFilter

### Description

Returns the summary information for stacks whose status matches the
specified StackStatusFilter. Summary information for stacks that have
been deleted is kept for 90 days after the stack is deleted. If no
StackStatusFilter is specified, summary information for all stacks is
returned (including existing stacks and stacks that have been deleted).

### Usage

    cloudformation_list_stacks(NextToken, StackStatusFilter)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudformation_list_stacks_:_NextToken">NextToken</code></td>
<td><p>A string that identifies the next page of stacks that you want to
retrieve.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudformation_list_stacks_:_StackStatusFilter">StackStatusFilter</code></td>
<td><p>Stack status to use as a filter. Specify one or more stack status
codes to list only stacks with the specified status codes. For a
complete list of stack status codes, see the <code>StackStatus</code>
parameter of the Stack data type.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      StackSummaries = list(
        list(
          StackId = "string",
          StackName = "string",
          TemplateDescription = "string",
          CreationTime = as.POSIXct(
            "2015-01-01"
          ),
          LastUpdatedTime = as.POSIXct(
            "2015-01-01"
          ),
          DeletionTime = as.POSIXct(
            "2015-01-01"
          ),
          StackStatus = "CREATE_IN_PROGRESS"|"CREATE_FAILED"|"CREATE_COMPLETE"|"ROLLBACK_IN_PROGRESS"|"ROLLBACK_FAILED"|"ROLLBACK_COMPLETE"|"DELETE_IN_PROGRESS"|"DELETE_FAILED"|"DELETE_COMPLETE"|"UPDATE_IN_PROGRESS"|"UPDATE_COMPLETE_CLEANUP_IN_PROGRESS"|"UPDATE_COMPLETE"|"UPDATE_FAILED"|"UPDATE_ROLLBACK_IN_PROGRESS"|"UPDATE_ROLLBACK_FAILED"|"UPDATE_ROLLBACK_COMPLETE_CLEANUP_IN_PROGRESS"|"UPDATE_ROLLBACK_COMPLETE"|"REVIEW_IN_PROGRESS"|"IMPORT_IN_PROGRESS"|"IMPORT_COMPLETE"|"IMPORT_ROLLBACK_IN_PROGRESS"|"IMPORT_ROLLBACK_FAILED"|"IMPORT_ROLLBACK_COMPLETE",
          StackStatusReason = "string",
          ParentId = "string",
          RootId = "string",
          DriftInformation = list(
            StackDriftStatus = "DRIFTED"|"IN_SYNC"|"UNKNOWN"|"NOT_CHECKED",
            LastCheckTimestamp = as.POSIXct(
              "2015-01-01"
            )
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_stacks(
      NextToken = "string",
      StackStatusFilter = list(
        "CREATE_IN_PROGRESS"|"CREATE_FAILED"|"CREATE_COMPLETE"|"ROLLBACK_IN_PROGRESS"|"ROLLBACK_FAILED"|"ROLLBACK_COMPLETE"|"DELETE_IN_PROGRESS"|"DELETE_FAILED"|"DELETE_COMPLETE"|"UPDATE_IN_PROGRESS"|"UPDATE_COMPLETE_CLEANUP_IN_PROGRESS"|"UPDATE_COMPLETE"|"UPDATE_FAILED"|"UPDATE_ROLLBACK_IN_PROGRESS"|"UPDATE_ROLLBACK_FAILED"|"UPDATE_ROLLBACK_COMPLETE_CLEANUP_IN_PROGRESS"|"UPDATE_ROLLBACK_COMPLETE"|"REVIEW_IN_PROGRESS"|"IMPORT_IN_PROGRESS"|"IMPORT_COMPLETE"|"IMPORT_ROLLBACK_IN_PROGRESS"|"IMPORT_ROLLBACK_FAILED"|"IMPORT_ROLLBACK_COMPLETE"
      )
    )
