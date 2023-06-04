<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>clouddirectory_list_development_schema_arns</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves each Amazon Resource Name (ARN) of schemas in the development state

### Description

Retrieves each Amazon Resource Name (ARN) of schemas in the development
state.

### Usage

    clouddirectory_list_development_schema_arns(NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="clouddirectory_list_development_schema_arns_:_NextToken">NextToken</code></td>
<td><p>The pagination token.</p></td>
</tr>
<tr class="even">
<td><code
id="clouddirectory_list_development_schema_arns_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to retrieve.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      SchemaArns = list(
        "string"
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_development_schema_arns(
      NextToken = "string",
      MaxResults = 123
    )
