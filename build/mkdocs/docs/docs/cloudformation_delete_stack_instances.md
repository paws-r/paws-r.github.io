<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudformation_delete_stack_instances</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes stack instances for the specified accounts, in the specified Amazon Web Services Regions

### Description

Deletes stack instances for the specified accounts, in the specified
Amazon Web Services Regions.

### Usage

    cloudformation_delete_stack_instances(StackSetName, Accounts,
      DeploymentTargets, Regions, OperationPreferences, RetainStacks,
      OperationId, CallAs)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudformation_delete_stack_instances_:_StackSetName">StackSetName</code></td>
<td><p>[required] The name or unique ID of the stack set that you want
to delete stack instances for.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudformation_delete_stack_instances_:_Accounts">Accounts</code></td>
<td><p>[Self-managed permissions] The names of the Amazon Web Services
accounts that you want to delete stack instances for.</p>
<p>You can specify <code>Accounts</code> or
<code>DeploymentTargets</code>, but not both.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudformation_delete_stack_instances_:_DeploymentTargets">DeploymentTargets</code></td>
<td><p>[Service-managed permissions] The Organizations accounts from
which to delete stack instances.</p>
<p>You can specify <code>Accounts</code> or
<code>DeploymentTargets</code>, but not both.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudformation_delete_stack_instances_:_Regions">Regions</code></td>
<td><p>[required] The Amazon Web Services Regions where you want to
delete stack set instances.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudformation_delete_stack_instances_:_OperationPreferences">OperationPreferences</code></td>
<td><p>Preferences for how CloudFormation performs this stack set
operation.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudformation_delete_stack_instances_:_RetainStacks">RetainStacks</code></td>
<td><p>[required] Removes the stack instances from the specified stack
set, but doesn't delete the stacks. You can't reassociate a retained
stack or add an existing, saved stack to a new stack set.</p>
<p>For more information, see <a
href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-concepts.html#stackset-ops-options">Stack
set operation options</a>.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudformation_delete_stack_instances_:_OperationId">OperationId</code></td>
<td><p>The unique identifier for this stack set operation.</p>
<p>If you don't specify an operation ID, the SDK generates one
automatically.</p>
<p>The operation ID also functions as an idempotency token, to ensure
that CloudFormation performs the stack set operation only once, even if
you retry the request multiple times. You can retry stack set operation
requests to ensure that CloudFormation successfully received them.</p>
<p>Repeating this stack set operation with a new operation ID retries
all stack instances whose status is <code>OUTDATED</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudformation_delete_stack_instances_:_CallAs">CallAs</code></td>
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

    svc$delete_stack_instances(
      StackSetName = "string",
      Accounts = list(
        "string"
      ),
      DeploymentTargets = list(
        Accounts = list(
          "string"
        ),
        AccountsUrl = "string",
        OrganizationalUnitIds = list(
          "string"
        ),
        AccountFilterType = "NONE"|"INTERSECTION"|"DIFFERENCE"|"UNION"
      ),
      Regions = list(
        "string"
      ),
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
      RetainStacks = TRUE|FALSE,
      OperationId = "string",
      CallAs = "SELF"|"DELEGATED_ADMIN"
    )
