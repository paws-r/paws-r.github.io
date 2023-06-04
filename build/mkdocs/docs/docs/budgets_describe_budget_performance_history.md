<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>budgets_describe_budget_performance_history</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the history for DAILY, MONTHLY, and QUARTERLY budgets

### Description

Describes the history for `DAILY`, `MONTHLY`, and `QUARTERLY` budgets.
Budget history isn't available for `ANNUAL` budgets.

### Usage

    budgets_describe_budget_performance_history(AccountId, BudgetName,
      TimePeriod, MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="budgets_describe_budget_performance_history_:_AccountId">AccountId</code></td>
<td><p>[required]</p></td>
</tr>
<tr class="even">
<td><code
id="budgets_describe_budget_performance_history_:_BudgetName">BudgetName</code></td>
<td><p>[required]</p></td>
</tr>
<tr class="odd">
<td><code
id="budgets_describe_budget_performance_history_:_TimePeriod">TimePeriod</code></td>
<td><p>Retrieves how often the budget went into an <code>ALARM</code>
state for the specified time period.</p></td>
</tr>
<tr class="even">
<td><code
id="budgets_describe_budget_performance_history_:_MaxResults">MaxResults</code></td>
<td></td>
</tr>
<tr class="odd">
<td><code
id="budgets_describe_budget_performance_history_:_NextToken">NextToken</code></td>
<td></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      BudgetPerformanceHistory = list(
        BudgetName = "string",
        BudgetType = "USAGE"|"COST"|"RI_UTILIZATION"|"RI_COVERAGE"|"SAVINGS_PLANS_UTILIZATION"|"SAVINGS_PLANS_COVERAGE",
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
        BudgetedAndActualAmountsList = list(
          list(
            BudgetedAmount = list(
              Amount = "string",
              Unit = "string"
            ),
            ActualAmount = list(
              Amount = "string",
              Unit = "string"
            ),
            TimePeriod = list(
              Start = as.POSIXct(
                "2015-01-01"
              ),
              End = as.POSIXct(
                "2015-01-01"
              )
            )
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_budget_performance_history(
      AccountId = "string",
      BudgetName = "string",
      TimePeriod = list(
        Start = as.POSIXct(
          "2015-01-01"
        ),
        End = as.POSIXct(
          "2015-01-01"
        )
      ),
      MaxResults = 123,
      NextToken = "string"
    )
