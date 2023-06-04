<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>budgets_update_budget</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates a budget

### Description

Updates a budget. You can change every part of a budget except for the
`budgetName` and the `calculatedSpend`. When you modify a budget, the
`calculatedSpend` drops to zero until Amazon Web Services has new usage
data to use for forecasting.

Only one of `BudgetLimit` or `PlannedBudgetLimits` can be present in the
syntax at one time. Use the syntax that matches your case. The Request
Syntax section shows the `BudgetLimit` syntax. For
`PlannedBudgetLimits`, see the
[Examples](https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_budgets_UpdateBudget.html#API_UpdateBudget_Examples)
section.

### Usage

    budgets_update_budget(AccountId, NewBudget)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="budgets_update_budget_:_AccountId">AccountId</code></td>
<td><p>[required] The <code>accountId</code> that is associated with the
budget that you want to update.</p></td>
</tr>
<tr class="even">
<td><code id="budgets_update_budget_:_NewBudget">NewBudget</code></td>
<td><p>[required] The budget that you want to update your budget
to.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_budget(
      AccountId = "string",
      NewBudget = list(
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
      )
    )
