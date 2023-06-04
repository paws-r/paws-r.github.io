<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudformation_create_stack_instances</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates stack instances for the specified accounts, within the specified Amazon Web Services Regions

### Description

Creates stack instances for the specified accounts, within the specified
Amazon Web Services Regions. A stack instance refers to a stack in a
specific account and Region. You must specify at least one value for
either `Accounts` or `DeploymentTargets`, and you must specify at least
one value for `Regions`.

### Usage

    cloudformation_create_stack_instances(StackSetName, Accounts,
      DeploymentTargets, Regions, ParameterOverrides, OperationPreferences,
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
id="cloudformation_create_stack_instances_:_StackSetName">StackSetName</code></td>
<td><p>[required] The name or unique ID of the stack set that you want
to create stack instances from.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudformation_create_stack_instances_:_Accounts">Accounts</code></td>
<td><p>[Self-managed permissions] The names of one or more Amazon Web
Services accounts that you want to create stack instances in the
specified Region(s) for.</p>
<p>You can specify <code>Accounts</code> or
<code>DeploymentTargets</code>, but not both.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudformation_create_stack_instances_:_DeploymentTargets">DeploymentTargets</code></td>
<td><p>[Service-managed permissions] The Organizations accounts for
which to create stack instances in the specified Amazon Web Services
Regions.</p>
<p>You can specify <code>Accounts</code> or
<code>DeploymentTargets</code>, but not both.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudformation_create_stack_instances_:_Regions">Regions</code></td>
<td><p>[required] The names of one or more Amazon Web Services Regions
where you want to create stack instances using the specified Amazon Web
Services accounts.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudformation_create_stack_instances_:_ParameterOverrides">ParameterOverrides</code></td>
<td><p>A list of stack set parameters whose values you want to override
in the selected stack instances.</p>
<p>Any overridden parameter values will be applied to all stack
instances in the specified accounts and Amazon Web Services Regions.
When specifying parameters and their values, be aware of how
CloudFormation sets parameter values during stack instance
operations:</p>
<ul>
<li><p>To override the current value for a parameter, include the
parameter and specify its value.</p></li>
<li><p>To leave an overridden parameter set to its present value,
include the parameter and specify <code>UsePreviousValue</code> as
<code>true</code>. (You can't specify both a value and set
<code>UsePreviousValue</code> to <code>true</code>.)</p></li>
<li><p>To set an overridden parameter back to the value specified in the
stack set, specify a parameter list but don't include the parameter in
the list.</p></li>
<li><p>To leave all parameters set to their present values, don't
specify this property at all.</p></li>
</ul>
<p>During stack set updates, any parameter values overridden for a stack
instance aren't updated, but retain their overridden value.</p>
<p>You can only override the parameter <em>values</em> that are
specified in the stack set; to add or delete a parameter itself, use
<code>update_stack_set</code> to update the stack set template.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudformation_create_stack_instances_:_OperationPreferences">OperationPreferences</code></td>
<td><p>Preferences for how CloudFormation performs this stack set
operation.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudformation_create_stack_instances_:_OperationId">OperationId</code></td>
<td><p>The unique identifier for this stack set operation.</p>
<p>The operation ID also functions as an idempotency token, to ensure
that CloudFormation performs the stack set operation only once, even if
you retry the request multiple times. You might retry stack set
operation requests to ensure that CloudFormation successfully received
them.</p>
<p>If you don't specify an operation ID, the SDK generates one
automatically.</p>
<p>Repeating this stack set operation with a new operation ID retries
all stack instances whose status is <code>OUTDATED</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudformation_create_stack_instances_:_CallAs">CallAs</code></td>
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

    svc$create_stack_instances(
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
      ParameterOverrides = list(
        list(
          ParameterKey = "string",
          ParameterValue = "string",
          UsePreviousValue = TRUE|FALSE,
          ResolvedValue = "string"
        )
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
      OperationId = "string",
      CallAs = "SELF"|"DELEGATED_ADMIN"
    )
