<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>dynamodb_list_tables</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns an array of table names associated with the current account and endpoint

### Description

Returns an array of table names associated with the current account and
endpoint. The output from `list_tables` is paginated, with each page
returning a maximum of 100 table names.

### Usage

    dynamodb_list_tables(ExclusiveStartTableName, Limit)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="dynamodb_list_tables_:_ExclusiveStartTableName">ExclusiveStartTableName</code></td>
<td><p>The first table name that this operation will evaluate. Use the
value that was returned for <code>LastEvaluatedTableName</code> in a
previous operation, so that you can obtain the next page of
results.</p></td>
</tr>
<tr class="even">
<td><code id="dynamodb_list_tables_:_Limit">Limit</code></td>
<td><p>A maximum number of table names to return. If this parameter is
not specified, the limit is 100.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      TableNames = list(
        "string"
      ),
      LastEvaluatedTableName = "string"
    )

### Request syntax

    svc$list_tables(
      ExclusiveStartTableName = "string",
      Limit = 123
    )

### Examples

    ## Not run: 
    # This example lists all of the tables associated with the current AWS
    # account and endpoint.
    svc$list_tables()

    ## End(Not run)
