<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>servicecatalog_disassociate_budget_from_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Disassociates the specified budget from the specified resource

### Description

Disassociates the specified budget from the specified resource.

### Usage

    servicecatalog_disassociate_budget_from_resource(BudgetName, ResourceId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="servicecatalog_disassociate_budget_from_resource_:_BudgetName">BudgetName</code></td>
<td><p>[required] The name of the budget you want to
disassociate.</p></td>
</tr>
<tr class="even">
<td><code
id="servicecatalog_disassociate_budget_from_resource_:_ResourceId">ResourceId</code></td>
<td><p>[required] The resource identifier you want to disassociate from.
Either a portfolio-id or a product-id.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$disassociate_budget_from_resource(
      BudgetName = "string",
      ResourceId = "string"
    )
