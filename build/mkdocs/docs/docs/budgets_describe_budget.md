<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>budgets_describe_budget</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes a budget

### Description

Describes a budget.

The Request Syntax section shows the `BudgetLimit` syntax. For
`PlannedBudgetLimits`, see the
[Examples](https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_budgets_DescribeBudget.html#API_DescribeBudget_Examples)
section.

### Usage

    budgets_describe_budget(AccountId, BudgetName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="budgets_describe_budget_:_AccountId">AccountId</code></td>
<td><p>[required] The <code>accountId</code> that is associated with the
budget that you want a description of.</p></td>
</tr>
<tr class="even">
<td><code
id="budgets_describe_budget_:_BudgetName">BudgetName</code></td>
<td><p>[required] The name of the budget that you want a description
of.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
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
      )
    )

### Request syntax

    svc$describe_budget(
      AccountId = "string",
      BudgetName = "string"
    )
