<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>configservice_list_stored_queries</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the stored queries for a single Amazon Web Services account and a single Amazon Web Services Region

### Description

Lists the stored queries for a single Amazon Web Services account and a
single Amazon Web Services Region. The default is 100.

### Usage

    configservice_list_stored_queries(NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="configservice_list_stored_queries_:_NextToken">NextToken</code></td>
<td><p>The nextToken string returned in a previous request that you use
to request the next page of results in a paginated response.</p></td>
</tr>
<tr class="even">
<td><code
id="configservice_list_stored_queries_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to be returned with a single
call.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      StoredQueryMetadata = list(
        list(
          QueryId = "string",
          QueryArn = "string",
          QueryName = "string",
          Description = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_stored_queries(
      NextToken = "string",
      MaxResults = 123
    )
