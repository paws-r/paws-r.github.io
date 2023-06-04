<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>costexplorer_delete_cost_category_definition</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a Cost Category

### Description

Deletes a Cost Category. Expenses from this month going forward will no
longer be categorized with this Cost Category.

### Usage

    costexplorer_delete_cost_category_definition(CostCategoryArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="costexplorer_delete_cost_category_definition_:_CostCategoryArn">CostCategoryArn</code></td>
<td><p>[required] The unique identifier for your Cost Category.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      CostCategoryArn = "string",
      EffectiveEnd = "string"
    )

### Request syntax

    svc$delete_cost_category_definition(
      CostCategoryArn = "string"
    )
