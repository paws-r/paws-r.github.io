<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>budgets_describe_budgets</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the budgets that are associated with an account

### Description

Lists the budgets that are associated with an account.

The Request Syntax section shows the `BudgetLimit` syntax. For
`PlannedBudgetLimits`, see the
[Examples](https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_budgets_DescribeBudgets.html#API_DescribeBudgets_Examples)
section.

### Usage

    budgets_describe_budgets(AccountId, MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="budgets_describe_budgets_:_AccountId">AccountId</code></td>
<td><p>[required] The <code>accountId</code> that is associated with the
budgets that you want descriptions of.</p></td>
</tr>
<tr class="even">
<td><code
id="budgets_describe_budgets_:_MaxResults">MaxResults</code></td>
<td><p>An optional integer that represents how many entries a paginated
response contains. The maximum is 100.</p></td>
</tr>
<tr class="odd">
<td><code
id="budgets_describe_budgets_:_NextToken">NextToken</code></td>
<td><p>The pagination token that you include in your request to indicate
the next set of results that you want to retrieve.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Budgets = list(
        list(
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
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_budgets(
      AccountId = "string",
      MaxResults = 123,
      NextToken = "string"
    )
