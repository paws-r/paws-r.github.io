<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>budgets_describe_notifications_for_budget</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the notifications that are associated with a budget

### Description

Lists the notifications that are associated with a budget.

### Usage

    budgets_describe_notifications_for_budget(AccountId, BudgetName,
      MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="budgets_describe_notifications_for_budget_:_AccountId">AccountId</code></td>
<td><p>[required] The <code>accountId</code> that is associated with the
budget whose notifications you want descriptions of.</p></td>
</tr>
<tr class="even">
<td><code
id="budgets_describe_notifications_for_budget_:_BudgetName">BudgetName</code></td>
<td><p>[required] The name of the budget whose notifications you want
descriptions of.</p></td>
</tr>
<tr class="odd">
<td><code
id="budgets_describe_notifications_for_budget_:_MaxResults">MaxResults</code></td>
<td><p>An optional integer that represents how many entries a paginated
response contains. The maximum is 100.</p></td>
</tr>
<tr class="even">
<td><code
id="budgets_describe_notifications_for_budget_:_NextToken">NextToken</code></td>
<td><p>The pagination token that you include in your request to indicate
the next set of results that you want to retrieve.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Notifications = list(
        list(
          NotificationType = "ACTUAL"|"FORECASTED",
          ComparisonOperator = "GREATER_THAN"|"LESS_THAN"|"EQUAL_TO",
          Threshold = 123.0,
          ThresholdType = "PERCENTAGE"|"ABSOLUTE_VALUE",
          NotificationState = "OK"|"ALARM"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_notifications_for_budget(
      AccountId = "string",
      BudgetName = "string",
      MaxResults = 123,
      NextToken = "string"
    )
