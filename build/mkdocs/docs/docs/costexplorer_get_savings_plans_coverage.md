<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>costexplorer_get_savings_plans_coverage</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves the Savings Plans covered for your account

### Description

Retrieves the Savings Plans covered for your account. This enables you
to see how much of your cost is covered by a Savings Plan. An
organization’s management account can see the coverage of the associated
member accounts. This supports dimensions, Cost Categories, and nested
expressions. For any time period, you can filter data for Savings Plans
usage with the following dimensions:

-   `LINKED_ACCOUNT`

-   `REGION`

-   `SERVICE`

-   `INSTANCE_FAMILY`

To determine valid values for a dimension, use the
`get_dimension_values` operation.

### Usage

    costexplorer_get_savings_plans_coverage(TimePeriod, GroupBy,
      Granularity, Filter, Metrics, NextToken, MaxResults, SortBy)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="costexplorer_get_savings_plans_coverage_:_TimePeriod">TimePeriod</code></td>
<td><p>[required] The time period that you want the usage and costs for.
The <code>Start</code> date must be within 13 months. The
<code>End</code> date must be after the <code>Start</code> date, and
before the current date. Future dates can't be used as an
<code>End</code> date.</p></td>
</tr>
<tr class="even">
<td><code
id="costexplorer_get_savings_plans_coverage_:_GroupBy">GroupBy</code></td>
<td><p>You can group the data using the attributes
<code>INSTANCE_FAMILY</code>, <code>REGION</code>, or
<code>SERVICE</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="costexplorer_get_savings_plans_coverage_:_Granularity">Granularity</code></td>
<td><p>The granularity of the Amazon Web Services cost data for your
Savings Plans. <code>Granularity</code> can't be set if
<code>GroupBy</code> is set.</p>
<p>The <code>get_savings_plans_coverage</code> operation supports only
<code>DAILY</code> and <code>MONTHLY</code> granularities.</p></td>
</tr>
<tr class="even">
<td><code
id="costexplorer_get_savings_plans_coverage_:_Filter">Filter</code></td>
<td><p>Filters Savings Plans coverage data by dimensions. You can filter
data for Savings Plans usage with the following dimensions:</p>
<ul>
<li><p><code>LINKED_ACCOUNT</code></p></li>
<li><p><code>REGION</code></p></li>
<li><p><code>SERVICE</code></p></li>
<li><p><code>INSTANCE_FAMILY</code></p></li>
</ul>
<p><code>get_savings_plans_coverage</code> uses the same <a
href="https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_Expression.html">Expression</a>
object as the other operations, but only <code>AND</code> is supported
among each dimension. If there are multiple values for a dimension, they
are OR'd together.</p>
<p>Cost category is also supported.</p></td>
</tr>
<tr class="odd">
<td><code
id="costexplorer_get_savings_plans_coverage_:_Metrics">Metrics</code></td>
<td><p>The measurement that you want your Savings Plans coverage
reported in. The only valid value is
<code>SpendCoveredBySavingsPlans</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="costexplorer_get_savings_plans_coverage_:_NextToken">NextToken</code></td>
<td><p>The token to retrieve the next set of results. Amazon Web
Services provides the token when the response from a previous call has
more results than the maximum page size.</p></td>
</tr>
<tr class="odd">
<td><code
id="costexplorer_get_savings_plans_coverage_:_MaxResults">MaxResults</code></td>
<td><p>The number of items to be returned in a response. The default is
<code>20</code>, with a minimum value of <code>1</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="costexplorer_get_savings_plans_coverage_:_SortBy">SortBy</code></td>
<td><p>The value that you want to sort the data by.</p>
<p>The following values are supported for <code>Key</code>:</p>
<ul>
<li><p><code>SpendCoveredBySavingsPlan</code></p></li>
<li><p><code>OnDemandCost</code></p></li>
<li><p><code>CoveragePercentage</code></p></li>
<li><p><code>TotalCost</code></p></li>
<li><p><code>InstanceFamily</code></p></li>
<li><p><code>Region</code></p></li>
<li><p><code>Service</code></p></li>
</ul>
<p>The supported values for <code>SortOrder</code> are
<code>ASCENDING</code> and <code>DESCENDING</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      SavingsPlansCoverages = list(
        list(
          Attributes = list(
            "string"
          ),
          Coverage = list(
            SpendCoveredBySavingsPlans = "string",
            OnDemandCost = "string",
            TotalCost = "string",
            CoveragePercentage = "string"
          ),
          TimePeriod = list(
            Start = "string",
            End = "string"
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$get_savings_plans_coverage(
      TimePeriod = list(
        Start = "string",
        End = "string"
      ),
      GroupBy = list(
        list(
          Type = "DIMENSION"|"TAG"|"COST_CATEGORY",
          Key = "string"
        )
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
      Metrics = list(
        "string"
      ),
      NextToken = "string",
      MaxResults = 123,
      SortBy = list(
        Key = "string",
        SortOrder = "ASCENDING"|"DESCENDING"
      )
    )
