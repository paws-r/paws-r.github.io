<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudformation_detect_stack_set_drift</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Detect drift on a stack set

### Description

Detect drift on a stack set. When CloudFormation performs drift
detection on a stack set, it performs drift detection on the stack
associated with each stack instance in the stack set. For more
information, see [How CloudFormation performs drift detection on a stack
set](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-drift.html).

`detect_stack_set_drift` returns the `OperationId` of the stack set
drift detection operation. Use this operation id with
`describe_stack_set_operation` to monitor the progress of the drift
detection operation. The drift detection operation may take some time,
depending on the number of stack instances included in the stack set, in
addition to the number of resources included in each stack.

Once the operation has completed, use the following actions to return
drift information:

-   Use `describe_stack_set` to return detailed information about the
    stack set, including detailed information about the last *completed*
    drift operation performed on the stack set. (Information about drift
    operations that are in progress isn't included.)

-   Use `list_stack_instances` to return a list of stack instances
    belonging to the stack set, including the drift status and last
    drift time checked of each instance.

-   Use `describe_stack_instance` to return detailed information about a
    specific stack instance, including its drift status and last drift
    time checked.

For more information about performing a drift detection operation on a
stack set, see [Detecting unmanaged changes in stack
sets](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-drift.html).

You can only run a single drift detection operation on a given stack set
at one time.

To stop a drift detection stack set operation, use
`stop_stack_set_operation`.

### Usage

    cloudformation_detect_stack_set_drift(StackSetName,
      OperationPreferences, OperationId, CallAs)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudformation_detect_stack_set_drift_:_StackSetName">StackSetName</code></td>
<td><p>[required] The name of the stack set on which to perform the
drift detection operation.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudformation_detect_stack_set_drift_:_OperationPreferences">OperationPreferences</code></td>
<td></td>
</tr>
<tr class="odd">
<td><code
id="cloudformation_detect_stack_set_drift_:_OperationId">OperationId</code></td>
<td><p><em>The ID of the stack set operation.</em></p></td>
</tr>
<tr class="even">
<td><code
id="cloudformation_detect_stack_set_drift_:_CallAs">CallAs</code></td>
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

A list with the following syntax:

    list(
      OperationId = "string"
    )

### Request syntax

    svc$detect_stack_set_drift(
      StackSetName = "string",
      OperationPreferences = list(
        RegionConcurrencyType = "SEQUENTIAL"|"PARALLEL",
        RegionOrder = list(
          "string"
        ),
        FailureToleranceCount = 123,
        FailureTolerancePercentage = 123,
        MaxConcurrentCount = 123,
        MaxConcurrentPercentage = 123
      ),
      OperationId = "string",
      CallAs = "SELF"|"DELEGATED_ADMIN"
    )
