<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudtrail_start_query</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Starts a CloudTrail Lake query

### Description

Starts a CloudTrail Lake query. The required `QueryStatement` parameter
provides your SQL query, enclosed in single quotation marks. Use the
optional `DeliveryS3Uri` parameter to deliver the query results to an S3
bucket.

### Usage

    cloudtrail_start_query(QueryStatement, DeliveryS3Uri)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudtrail_start_query_:_QueryStatement">QueryStatement</code></td>
<td><p>[required] The SQL code of your query.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudtrail_start_query_:_DeliveryS3Uri">DeliveryS3Uri</code></td>
<td><p>The URI for the S3 bucket where CloudTrail delivers the query
results.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      QueryId = "string"
    )

### Request syntax

    svc$start_query(
      QueryStatement = "string",
      DeliveryS3Uri = "string"
    )
