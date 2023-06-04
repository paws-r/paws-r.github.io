<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>apprunner_list_operations</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Return a list of operations that occurred on an App Runner service

### Description

Return a list of operations that occurred on an App Runner service.

The resulting list of OperationSummary objects is sorted in reverse
chronological order. The first object on the list represents the last
started operation.

### Usage

    apprunner_list_operations(ServiceArn, NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="apprunner_list_operations_:_ServiceArn">ServiceArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the App Runner
service that you want a list of operations for.</p></td>
</tr>
<tr class="even">
<td><code
id="apprunner_list_operations_:_NextToken">NextToken</code></td>
<td><p>A token from a previous result page. It's used for a paginated
request. The request retrieves the next result page. All other parameter
values must be identical to the ones specified in the initial
request.</p>
<p>If you don't specify <code>NextToken</code>, the request retrieves
the first result page.</p></td>
</tr>
<tr class="odd">
<td><code
id="apprunner_list_operations_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to include in each response (result
page). It's used for a paginated request.</p>
<p>If you don't specify <code>MaxResults</code>, the request retrieves
all available results in a single response.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      OperationSummaryList = list(
        list(
          Id = "string",
          Type = "START_DEPLOYMENT"|"CREATE_SERVICE"|"PAUSE_SERVICE"|"RESUME_SERVICE"|"DELETE_SERVICE"|"UPDATE_SERVICE",
          Status = "PENDING"|"IN_PROGRESS"|"FAILED"|"SUCCEEDED"|"ROLLBACK_IN_PROGRESS"|"ROLLBACK_FAILED"|"ROLLBACK_SUCCEEDED",
          TargetArn = "string",
          StartedAt = as.POSIXct(
            "2015-01-01"
          ),
          EndedAt = as.POSIXct(
            "2015-01-01"
          ),
          UpdatedAt = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_operations(
      ServiceArn = "string",
      NextToken = "string",
      MaxResults = 123
    )
