<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>apprunner_list_services</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of running App Runner services in your Amazon Web Services account

### Description

Returns a list of running App Runner services in your Amazon Web
Services account.

### Usage

    apprunner_list_services(NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="apprunner_list_services_:_NextToken">NextToken</code></td>
<td><p>A token from a previous result page. Used for a paginated
request. The request retrieves the next result page. All other parameter
values must be identical to the ones specified in the initial
request.</p>
<p>If you don't specify <code>NextToken</code>, the request retrieves
the first result page.</p></td>
</tr>
<tr class="even">
<td><code
id="apprunner_list_services_:_MaxResults">MaxResults</code></td>
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
      ServiceSummaryList = list(
        list(
          ServiceName = "string",
          ServiceId = "string",
          ServiceArn = "string",
          ServiceUrl = "string",
          CreatedAt = as.POSIXct(
            "2015-01-01"
          ),
          UpdatedAt = as.POSIXct(
            "2015-01-01"
          ),
          Status = "CREATE_FAILED"|"RUNNING"|"DELETED"|"DELETE_FAILED"|"PAUSED"|"OPERATION_IN_PROGRESS"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_services(
      NextToken = "string",
      MaxResults = 123
    )
