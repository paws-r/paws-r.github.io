<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>dynamodbstreams_list_streams</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns an array of stream ARNs associated with the current account and endpoint

### Description

Returns an array of stream ARNs associated with the current account and
endpoint. If the `TableName` parameter is present, then `list_streams`
will return only the streams ARNs for that table.

You can call `list_streams` at a maximum rate of 5 times per second.

### Usage

    dynamodbstreams_list_streams(TableName, Limit, ExclusiveStartStreamArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="dynamodbstreams_list_streams_:_TableName">TableName</code></td>
<td><p>If this parameter is provided, then only the streams associated
with this table name are returned.</p></td>
</tr>
<tr class="even">
<td><code id="dynamodbstreams_list_streams_:_Limit">Limit</code></td>
<td><p>The maximum number of streams to return. The upper limit is
100.</p></td>
</tr>
<tr class="odd">
<td><code
id="dynamodbstreams_list_streams_:_ExclusiveStartStreamArn">ExclusiveStartStreamArn</code></td>
<td><p>The ARN (Amazon Resource Name) of the first item that this
operation will evaluate. Use the value that was returned for
<code>LastEvaluatedStreamArn</code> in the previous operation.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Streams = list(
        list(
          StreamArn = "string",
          TableName = "string",
          StreamLabel = "string"
        )
      ),
      LastEvaluatedStreamArn = "string"
    )

### Request syntax

    svc$list_streams(
      TableName = "string",
      Limit = 123,
      ExclusiveStartStreamArn = "string"
    )

### Examples

    ## Not run: 
    # The following example lists all of the stream ARNs.
    svc$list_streams()

    ## End(Not run)
