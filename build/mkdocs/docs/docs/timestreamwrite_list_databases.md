<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>timestreamwrite_list_databases</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of your Timestream databases

### Description

Returns a list of your Timestream databases. [Service quotas
apply](https://docs.aws.amazon.com/timestream/latest/developerguide/ts-limits.html).
See [code
sample](https://docs.aws.amazon.com/timestream/latest/developerguide/code-samples.list-db.html)
for details.

### Usage

    timestreamwrite_list_databases(NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="timestreamwrite_list_databases_:_NextToken">NextToken</code></td>
<td><p>The pagination token. To resume pagination, provide the NextToken
value as argument of a subsequent API invocation.</p></td>
</tr>
<tr class="even">
<td><code
id="timestreamwrite_list_databases_:_MaxResults">MaxResults</code></td>
<td><p>The total number of items to return in the output. If the total
number of items available is more than the value specified, a NextToken
is provided in the output. To resume pagination, provide the NextToken
value as argument of a subsequent API invocation.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Databases = list(
        list(
          Arn = "string",
          DatabaseName = "string",
          TableCount = 123,
          KmsKeyId = "string",
          CreationTime = as.POSIXct(
            "2015-01-01"
          ),
          LastUpdatedTime = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_databases(
      NextToken = "string",
      MaxResults = 123
    )
