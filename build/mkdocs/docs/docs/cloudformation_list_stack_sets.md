<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudformation_list_stack_sets</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns summary information about stack sets that are associated with the user

### Description

Returns summary information about stack sets that are associated with
the user.

-   \[Self-managed permissions\] If you set the `CallAs` parameter to
    `SELF` while signed in to your Amazon Web Services account,
    `list_stack_sets` returns all self-managed stack sets in your Amazon
    Web Services account.

-   \[Service-managed permissions\] If you set the `CallAs` parameter to
    `SELF` while signed in to the organization's management account,
    `list_stack_sets` returns all stack sets in the management account.

-   \[Service-managed permissions\] If you set the `CallAs` parameter to
    `DELEGATED_ADMIN` while signed in to your member account,
    `list_stack_sets` returns all stack sets with service-managed
    permissions in the management account.

### Usage

    cloudformation_list_stack_sets(NextToken, MaxResults, Status, CallAs)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudformation_list_stack_sets_:_NextToken">NextToken</code></td>
<td><p>If the previous paginated request didn't return all the remaining
results, the response object's <code>NextToken</code> parameter value is
set to a token. To retrieve the next set of results, call
<code>list_stack_sets</code> again and assign that token to the request
object's <code>NextToken</code> parameter. If there are no remaining
results, the previous response object's <code>NextToken</code> parameter
is set to <code>null</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudformation_list_stack_sets_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to be returned with a single call.
If the number of available results exceeds this maximum, the response
includes a <code>NextToken</code> value that you can assign to the
<code>NextToken</code> request parameter to get the next set of
results.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudformation_list_stack_sets_:_Status">Status</code></td>
<td><p>The status of the stack sets that you want to get summary
information about.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudformation_list_stack_sets_:_CallAs">CallAs</code></td>
<td><p>[Service-managed permissions] Specifies whether you are acting as
an account administrator in the management account or as a delegated
administrator in a member account.</p>
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
          StackSetName = "string",
          StackSetId = "string",
          Description = "string",
          Status = "ACTIVE"|"DELETED",
          AutoDeployment = list(
            Enabled = TRUE|FALSE,
            RetainStacksOnAccountRemoval = TRUE|FALSE
          ),
          PermissionModel = "SERVICE_MANAGED"|"SELF_MANAGED",
          DriftStatus = "DRIFTED"|"IN_SYNC"|"UNKNOWN"|"NOT_CHECKED",
          LastDriftCheckTimestamp = as.POSIXct(
            "2015-01-01"
          ),
          ManagedExecution = list(
            Active = TRUE|FALSE
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_stack_sets(
      NextToken = "string",
      MaxResults = 123,
      Status = "ACTIVE"|"DELETED",
      CallAs = "SELF"|"DELEGATED_ADMIN"
    )
