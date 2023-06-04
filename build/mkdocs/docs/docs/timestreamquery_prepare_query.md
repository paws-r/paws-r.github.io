<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>timestreamquery_prepare_query</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## A synchronous operation that allows you to submit a query with parameters to be stored by Timestream for later running

### Description

A synchronous operation that allows you to submit a query with
parameters to be stored by Timestream for later running. Timestream only
supports using this operation with the
`PrepareQueryRequest$ValidateOnly` set to `true`.

### Usage

    timestreamquery_prepare_query(QueryString, ValidateOnly)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="timestreamquery_prepare_query_:_QueryString">QueryString</code></td>
<td><p>[required] The Timestream query string that you want to use as a
prepared statement. Parameter names can be specified in the query string
<code>@</code> character followed by an identifier.</p></td>
</tr>
<tr class="even">
<td><code
id="timestreamquery_prepare_query_:_ValidateOnly">ValidateOnly</code></td>
<td><p>By setting this value to <code>true</code>, Timestream will only
validate that the query string is a valid Timestream query, and not
store the prepared query for later use.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      QueryString = "string",
      Columns = list(
        list(
          Name = "string",
          Type = list(
            ScalarType = "VARCHAR"|"BOOLEAN"|"BIGINT"|"DOUBLE"|"TIMESTAMP"|"DATE"|"TIME"|"INTERVAL_DAY_TO_SECOND"|"INTERVAL_YEAR_TO_MONTH"|"UNKNOWN"|"INTEGER",
            ArrayColumnInfo = list(
              Name = "string",
              Type = list()
            ),
            TimeSeriesMeasureValueColumnInfo = list(
              Name = "string",
              Type = list()
            ),
            RowColumnInfo = list(
              list(
                Name = "string",
                Type = list()
              )
            )
          ),
          DatabaseName = "string",
          TableName = "string",
          Aliased = TRUE|FALSE
        )
      ),
      Parameters = list(
        list(
          Name = "string",
          Type = list(
            ScalarType = "VARCHAR"|"BOOLEAN"|"BIGINT"|"DOUBLE"|"TIMESTAMP"|"DATE"|"TIME"|"INTERVAL_DAY_TO_SECOND"|"INTERVAL_YEAR_TO_MONTH"|"UNKNOWN"|"INTEGER",
            ArrayColumnInfo = list(
              Name = "string",
              Type = list()
            ),
            TimeSeriesMeasureValueColumnInfo = list(
              Name = "string",
              Type = list()
            ),
            RowColumnInfo = list(
              list(
                Name = "string",
                Type = list()
              )
            )
          )
        )
      )
    )

### Request syntax

    svc$prepare_query(
      QueryString = "string",
      ValidateOnly = TRUE|FALSE
    )
