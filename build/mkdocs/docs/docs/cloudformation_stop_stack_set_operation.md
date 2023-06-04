<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudformation_stop_stack_set_operation</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Stops an in-progress operation on a stack set and its associated stack instances

### Description

Stops an in-progress operation on a stack set and its associated stack
instances. StackSets will cancel all the unstarted stack instance
deployments and wait for those are in-progress to complete.

### Usage

    cloudformation_stop_stack_set_operation(StackSetName, OperationId,
      CallAs)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudformation_stop_stack_set_operation_:_StackSetName">StackSetName</code></td>
<td><p>[required] The name or unique ID of the stack set that you want
to stop the operation for.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudformation_stop_stack_set_operation_:_OperationId">OperationId</code></td>
<td><p>[required] The ID of the stack operation.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudformation_stop_stack_set_operation_:_CallAs">CallAs</code></td>
<td><p>[Service-managed permissions] Specifies whether you are acting as
an account administrator in the organization's management account or as
a delegated administrator in a member account.</p>
<p>By default, <code>SELF</code> is specified. Use <code>SELF</code> for
stack sets with self-managed permissions.</p>
<ul>
<li><p>If you are signed in to the management account, specify
<code>SELF</code>.</p></li>
<li><p>If you are signed in to a delegated administrator account,
specify <code>DELEGATED_ADMIN</code>.</p>
<p>Your Amazon Web Services account must be registered as a delegated
administrator in the management account. For more information, see <a
href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-orgs-delegated-admin.html">Register
a delegated administrator</a> in the <em>CloudFormation User
Guide</em>.</p></li>
</ul></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$stop_stack_set_operation(
      StackSetName = "string",
      OperationId = "string",
      CallAs = "SELF"|"DELEGATED_ADMIN"
    )
