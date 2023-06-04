<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>servicecatalog_associate_budget_with_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Associates the specified budget with the specified resource

### Description

Associates the specified budget with the specified resource.

### Usage

    servicecatalog_associate_budget_with_resource(BudgetName, ResourceId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="servicecatalog_associate_budget_with_resource_:_BudgetName">BudgetName</code></td>
<td><p>[required] The name of the budget you want to associate.</p></td>
</tr>
<tr class="even">
<td><code
id="servicecatalog_associate_budget_with_resource_:_ResourceId">ResourceId</code></td>
<td><p>[required] The resource identifier. Either a portfolio-id or a
product-id.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$associate_budget_with_resource(
      BudgetName = "string",
      ResourceId = "string"
    )
