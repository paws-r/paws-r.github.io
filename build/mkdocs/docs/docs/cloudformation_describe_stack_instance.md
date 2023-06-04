<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudformation_describe_stack_instance</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the stack instance that's associated with the specified stack set, Amazon Web Services account, and Region

### Description

Returns the stack instance that's associated with the specified stack
set, Amazon Web Services account, and Region.

For a list of stack instances that are associated with a specific stack
set, use `list_stack_instances`.

### Usage

    cloudformation_describe_stack_instance(StackSetName,
      StackInstanceAccount, StackInstanceRegion, CallAs)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudformation_describe_stack_instance_:_StackSetName">StackSetName</code></td>
<td><p>[required] The name or the unique stack ID of the stack set that
you want to get stack instance information for.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudformation_describe_stack_instance_:_StackInstanceAccount">StackInstanceAccount</code></td>
<td><p>[required] The ID of an Amazon Web Services account that's
associated with this stack instance.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudformation_describe_stack_instance_:_StackInstanceRegion">StackInstanceRegion</code></td>
<td><p>[required] The name of a Region that's associated with this stack
instance.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudformation_describe_stack_instance_:_CallAs">CallAs</code></td>
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
      StackInstance = list(
        StackSetId = "string",
        Region = "string",
        Account = "string",
        StackId = "string",
        ParameterOverrides = list(
          list(
            ParameterKey = "string",
            ParameterValue = "string",
            UsePreviousValue = TRUE|FALSE,
            ResolvedValue = "string"
          )
        ),
        Status = "CURRENT"|"OUTDATED"|"INOPERABLE",
        StackInstanceStatus = list(
          DetailedStatus = "PENDING"|"RUNNING"|"SUCCEEDED"|"FAILED"|"CANCELLED"|"INOPERABLE"
        ),
        StatusReason = "string",
        OrganizationalUnitId = "string",
        DriftStatus = "DRIFTED"|"IN_SYNC"|"UNKNOWN"|"NOT_CHECKED",
        LastDriftCheckTimestamp = as.POSIXct(
          "2015-01-01"
        ),
        LastOperationId = "string"
      )
    )

### Request syntax

    svc$describe_stack_instance(
      StackSetName = "string",
      StackInstanceAccount = "string",
      StackInstanceRegion = "string",
      CallAs = "SELF"|"DELEGATED_ADMIN"
    )
