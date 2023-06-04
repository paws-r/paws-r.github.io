<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>macie2_list_sensitivity_inspection_templates</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves a subset of information about the sensitivity inspection template for an account

### Description

Retrieves a subset of information about the sensitivity inspection
template for an account.

### Usage

    macie2_list_sensitivity_inspection_templates(maxResults, nextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="macie2_list_sensitivity_inspection_templates_:_maxResults">maxResults</code></td>
<td><p>The maximum number of items to include in each page of a
paginated response.</p></td>
</tr>
<tr class="even">
<td><code
id="macie2_list_sensitivity_inspection_templates_:_nextToken">nextToken</code></td>
<td><p>The nextToken string that specifies which page of results to
return in a paginated response.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      nextToken = "string",
      sensitivityInspectionTemplates = list(
        list(
          id = "string",
          name = "string"
        )
      )
    )

### Request syntax

    svc$list_sensitivity_inspection_templates(
      maxResults = 123,
      nextToken = "string"
    )
