<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudformation_delete_stack_set</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a stack set

### Description

Deletes a stack set. Before you can delete a stack set, all its member
stack instances must be deleted. For more information about how to
complete this, see `delete_stack_instances`.

### Usage

    cloudformation_delete_stack_set(StackSetName, CallAs)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudformation_delete_stack_set_:_StackSetName">StackSetName</code></td>
<td><p>[required] The name or unique ID of the stack set that you're
deleting. You can obtain this value by running
<code>list_stack_sets</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudformation_delete_stack_set_:_CallAs">CallAs</code></td>
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

    svc$delete_stack_set(
      StackSetName = "string",
      CallAs = "SELF"|"DELEGATED_ADMIN"
    )
