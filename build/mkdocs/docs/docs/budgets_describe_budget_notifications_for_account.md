<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>budgets_describe_budget_notifications_for_account</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the budget names and notifications that are associated with an account

### Description

Lists the budget names and notifications that are associated with an
account.

### Usage

    budgets_describe_budget_notifications_for_account(AccountId, MaxResults,
      NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="budgets_describe_budget_notifications_for_account_:_AccountId">AccountId</code></td>
<td><p>[required]</p></td>
</tr>
<tr class="even">
<td><code
id="budgets_describe_budget_notifications_for_account_:_MaxResults">MaxResults</code></td>
<td><p>An integer that shows how many budget name entries a paginated
response contains.</p></td>
</tr>
<tr class="odd">
<td><code
id="budgets_describe_budget_notifications_for_account_:_NextToken">NextToken</code></td>
<td></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      BudgetNotificationsForAccount = list(
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
          BudgetName = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_budget_notifications_for_account(
      AccountId = "string",
      MaxResults = 123,
      NextToken = "string"
    )
