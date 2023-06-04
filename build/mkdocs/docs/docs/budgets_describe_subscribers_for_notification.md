<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>budgets_describe_subscribers_for_notification</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the subscribers that are associated with a notification

### Description

Lists the subscribers that are associated with a notification.

### Usage

    budgets_describe_subscribers_for_notification(AccountId, BudgetName,
      Notification, MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="budgets_describe_subscribers_for_notification_:_AccountId">AccountId</code></td>
<td><p>[required] The <code>accountId</code> that is associated with the
budget whose subscribers you want descriptions of.</p></td>
</tr>
<tr class="even">
<td><code
id="budgets_describe_subscribers_for_notification_:_BudgetName">BudgetName</code></td>
<td><p>[required] The name of the budget whose subscribers you want
descriptions of.</p></td>
</tr>
<tr class="odd">
<td><code
id="budgets_describe_subscribers_for_notification_:_Notification">Notification</code></td>
<td><p>[required] The notification whose subscribers you want to
list.</p></td>
</tr>
<tr class="even">
<td><code
id="budgets_describe_subscribers_for_notification_:_MaxResults">MaxResults</code></td>
<td><p>An optional integer that represents how many entries a paginated
response contains. The maximum is 100.</p></td>
</tr>
<tr class="odd">
<td><code
id="budgets_describe_subscribers_for_notification_:_NextToken">NextToken</code></td>
<td><p>The pagination token that you include in your request to indicate
the next set of results that you want to retrieve.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Subscribers = list(
        list(
          SubscriptionType = "SNS"|"EMAIL",
          Address = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_subscribers_for_notification(
      AccountId = "string",
      BudgetName = "string",
      Notification = list(
        NotificationType = "ACTUAL"|"FORECASTED",
        ComparisonOperator = "GREATER_THAN"|"LESS_THAN"|"EQUAL_TO",
        Threshold = 123.0,
        ThresholdType = "PERCENTAGE"|"ABSOLUTE_VALUE",
        NotificationState = "OK"|"ALARM"
      ),
      MaxResults = 123,
      NextToken = "string"
    )
