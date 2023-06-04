<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>clouddirectory_list_facet_names</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves the names of facets that exist in a schema

### Description

Retrieves the names of facets that exist in a schema.

### Usage

    clouddirectory_list_facet_names(SchemaArn, NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="clouddirectory_list_facet_names_:_SchemaArn">SchemaArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) to retrieve facet names
from.</p></td>
</tr>
<tr class="even">
<td><code
id="clouddirectory_list_facet_names_:_NextToken">NextToken</code></td>
<td><p>The pagination token.</p></td>
</tr>
<tr class="odd">
<td><code
id="clouddirectory_list_facet_names_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to retrieve.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      FacetNames = list(
        "string"
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_facet_names(
      SchemaArn = "string",
      NextToken = "string",
      MaxResults = 123
    )
