<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>customerprofiles_list_workflows</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Query to list all workflows

### Description

Query to list all workflows.

### Usage

    customerprofiles_list_workflows(DomainName, WorkflowType, Status,
      QueryStartDate, QueryEndDate, NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="customerprofiles_list_workflows_:_DomainName">DomainName</code></td>
<td><p>[required] The unique name of the domain.</p></td>
</tr>
<tr class="even">
<td><code
id="customerprofiles_list_workflows_:_WorkflowType">WorkflowType</code></td>
<td><p>The type of workflow. The only supported value is
APPFLOW_INTEGRATION.</p></td>
</tr>
<tr class="odd">
<td><code
id="customerprofiles_list_workflows_:_Status">Status</code></td>
<td><p>Status of workflow execution.</p></td>
</tr>
<tr class="even">
<td><code
id="customerprofiles_list_workflows_:_QueryStartDate">QueryStartDate</code></td>
<td><p>Retrieve workflows started after timestamp.</p></td>
</tr>
<tr class="odd">
<td><code
id="customerprofiles_list_workflows_:_QueryEndDate">QueryEndDate</code></td>
<td><p>Retrieve workflows ended after timestamp.</p></td>
</tr>
<tr class="even">
<td><code
id="customerprofiles_list_workflows_:_NextToken">NextToken</code></td>
<td><p>The token for the next set of results. Use the value returned in
the previous response in the next request to retrieve the next set of
results.</p></td>
</tr>
<tr class="odd">
<td><code
id="customerprofiles_list_workflows_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return per page.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Items = list(
        list(
          WorkflowType = "APPFLOW_INTEGRATION",
          WorkflowId = "string",
          Status = "NOT_STARTED"|"IN_PROGRESS"|"COMPLETE"|"FAILED"|"SPLIT"|"RETRY"|"CANCELLED",
          StatusDescription = "string",
          CreatedAt = as.POSIXct(
            "2015-01-01"
          ),
          LastUpdatedAt = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_workflows(
      DomainName = "string",
      WorkflowType = "APPFLOW_INTEGRATION",
      Status = "NOT_STARTED"|"IN_PROGRESS"|"COMPLETE"|"FAILED"|"SPLIT"|"RETRY"|"CANCELLED",
      QueryStartDate = as.POSIXct(
        "2015-01-01"
      ),
      QueryEndDate = as.POSIXct(
        "2015-01-01"
      ),
      NextToken = "string",
      MaxResults = 123
    )
