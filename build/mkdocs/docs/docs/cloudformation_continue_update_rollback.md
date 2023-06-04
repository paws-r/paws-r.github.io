<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudformation_continue_update_rollback</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## For a specified stack that's in the UPDATE\_ROLLBACK\_FAILED state, continues rolling it back to the UPDATE\_ROLLBACK\_COMPLETE state

### Description

For a specified stack that's in the `UPDATE_ROLLBACK_FAILED` state,
continues rolling it back to the `UPDATE_ROLLBACK_COMPLETE` state.
Depending on the cause of the failure, you can manually [fix the
error](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/troubleshooting.html#troubleshooting-errors-update-rollback-failed)
and continue the rollback. By continuing the rollback, you can return
your stack to a working state (the `UPDATE_ROLLBACK_COMPLETE` state),
and then try to update the stack again.

A stack goes into the `UPDATE_ROLLBACK_FAILED` state when CloudFormation
can't roll back all changes after a failed stack update. For example,
you might have a stack that's rolling back to an old database instance
that was deleted outside of CloudFormation. Because CloudFormation
doesn't know the database was deleted, it assumes that the database
instance still exists and attempts to roll back to it, causing the
update rollback to fail.

### Usage

    cloudformation_continue_update_rollback(StackName, RoleARN,
      ResourcesToSkip, ClientRequestToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudformation_continue_update_rollback_:_StackName">StackName</code></td>
<td><p>[required] The name or the unique ID of the stack that you want
to continue rolling back.</p>
<p>Don't specify the name of a nested stack (a stack that was created by
using the <code
style="white-space: pre;">⁠AWS::CloudFormation::Stack⁠</code> resource).
Instead, use this operation on the parent stack (the stack that contains
the <code style="white-space: pre;">⁠AWS::CloudFormation::Stack⁠</code>
resource).</p></td>
</tr>
<tr class="even">
<td><code
id="cloudformation_continue_update_rollback_:_RoleARN">RoleARN</code></td>
<td><p>The Amazon Resource Name (ARN) of an Identity and Access
Management (IAM) role that CloudFormation assumes to roll back the
stack. CloudFormation uses the role's credentials to make calls on your
behalf. CloudFormation always uses this role for all future operations
on the stack. Provided that users have permission to operate on the
stack, CloudFormation uses this role even if the users don't have
permission to pass it. Ensure that the role grants least permission.</p>
<p>If you don't specify a value, CloudFormation uses the role that was
previously associated with the stack. If no role is available,
CloudFormation uses a temporary session that's generated from your user
credentials.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudformation_continue_update_rollback_:_ResourcesToSkip">ResourcesToSkip</code></td>
<td><p>A list of the logical IDs of the resources that CloudFormation
skips during the continue update rollback operation. You can specify
only resources that are in the <code>UPDATE_FAILED</code> state because
a rollback failed. You can't specify resources that are in the
<code>UPDATE_FAILED</code> state for other reasons, for example, because
an update was canceled. To check why a resource update failed, use the
<code>describe_stack_resources</code> action, and view the resource
status reason.</p>
<p>Specify this property to skip rolling back resources that
CloudFormation can't successfully roll back. We recommend that you <a
href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/troubleshooting.html#troubleshooting-errors-update-rollback-failed">troubleshoot</a>
resources before skipping them. CloudFormation sets the status of the
specified resources to <code>UPDATE_COMPLETE</code> and continues to
roll back the stack. After the rollback is complete, the state of the
skipped resources will be inconsistent with the state of the resources
in the stack template. Before performing another stack update, you must
update the stack or resources to be consistent with each other. If you
don't, subsequent stack updates might fail, and the stack will become
unrecoverable.</p>
<p>Specify the minimum number of resources required to successfully roll
back your stack. For example, a failed resource update might cause
dependent resources to fail. In this case, it might not be necessary to
skip the dependent resources.</p>
<p>To skip resources that are part of nested stacks, use the following
format: <code>NestedStackName.ResourceLogicalID</code>. If you want to
specify the logical ID of a stack resource (<code
style="white-space: pre;">⁠Type: AWS::CloudFormation::Stack⁠</code>) in
the <code>ResourcesToSkip</code> list, then its corresponding embedded
stack must be in one of the following states:
<code>DELETE_IN_PROGRESS</code>, <code>DELETE_COMPLETE</code>, or
<code>DELETE_FAILED</code>.</p>
<p>Don't confuse a child stack's name with its corresponding logical ID
defined in the parent stack. For an example of a continue update
rollback operation with nested stacks, see <a
href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-updating-stacks-continueupdaterollback.html#nested-stacks">Using
ResourcesToSkip to recover a nested stacks hierarchy</a>.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudformation_continue_update_rollback_:_ClientRequestToken">ClientRequestToken</code></td>
<td><p>A unique identifier for this
<code>continue_update_rollback</code> request. Specify this token if you
plan to retry requests so that CloudFormationknows that you're not
attempting to continue the rollback to a stack with the same name. You
might retry <code>continue_update_rollback</code> requests to ensure
that CloudFormation successfully received them.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$continue_update_rollback(
      StackName = "string",
      RoleARN = "string",
      ResourcesToSkip = list(
        "string"
      ),
      ClientRequestToken = "string"
    )
