<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>budgets_create_budget</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a budget and, if included, notifications and subscribers

### Description

Creates a budget and, if included, notifications and subscribers.

Only one of `BudgetLimit` or `PlannedBudgetLimits` can be present in the
syntax at one time. Use the syntax that matches your case. The Request
Syntax section shows the `BudgetLimit` syntax. For
`PlannedBudgetLimits`, see the
[Examples](https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_budgets_CreateBudget.html#API_CreateBudget_Examples)
section.

### Usage

    budgets_create_budget(AccountId, Budget, NotificationsWithSubscribers)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="budgets_create_budget_:_AccountId">AccountId</code></td>
<td><p>[required] The <code>accountId</code> that is associated with the
budget.</p></td>
</tr>
<tr class="even">
<td><code id="budgets_create_budget_:_Budget">Budget</code></td>
<td><p>[required] The budget object that you want to create.</p></td>
</tr>
<tr class="odd">
<td><code
id="budgets_create_budget_:_NotificationsWithSubscribers">NotificationsWithSubscribers</code></td>
<td><p>A notification that you want to associate with a budget. A budget
can have up to five notifications, and each notification can have one
SNS subscriber and up to 10 email subscribers. If you include
notifications and subscribers in your <code>create_budget</code> call,
Amazon Web Services creates the notifications and subscribers for
you.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$create_budget(
      AccountId = "string",
      Budget = list(
        BudgetName = "string",
        BudgetLimit = list(
          Amount = "string",
          Unit = "string"
        ),
        PlannedBudgetLimits = list(
          list(
            Amount = "string",
            Unit = "string"
          )
        ),
        CostFilters = list(
          list(
            "string"
          )
        ),
        CostTypes = list(
          IncludeTax = TRUE|FALSE,
          IncludeSubscription = TRUE|FALSE,
          UseBlended = TRUE|FALSE,
          IncludeRefund = TRUE|FALSE,
          IncludeCredit = TRUE|FALSE,
          IncludeUpfront = TRUE|FALSE,
          IncludeRecurring = TRUE|FALSE,
          IncludeOtherSubscription = TRUE|FALSE,
          IncludeSupport = TRUE|FALSE,
          IncludeDiscount = TRUE|FALSE,
          UseAmortized = TRUE|FALSE
        ),
        TimeUnit = "DAILY"|"MONTHLY"|"QUARTERLY"|"ANNUALLY",
        TimePeriod = list(
          Start = as.POSIXct(
            "2015-01-01"
          ),
          End = as.POSIXct(
            "2015-01-01"
          )
        ),
        CalculatedSpend = list(
          ActualSpend = list(
            Amount = "string",
            Unit = "string"
          ),
          ForecastedSpend = list(
            Amount = "string",
            Unit = "string"
          )
        ),
        BudgetType = "USAGE"|"COST"|"RI_UTILIZATION"|"RI_COVERAGE"|"SAVINGS_PLANS_UTILIZATION"|"SAVINGS_PLANS_COVERAGE",
        LastUpdatedTime = as.POSIXct(
          "2015-01-01"
        ),
        AutoAdjustData = list(
          AutoAdjustType = "HISTORICAL"|"FORECAST",
          HistoricalOptions = list(
            BudgetAdjustmentPeriod = 123,
            LookBackAvailablePeriods = 123
          ),
          LastAutoAdjustTime = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      NotificationsWithSubscribers = list(
        list(
          Notification = list(
            NotificationType = "ACTUAL"|"FORECASTED",
            ComparisonOperator = "GREATER_THAN"|"LESS_THAN"|"EQUAL_TO",
            Threshold = 123.0,
            ThresholdType = "PERCENTAGE"|"ABSOLUTE_VALUE",
            NotificationState = "OK"|"ALARM"
          ),
          Subscribers = list(
            list(
              SubscriptionType = "SNS"|"EMAIL",
              Address = "string"
            )
          )
        )
      )
    )
