<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>athena_batch_get_named_query</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the details of a single named query or a list of up to 50 queries, which you provide as an array of query ID strings

### Description

Returns the details of a single named query or a list of up to 50
queries, which you provide as an array of query ID strings. Requires you
to have access to the workgroup in which the queries were saved. Use
ListNamedQueriesInput to get the list of named query IDs in the
specified workgroup. If information could not be retrieved for a
submitted query ID, information about the query ID submitted is listed
under UnprocessedNamedQueryId. Named queries differ from executed
queries. Use BatchGetQueryExecutionInput to get details about each
unique query execution, and ListQueryExecutionsInput to get a list of
query execution IDs.

### Usage

    athena_batch_get_named_query(NamedQueryIds)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="athena_batch_get_named_query_:_NamedQueryIds">NamedQueryIds</code></td>
<td><p>[required] An array of query IDs.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      NamedQueries = list(
        list(
          Name = "string",
          Description = "string",
          Database = "string",
          QueryString = "string",
          NamedQueryId = "string",
          WorkGroup = "string"
        )
      ),
      UnprocessedNamedQueryIds = list(
        list(
          NamedQueryId = "string",
          ErrorCode = "string",
          ErrorMessage = "string"
        )
      )
    )

### Request syntax

    svc$batch_get_named_query(
      NamedQueryIds = list(
        "string"
      )
    )
