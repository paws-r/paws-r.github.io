<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>budgets_delete_budget</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a budget

### Description

Deletes a budget. You can delete your budget at any time.

Deleting a budget also deletes the notifications and subscribers that
are associated with that budget.

### Usage

    budgets_delete_budget(AccountId, BudgetName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="budgets_delete_budget_:_AccountId">AccountId</code></td>
<td><p>[required] The <code>accountId</code> that is associated with the
budget that you want to delete.</p></td>
</tr>
<tr class="even">
<td><code id="budgets_delete_budget_:_BudgetName">BudgetName</code></td>
<td><p>[required] The name of the budget that you want to
delete.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_budget(
      AccountId = "string",
      BudgetName = "string"
    )
