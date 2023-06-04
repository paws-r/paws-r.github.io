<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>athena_update_named_query</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates a NamedQuery object

### Description

Updates a NamedQuery object. The database or workgroup cannot be
updated.

### Usage

    athena_update_named_query(NamedQueryId, Name, Description, QueryString)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="athena_update_named_query_:_NamedQueryId">NamedQueryId</code></td>
<td><p>[required] The unique identifier (UUID) of the query.</p></td>
</tr>
<tr class="even">
<td><code id="athena_update_named_query_:_Name">Name</code></td>
<td><p>[required] The name of the query.</p></td>
</tr>
<tr class="odd">
<td><code
id="athena_update_named_query_:_Description">Description</code></td>
<td><p>The query description.</p></td>
</tr>
<tr class="even">
<td><code
id="athena_update_named_query_:_QueryString">QueryString</code></td>
<td><p>[required] The contents of the query with all query
statements.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_named_query(
      NamedQueryId = "string",
      Name = "string",
      Description = "string",
      QueryString = "string"
    )
