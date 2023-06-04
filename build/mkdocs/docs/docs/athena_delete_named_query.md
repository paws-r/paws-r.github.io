<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>athena_delete_named_query</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the named query if you have access to the workgroup in which the query was saved

### Description

Deletes the named query if you have access to the workgroup in which the
query was saved.

For code samples using the Amazon Web Services SDK for Java, see
[Examples and Code
Samples](https://docs.aws.amazon.com/athena/latest/ug/code-samples.html)
in the *Amazon Athena User Guide*.

### Usage

    athena_delete_named_query(NamedQueryId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="athena_delete_named_query_:_NamedQueryId">NamedQueryId</code></td>
<td><p>[required] The unique ID of the query to delete.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_named_query(
      NamedQueryId = "string"
    )
