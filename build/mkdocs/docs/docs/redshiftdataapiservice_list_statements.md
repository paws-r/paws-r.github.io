<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>redshiftdataapiservice_list_statements</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## List of SQL statements

### Description

List of SQL statements. By default, only finished statements are shown.
A token is returned to page through the statement list.

For more information about the Amazon Redshift Data API and CLI usage
examples, see [Using the Amazon Redshift Data
API](https://docs.aws.amazon.com/redshift/latest/mgmt/data-api.html) in
the *Amazon Redshift Management Guide*.

### Usage

    redshiftdataapiservice_list_statements(MaxResults, NextToken, RoleLevel,
      StatementName, Status)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="redshiftdataapiservice_list_statements_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of SQL statements to return in the response.
If more SQL statements exist than fit in one response, then
<code>NextToken</code> is returned to page through the results.</p></td>
</tr>
<tr class="even">
<td><code
id="redshiftdataapiservice_list_statements_:_NextToken">NextToken</code></td>
<td><p>A value that indicates the starting point for the next set of
response records in a subsequent request. If a value is returned in a
response, you can retrieve the next set of records by providing this
returned NextToken value in the next NextToken parameter and retrying
the command. If the NextToken field is empty, all response records have
been retrieved for the request.</p></td>
</tr>
<tr class="odd">
<td><code
id="redshiftdataapiservice_list_statements_:_RoleLevel">RoleLevel</code></td>
<td><p>A value that filters which statements to return in the response.
If true, all statements run by the caller's IAM role are returned. If
false, only statements run by the caller's IAM role in the current IAM
session are returned. The default is true.</p></td>
</tr>
<tr class="even">
<td><code
id="redshiftdataapiservice_list_statements_:_StatementName">StatementName</code></td>
<td><p>The name of the SQL statement specified as input to
<code>batch_execute_statement</code> or <code>execute_statement</code>
to identify the query. You can list multiple statements by providing a
prefix that matches the beginning of the statement name. For example, to
list myStatement1, myStatement2, myStatement3, and so on, then provide
the a value of <code>myStatement</code>. Data API does a case-sensitive
match of SQL statement names to the prefix value you provide.</p></td>
</tr>
<tr class="odd">
<td><code
id="redshiftdataapiservice_list_statements_:_Status">Status</code></td>
<td><p>The status of the SQL statement to list. Status values are
defined as follows:</p>
<ul>
<li><p>ABORTED - The query run was stopped by the user.</p></li>
<li><p>ALL - A status value that includes all query statuses. This value
can be used to filter results.</p></li>
<li><p>FAILED - The query run failed.</p></li>
<li><p>FINISHED - The query has finished running.</p></li>
<li><p>PICKED - The query has been chosen to be run.</p></li>
<li><p>STARTED - The query run has started.</p></li>
<li><p>SUBMITTED - The query was submitted, but not yet
processed.</p></li>
</ul></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      NextToken = "string",
      Statements = list(
        list(
          CreatedAt = as.POSIXct(
            "2015-01-01"
          ),
          Id = "string",
          IsBatchStatement = TRUE|FALSE,
          QueryParameters = list(
            list(
              name = "string",
              value = "string"
            )
          ),
          QueryString = "string",
          QueryStrings = list(
            "string"
          ),
          SecretArn = "string",
          StatementName = "string",
          Status = "SUBMITTED"|"PICKED"|"STARTED"|"FINISHED"|"ABORTED"|"FAILED"|"ALL",
          UpdatedAt = as.POSIXct(
            "2015-01-01"
          )
        )
      )
    )

### Request syntax

    svc$list_statements(
      MaxResults = 123,
      NextToken = "string",
      RoleLevel = TRUE|FALSE,
      StatementName = "string",
      Status = "SUBMITTED"|"PICKED"|"STARTED"|"FINISHED"|"ABORTED"|"FAILED"|"ALL"
    )
