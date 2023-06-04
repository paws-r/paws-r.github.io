<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudformation_execute_change_set</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates a stack using the input information that was provided when the specified change set was created

### Description

Updates a stack using the input information that was provided when the
specified change set was created. After the call successfully completes,
CloudFormation starts updating the stack. Use the `describe_stacks`
action to view the status of the update.

When you execute a change set, CloudFormation deletes all other change
sets associated with the stack because they aren't valid for the updated
stack.

If a stack policy is associated with the stack, CloudFormation enforces
the policy during the update. You can't specify a temporary stack policy
that overrides the current policy.

To create a change set for the entire stack hierarchy,
`IncludeNestedStacks` must have been set to `True`.

### Usage

    cloudformation_execute_change_set(ChangeSetName, StackName,
      ClientRequestToken, DisableRollback)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudformation_execute_change_set_:_ChangeSetName">ChangeSetName</code></td>
<td><p>[required] The name or Amazon Resource Name (ARN) of the change
set that you want use to update the specified stack.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudformation_execute_change_set_:_StackName">StackName</code></td>
<td><p>If you specified the name of a change set, specify the stack name
or Amazon Resource Name (ARN) that's associated with the change set you
want to execute.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudformation_execute_change_set_:_ClientRequestToken">ClientRequestToken</code></td>
<td><p>A unique identifier for this <code>execute_change_set</code>
request. Specify this token if you plan to retry requests so that
CloudFormation knows that you're not attempting to execute a change set
to update a stack with the same name. You might retry
<code>execute_change_set</code> requests to ensure that CloudFormation
successfully received them.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudformation_execute_change_set_:_DisableRollback">DisableRollback</code></td>
<td><p>Preserves the state of previously provisioned resources when an
operation fails.</p>
<p>Default: <code>True</code></p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$execute_change_set(
      ChangeSetName = "string",
      StackName = "string",
      ClientRequestToken = "string",
      DisableRollback = TRUE|FALSE
    )
