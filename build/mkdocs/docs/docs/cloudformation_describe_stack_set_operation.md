<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudformation_describe_stack_set_operation</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the description of the specified stack set operation

### Description

Returns the description of the specified stack set operation.

### Usage

    cloudformation_describe_stack_set_operation(StackSetName, OperationId,
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
id="cloudformation_describe_stack_set_operation_:_StackSetName">StackSetName</code></td>
<td><p>[required] The name or the unique stack ID of the stack set for
the stack operation.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudformation_describe_stack_set_operation_:_OperationId">OperationId</code></td>
<td><p>[required] The unique ID of the stack set operation.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudformation_describe_stack_set_operation_:_CallAs">CallAs</code></td>
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
      StackSetOperation = list(
        OperationId = "string",
        StackSetId = "string",
        Action = "CREATE"|"UPDATE"|"DELETE"|"DETECT_DRIFT",
        Status = "RUNNING"|"SUCCEEDED"|"FAILED"|"STOPPING"|"STOPPED"|"QUEUED",
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
        AdministrationRoleARN = "string",
        ExecutionRoleName = "string",
        CreationTimestamp = as.POSIXct(
          "2015-01-01"
        ),
        EndTimestamp = as.POSIXct(
          "2015-01-01"
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
        StatusReason = "string",
        StatusDetails = list(
          FailedStackInstancesCount = 123
        )
      )
    )

### Request syntax

    svc$describe_stack_set_operation(
      StackSetName = "string",
      OperationId = "string",
      CallAs = "SELF"|"DELEGATED_ADMIN"
    )
