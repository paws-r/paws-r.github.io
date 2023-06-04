<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudformation_list_stack_set_operations</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns summary information about operations performed on a stack set

### Description

Returns summary information about operations performed on a stack set.

### Usage

    cloudformation_list_stack_set_operations(StackSetName, NextToken,
      MaxResults, CallAs)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudformation_list_stack_set_operations_:_StackSetName">StackSetName</code></td>
<td><p>[required] The name or unique ID of the stack set that you want
to get operation summaries for.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudformation_list_stack_set_operations_:_NextToken">NextToken</code></td>
<td><p>If the previous paginated request didn't return all of the
remaining results, the response object's <code>NextToken</code>
parameter value is set to a token. To retrieve the next set of results,
call <code>list_stack_set_operations</code> again and assign that token
to the request object's <code>NextToken</code> parameter. If there are
no remaining results, the previous response object's
<code>NextToken</code> parameter is set to <code>null</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudformation_list_stack_set_operations_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to be returned with a single call.
If the number of available results exceeds this maximum, the response
includes a <code>NextToken</code> value that you can assign to the
<code>NextToken</code> request parameter to get the next set of
results.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudformation_list_stack_set_operations_:_CallAs">CallAs</code></td>
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
      Summaries = list(
        list(
          OperationId = "string",
          Action = "CREATE"|"UPDATE"|"DELETE"|"DETECT_DRIFT",
          Status = "RUNNING"|"SUCCEEDED"|"FAILED"|"STOPPING"|"STOPPED"|"QUEUED",
          CreationTimestamp = as.POSIXct(
            "2015-01-01"
          ),
          EndTimestamp = as.POSIXct(
            "2015-01-01"
          ),
          StatusReason = "string",
          StatusDetails = list(
            FailedStackInstancesCount = 123
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
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_stack_set_operations(
      StackSetName = "string",
      NextToken = "string",
      MaxResults = 123,
      CallAs = "SELF"|"DELEGATED_ADMIN"
    )
