<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>simpledb_select</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## The Select operation returns a set of attributes for ItemNames that match the select expression

### Description

The `select` operation returns a set of attributes for `ItemNames` that
match the select expression. `select` is similar to the standard SQL
SELECT statement.

The total size of the response cannot exceed 1 MB in total size. Amazon
SimpleDB automatically adjusts the number of items returned per page to
enforce this limit. For example, if the client asks to retrieve 2500
items, but each individual item is 10 kB in size, the system returns 100
items and an appropriate `NextToken` so the client can access the next
page of results.

For information on how to construct select expressions, see Using Select
to Create Amazon SimpleDB Queries in the Developer Guide.

### Usage

    simpledb_select(SelectExpression, NextToken, ConsistentRead)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="simpledb_select_:_SelectExpression">SelectExpression</code></td>
<td><p>[required] The expression used to query the domain.</p></td>
</tr>
<tr class="even">
<td><code id="simpledb_select_:_NextToken">NextToken</code></td>
<td><p>A string informing Amazon SimpleDB where to start the next list
of <code>ItemNames</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="simpledb_select_:_ConsistentRead">ConsistentRead</code></td>
<td><p>Determines whether or not strong consistency should be enforced
when data is read from SimpleDB. If <code>true</code>, any data
previously written to SimpleDB will be returned. Otherwise, results will
be consistent eventually, and the client may not see data that was
written immediately before your read.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Items = list(
        list(
          Name = "string",
          AlternateNameEncoding = "string",
          Attributes = list(
            list(
              Name = "string",
              AlternateNameEncoding = "string",
              Value = "string",
              AlternateValueEncoding = "string"
            )
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$select(
      SelectExpression = "string",
      NextToken = "string",
      ConsistentRead = TRUE|FALSE
    )
