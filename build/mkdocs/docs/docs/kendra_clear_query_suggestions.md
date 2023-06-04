<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kendra_clear_query_suggestions</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Clears existing query suggestions from an index

### Description

Clears existing query suggestions from an index.

This deletes existing suggestions only, not the queries in the query
log. After you clear suggestions, Amazon Kendra learns new suggestions
based on new queries added to the query log from the time you cleared
suggestions. If you do not see any new suggestions, then please allow
Amazon Kendra to collect enough queries to learn new suggestions.

`clear_query_suggestions` is currently not supported in the Amazon Web
Services GovCloud (US-West) region.

### Usage

    kendra_clear_query_suggestions(IndexId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="kendra_clear_query_suggestions_:_IndexId">IndexId</code></td>
<td><p>[required] The identifier of the index you want to clear query
suggestions from.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$clear_query_suggestions(
      IndexId = "string"
    )
