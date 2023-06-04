<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>configservice_put_stored_query</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Saves a new query or updates an existing saved query

### Description

Saves a new query or updates an existing saved query. The `QueryName`
must be unique for a single Amazon Web Services account and a single
Amazon Web Services Region. You can create upto 300 queries in a single
Amazon Web Services account and a single Amazon Web Services Region.

`put_stored_query` is an idempotent API. Subsequent requests won’t
create a duplicate resource if one was already created. If a following
request has different `tags` values, Config will ignore these
differences and treat it as an idempotent request of the previous. In
this case, `tags` will not be updated, even if they are different.

### Usage

    configservice_put_stored_query(StoredQuery, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="configservice_put_stored_query_:_StoredQuery">StoredQuery</code></td>
<td><p>[required] A list of <code>StoredQuery</code> objects. The
mandatory fields are <code>QueryName</code> and
<code>Expression</code>.</p>
<p>When you are creating a query, you must provide a query name and an
expression. When you are updating a query, you must provide a query name
but updating the description is optional.</p></td>
</tr>
<tr class="even">
<td><code id="configservice_put_stored_query_:_Tags">Tags</code></td>
<td><p>A list of <code>Tags</code> object.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      QueryArn = "string"
    )

### Request syntax

    svc$put_stored_query(
      StoredQuery = list(
        QueryId = "string",
        QueryArn = "string",
        QueryName = "string",
        Description = "string",
        Expression = "string"
      ),
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
