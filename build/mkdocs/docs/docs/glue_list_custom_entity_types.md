<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>glue_list_custom_entity_types</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists all the custom patterns that have been created

### Description

Lists all the custom patterns that have been created.

### Usage

    glue_list_custom_entity_types(NextToken, MaxResults, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="glue_list_custom_entity_types_:_NextToken">NextToken</code></td>
<td><p>A paginated token to offset the results.</p></td>
</tr>
<tr class="even">
<td><code
id="glue_list_custom_entity_types_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return.</p></td>
</tr>
<tr class="odd">
<td><code id="glue_list_custom_entity_types_:_Tags">Tags</code></td>
<td><p>A list of key-value pair tags.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      CustomEntityTypes = list(
        list(
          Name = "string",
          RegexString = "string",
          ContextWords = list(
            "string"
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_custom_entity_types(
      NextToken = "string",
      MaxResults = 123,
      Tags = list(
        "string"
      )
    )
