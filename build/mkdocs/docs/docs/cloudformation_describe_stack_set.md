<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudformation_describe_stack_set</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the description of the specified stack set

### Description

Returns the description of the specified stack set.

### Usage

    cloudformation_describe_stack_set(StackSetName, CallAs)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudformation_describe_stack_set_:_StackSetName">StackSetName</code></td>
<td><p>[required] The name or unique ID of the stack set whose
description you want.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudformation_describe_stack_set_:_CallAs">CallAs</code></td>
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
      StackSet = list(
        StackSetName = "string",
        StackSetId = "string",
        Description = "string",
        Status = "ACTIVE"|"DELETED",
        TemplateBody = "string",
        Parameters = list(
          list(
            ParameterKey = "string",
            ParameterValue = "string",
            UsePreviousValue = TRUE|FALSE,
            ResolvedValue = "string"
          )
        ),
        Capabilities = list(
          "CAPABILITY_IAM"|"CAPABILITY_NAMED_IAM"|"CAPABILITY_AUTO_EXPAND"
        ),
        Tags = list(
          list(
            Key = "string",
            Value = "string"
          )
        ),
        StackSetARN = "string",
        AdministrationRoleARN = "string",
        ExecutionRoleName = "string",
        StackSetDriftDetectionDetails = list(
          DriftStatus = "DRIFTED"|"IN_SYNC"|"NOT_CHECKED",
          DriftDetectionStatus = "COMPLETED"|"FAILED"|"PARTIAL_SUCCESS"|"IN_PROGRESS"|"STOPPED",
          LastDriftCheckTimestamp = as.POSIXct(
            "2015-01-01"
          ),
          TotalStackInstancesCount = 123,
          DriftedStackInstancesCount = 123,
          InSyncStackInstancesCount = 123,
          InProgressStackInstancesCount = 123,
          FailedStackInstancesCount = 123
        ),
        AutoDeployment = list(
          Enabled = TRUE|FALSE,
          RetainStacksOnAccountRemoval = TRUE|FALSE
        ),
        PermissionModel = "SERVICE_MANAGED"|"SELF_MANAGED",
        OrganizationalUnitIds = list(
          "string"
        ),
        ManagedExecution = list(
          Active = TRUE|FALSE
        ),
        Regions = list(
          "string"
        )
      )
    )

### Request syntax

    svc$describe_stack_set(
      StackSetName = "string",
      CallAs = "SELF"|"DELEGATED_ADMIN"
    )
