<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>clouddirectory_list_typed_link_facet_names</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a paginated list of TypedLink facet names for a particular schema

### Description

Returns a paginated list of `TypedLink` facet names for a particular
schema. For more information, see [Typed
Links](https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_links.html#directory_objects_links_typedlink).

### Usage

    clouddirectory_list_typed_link_facet_names(SchemaArn, NextToken,
      MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="clouddirectory_list_typed_link_facet_names_:_SchemaArn">SchemaArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) that is associated with
the schema. For more information, see arns.</p></td>
</tr>
<tr class="even">
<td><code
id="clouddirectory_list_typed_link_facet_names_:_NextToken">NextToken</code></td>
<td><p>The pagination token.</p></td>
</tr>
<tr class="odd">
<td><code
id="clouddirectory_list_typed_link_facet_names_:_MaxResults">MaxResults</code></td>
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

    svc$list_typed_link_facet_names(
      SchemaArn = "string",
      NextToken = "string",
      MaxResults = 123
    )
