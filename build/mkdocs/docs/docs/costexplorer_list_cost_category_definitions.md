<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>costexplorer_list_cost_category_definitions</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the name, Amazon Resource Name (ARN), NumberOfRules and effective dates of all Cost Categories defined in the account

### Description

Returns the name, Amazon Resource Name (ARN), `NumberOfRules` and
effective dates of all Cost Categories defined in the account. You have
the option to use `EffectiveOn` to return a list of Cost Categories that
were active on a specific date. If there is no `EffectiveOn` specified,
you’ll see Cost Categories that are effective on the current date. If
Cost Category is still effective, `EffectiveEnd` is omitted in the
response. `list_cost_category_definitions` supports pagination. The
request can have a `MaxResults` range up to 100.

### Usage

    costexplorer_list_cost_category_definitions(EffectiveOn, NextToken,
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
id="costexplorer_list_cost_category_definitions_:_EffectiveOn">EffectiveOn</code></td>
<td><p>The date when the Cost Category was effective.</p></td>
</tr>
<tr class="even">
<td><code
id="costexplorer_list_cost_category_definitions_:_NextToken">NextToken</code></td>
<td><p>The token to retrieve the next set of results. Amazon Web
Services provides the token when the response from a previous call has
more results than the maximum page size.</p></td>
</tr>
<tr class="odd">
<td><code
id="costexplorer_list_cost_category_definitions_:_MaxResults">MaxResults</code></td>
<td><p>The number of entries a paginated response contains.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      CostCategoryReferences = list(
        list(
          CostCategoryArn = "string",
          Name = "string",
          EffectiveStart = "string",
          EffectiveEnd = "string",
          NumberOfRules = 123,
          ProcessingStatus = list(
            list(
              Component = "COST_EXPLORER",
              Status = "PROCESSING"|"APPLIED"
            )
          ),
          Values = list(
            "string"
          ),
          DefaultValue = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_cost_category_definitions(
      EffectiveOn = "string",
      NextToken = "string",
      MaxResults = 123
    )
