<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudformation_import_stacks_to_stack_set</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Import existing stacks into a new stack sets

### Description

Import existing stacks into a new stack sets. Use the stack import
operation to import up to 10 stacks into a new stack set in the same
account as the source stack or in a different administrator account and
Region, by specifying the stack ID of the stack you intend to import.

`import_stacks_to_stack_set` is only supported by self-managed
permissions.

### Usage

    cloudformation_import_stacks_to_stack_set(StackSetName, StackIds,
      StackIdsUrl, OrganizationalUnitIds, OperationPreferences, OperationId,
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
id="cloudformation_import_stacks_to_stack_set_:_StackSetName">StackSetName</code></td>
<td><p>[required] The name of the stack set. The name must be unique in
the Region where you create your stack set.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudformation_import_stacks_to_stack_set_:_StackIds">StackIds</code></td>
<td><p>The IDs of the stacks you are importing into a stack set. You
import up to 10 stacks per stack set at a time.</p>
<p>Specify either <code>StackIds</code> or
<code>StackIdsUrl</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudformation_import_stacks_to_stack_set_:_StackIdsUrl">StackIdsUrl</code></td>
<td><p>The Amazon S3 URL which contains list of stack ids to be
inputted.</p>
<p>Specify either <code>StackIds</code> or
<code>StackIdsUrl</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudformation_import_stacks_to_stack_set_:_OrganizationalUnitIds">OrganizationalUnitIds</code></td>
<td><p>The list of OU ID's to which the stacks being imported has to be
mapped as deployment target.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudformation_import_stacks_to_stack_set_:_OperationPreferences">OperationPreferences</code></td>
<td></td>
</tr>
<tr class="even">
<td><code
id="cloudformation_import_stacks_to_stack_set_:_OperationId">OperationId</code></td>
<td><p>A unique, user defined, identifier for the stack set
operation.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudformation_import_stacks_to_stack_set_:_CallAs">CallAs</code></td>
<td><p>By default, <code>SELF</code> is specified. Use <code>SELF</code>
for stack sets with self-managed permissions.</p>
<ul>
<li><p>If you are signed in to the management account, specify
<code>SELF</code>.</p></li>
<li><p>For service managed stack sets, specify
<code>DELEGATED_ADMIN</code>.</p></li>
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

    svc$import_stacks_to_stack_set(
      StackSetName = "string",
      StackIds = list(
        "string"
      ),
      StackIdsUrl = "string",
      OrganizationalUnitIds = list(
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
      OperationId = "string",
      CallAs = "SELF"|"DELEGATED_ADMIN"
    )
