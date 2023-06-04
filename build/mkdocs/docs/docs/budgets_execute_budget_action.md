<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>budgets_execute_budget_action</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Executes a budget action

### Description

Executes a budget action.

### Usage

    budgets_execute_budget_action(AccountId, BudgetName, ActionId,
      ExecutionType)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="budgets_execute_budget_action_:_AccountId">AccountId</code></td>
<td><p>[required]</p></td>
</tr>
<tr class="even">
<td><code
id="budgets_execute_budget_action_:_BudgetName">BudgetName</code></td>
<td><p>[required]</p></td>
</tr>
<tr class="odd">
<td><code
id="budgets_execute_budget_action_:_ActionId">ActionId</code></td>
<td><p>[required] A system-generated universally unique identifier
(UUID) for the action.</p></td>
</tr>
<tr class="even">
<td><code
id="budgets_execute_budget_action_:_ExecutionType">ExecutionType</code></td>
<td><p>[required] The type of execution.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      AccountId = "string",
      BudgetName = "string",
      ActionId = "string",
      ExecutionType = "APPROVE_BUDGET_ACTION"|"RETRY_BUDGET_ACTION"|"REVERSE_BUDGET_ACTION"|"RESET_BUDGET_ACTION"
    )

### Request syntax

    svc$execute_budget_action(
      AccountId = "string",
      BudgetName = "string",
      ActionId = "string",
      ExecutionType = "APPROVE_BUDGET_ACTION"|"RETRY_BUDGET_ACTION"|"REVERSE_BUDGET_ACTION"|"RESET_BUDGET_ACTION"
    )
