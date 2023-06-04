<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>costexplorer_get_savings_plans_utilization</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves the Savings Plans utilization for your account across date ranges with daily or monthly granularity

### Description

Retrieves the Savings Plans utilization for your account across date
ranges with daily or monthly granularity. Management account in an
organization have access to member accounts. You can use
`get_dimension_values` in `SAVINGS_PLANS` to determine the possible
dimension values.

You can't group by any dimension values for
`get_savings_plans_utilization`.

### Usage

    costexplorer_get_savings_plans_utilization(TimePeriod, Granularity,
      Filter, SortBy)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="costexplorer_get_savings_plans_utilization_:_TimePeriod">TimePeriod</code></td>
<td><p>[required] The time period that you want the usage and costs for.
The <code>Start</code> date must be within 13 months. The
<code>End</code> date must be after the <code>Start</code> date, and
before the current date. Future dates can't be used as an
<code>End</code> date.</p></td>
</tr>
<tr class="even">
<td><code
id="costexplorer_get_savings_plans_utilization_:_Granularity">Granularity</code></td>
<td><p>The granularity of the Amazon Web Services utillization data for
your Savings Plans.</p>
<p>The <code>get_savings_plans_utilization</code> operation supports
only <code>DAILY</code> and <code>MONTHLY</code> granularities.</p></td>
</tr>
<tr class="odd">
<td><code
id="costexplorer_get_savings_plans_utilization_:_Filter">Filter</code></td>
<td><p>Filters Savings Plans utilization coverage data for active
Savings Plans dimensions. You can filter data with the following
dimensions:</p>
<ul>
<li><p><code>LINKED_ACCOUNT</code></p></li>
<li><p><code>SAVINGS_PLAN_ARN</code></p></li>
<li><p><code>SAVINGS_PLANS_TYPE</code></p></li>
<li><p><code>REGION</code></p></li>
<li><p><code>PAYMENT_OPTION</code></p></li>
<li><p><code>INSTANCE_TYPE_FAMILY</code></p></li>
</ul>
<p><code>get_savings_plans_utilization</code> uses the same <a
href="https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_Expression.html">Expression</a>
object as the other operations, but only <code>AND</code> is supported
among each dimension.</p></td>
</tr>
<tr class="even">
<td><code
id="costexplorer_get_savings_plans_utilization_:_SortBy">SortBy</code></td>
<td><p>The value that you want to sort the data by.</p>
<p>The following values are supported for <code>Key</code>:</p>
<ul>
<li><p><code>UtilizationPercentage</code></p></li>
<li><p><code>TotalCommitment</code></p></li>
<li><p><code>UsedCommitment</code></p></li>
<li><p><code>UnusedCommitment</code></p></li>
<li><p><code>NetSavings</code></p></li>
</ul>
<p>The supported values for <code>SortOrder</code> are
<code>ASCENDING</code> and <code>DESCENDING</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      SavingsPlansUtilizationsByTime = list(
        list(
          TimePeriod = list(
            Start = "string",
            End = "string"
          ),
          Utilization = list(
            TotalCommitment = "string",
            UsedCommitment = "string",
            UnusedCommitment = "string",
            UtilizationPercentage = "string"
          ),
          Savings = list(
            NetSavings = "string",
            OnDemandCostEquivalent = "string"
          ),
          AmortizedCommitment = list(
            AmortizedRecurringCommitment = "string",
            AmortizedUpfrontCommitment = "string",
            TotalAmortizedCommitment = "string"
          )
        )
      ),
      Total = list(
        Utilization = list(
          TotalCommitment = "string",
          UsedCommitment = "string",
          UnusedCommitment = "string",
          UtilizationPercentage = "string"
        ),
        Savings = list(
          NetSavings = "string",
          OnDemandCostEquivalent = "string"
        ),
        AmortizedCommitment = list(
          AmortizedRecurringCommitment = "string",
          AmortizedUpfrontCommitment = "string",
          TotalAmortizedCommitment = "string"
        )
      )
    )

### Request syntax

    svc$get_savings_plans_utilization(
      TimePeriod = list(
        Start = "string",
        End = "string"
      ),
      Granularity = "DAILY"|"MONTHLY"|"HOURLY",
      Filter = list(
        Or = list(
          list()
        ),
        And = list(
          list()
        ),
        Not = list(),
        Dimensions = list(
          Key = "AZ"|"INSTANCE_TYPE"|"LINKED_ACCOUNT"|"LINKED_ACCOUNT_NAME"|"OPERATION"|"PURCHASE_TYPE"|"REGION"|"SERVICE"|"SERVICE_CODE"|"USAGE_TYPE"|"USAGE_TYPE_GROUP"|"RECORD_TYPE"|"OPERATING_SYSTEM"|"TENANCY"|"SCOPE"|"PLATFORM"|"SUBSCRIPTION_ID"|"LEGAL_ENTITY_NAME"|"DEPLOYMENT_OPTION"|"DATABASE_ENGINE"|"CACHE_ENGINE"|"INSTANCE_TYPE_FAMILY"|"BILLING_ENTITY"|"RESERVATION_ID"|"RESOURCE_ID"|"RIGHTSIZING_TYPE"|"SAVINGS_PLANS_TYPE"|"SAVINGS_PLAN_ARN"|"PAYMENT_OPTION"|"AGREEMENT_END_DATE_TIME_AFTER"|"AGREEMENT_END_DATE_TIME_BEFORE"|"INVOICING_ENTITY"|"ANOMALY_TOTAL_IMPACT_ABSOLUTE"|"ANOMALY_TOTAL_IMPACT_PERCENTAGE",
          Values = list(
            "string"
          ),
          MatchOptions = list(
            "EQUALS"|"ABSENT"|"STARTS_WITH"|"ENDS_WITH"|"CONTAINS"|"CASE_SENSITIVE"|"CASE_INSENSITIVE"|"GREATER_THAN_OR_EQUAL"
          )
        ),
        Tags = list(
          Key = "string",
          Values = list(
            "string"
          ),
          MatchOptions = list(
            "EQUALS"|"ABSENT"|"STARTS_WITH"|"ENDS_WITH"|"CONTAINS"|"CASE_SENSITIVE"|"CASE_INSENSITIVE"|"GREATER_THAN_OR_EQUAL"
          )
        ),
        CostCategories = list(
          Key = "string",
          Values = list(
            "string"
          ),
          MatchOptions = list(
            "EQUALS"|"ABSENT"|"STARTS_WITH"|"ENDS_WITH"|"CONTAINS"|"CASE_SENSITIVE"|"CASE_INSENSITIVE"|"GREATER_THAN_OR_EQUAL"
          )
        )
      ),
      SortBy = list(
        Key = "string",
        SortOrder = "ASCENDING"|"DESCENDING"
      )
    )
