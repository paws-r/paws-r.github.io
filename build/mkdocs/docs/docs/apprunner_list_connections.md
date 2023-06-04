<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>apprunner_list_connections</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of App Runner connections that are associated with your Amazon Web Services account

### Description

Returns a list of App Runner connections that are associated with your
Amazon Web Services account.

### Usage

    apprunner_list_connections(ConnectionName, MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="apprunner_list_connections_:_ConnectionName">ConnectionName</code></td>
<td><p>If specified, only this connection is returned. If not specified,
the result isn't filtered by name.</p></td>
</tr>
<tr class="even">
<td><code
id="apprunner_list_connections_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to include in each response (result
page). Used for a paginated request.</p>
<p>If you don't specify <code>MaxResults</code>, the request retrieves
all available results in a single response.</p></td>
</tr>
<tr class="odd">
<td><code
id="apprunner_list_connections_:_NextToken">NextToken</code></td>
<td><p>A token from a previous result page. Used for a paginated
request. The request retrieves the next result page. All other parameter
values must be identical to the ones specified in the initial
request.</p>
<p>If you don't specify <code>NextToken</code>, the request retrieves
the first result page.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ConnectionSummaryList = list(
        list(
          ConnectionName = "string",
          ConnectionArn = "string",
          ProviderType = "GITHUB",
          Status = "PENDING_HANDSHAKE"|"AVAILABLE"|"ERROR"|"DELETED",
          CreatedAt = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_connections(
      ConnectionName = "string",
      MaxResults = 123,
      NextToken = "string"
    )
