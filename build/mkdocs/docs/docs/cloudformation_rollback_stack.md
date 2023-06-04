<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudformation_rollback_stack</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## When specifying RollbackStack, you preserve the state of previously provisioned resources when an operation fails

### Description

When specifying `rollback_stack`, you preserve the state of previously
provisioned resources when an operation fails. You can check the status
of the stack through the `describe_stacks` operation.

Rolls back the specified stack to the last known stable state from
`CREATE_FAILED` or `UPDATE_FAILED` stack statuses.

This operation will delete a stack if it doesn't contain a last known
stable state. A last known stable state includes any status in a
`⁠*_COMPLETE⁠`. This includes the following stack statuses.

-   `CREATE_COMPLETE`

-   `UPDATE_COMPLETE`

-   `UPDATE_ROLLBACK_COMPLETE`

-   `IMPORT_COMPLETE`

-   `IMPORT_ROLLBACK_COMPLETE`

### Usage

    cloudformation_rollback_stack(StackName, RoleARN, ClientRequestToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudformation_rollback_stack_:_StackName">StackName</code></td>
<td><p>[required] The name that's associated with the stack.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudformation_rollback_stack_:_RoleARN">RoleARN</code></td>
<td><p>The Amazon Resource Name (ARN) of an Identity and Access
Management role that CloudFormation assumes to rollback the
stack.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudformation_rollback_stack_:_ClientRequestToken">ClientRequestToken</code></td>
<td><p>A unique identifier for this <code>rollback_stack</code>
request.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      StackId = "string"
    )

### Request syntax

    svc$rollback_stack(
      StackName = "string",
      RoleARN = "string",
      ClientRequestToken = "string"
    )
