<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>costexplorer_get_cost_forecast</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves a forecast for how much Amazon Web Services predicts that you will spend over the forecast time period that you select, based on your past costs

### Description

Retrieves a forecast for how much Amazon Web Services predicts that you
will spend over the forecast time period that you select, based on your
past costs.

### Usage

    costexplorer_get_cost_forecast(TimePeriod, Metric, Granularity, Filter,
      PredictionIntervalLevel)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="costexplorer_get_cost_forecast_:_TimePeriod">TimePeriod</code></td>
<td><p>[required] The period of time that you want the forecast to
cover. The start date must be equal to or no later than the current date
to avoid a validation error.</p></td>
</tr>
<tr class="even">
<td><code
id="costexplorer_get_cost_forecast_:_Metric">Metric</code></td>
<td><p>[required] Which metric Cost Explorer uses to create your
forecast. For more information about blended and unblended rates, see
Why does the "blended" annotation appear on some line items in my
bill?.</p>
<p>Valid values for a <code>get_cost_forecast</code> call are the
following:</p>
<ul>
<li><p>AMORTIZED_COST</p></li>
<li><p>BLENDED_COST</p></li>
<li><p>NET_AMORTIZED_COST</p></li>
<li><p>NET_UNBLENDED_COST</p></li>
<li><p>UNBLENDED_COST</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="costexplorer_get_cost_forecast_:_Granularity">Granularity</code></td>
<td><p>[required] How granular you want the forecast to be. You can get
3 months of <code>DAILY</code> forecasts or 12 months of
<code>MONTHLY</code> forecasts.</p>
<p>The <code>get_cost_forecast</code> operation supports only
<code>DAILY</code> and <code>MONTHLY</code> granularities.</p></td>
</tr>
<tr class="even">
<td><code
id="costexplorer_get_cost_forecast_:_Filter">Filter</code></td>
<td><p>The filters that you want to use to filter your forecast. The
<code>get_cost_forecast</code> API supports filtering by the following
dimensions:</p>
<ul>
<li><p><code>AZ</code></p></li>
<li><p><code>INSTANCE_TYPE</code></p></li>
<li><p><code>LINKED_ACCOUNT</code></p></li>
<li><p><code>LINKED_ACCOUNT_NAME</code></p></li>
<li><p><code>OPERATION</code></p></li>
<li><p><code>PURCHASE_TYPE</code></p></li>
<li><p><code>REGION</code></p></li>
<li><p><code>SERVICE</code></p></li>
<li><p><code>USAGE_TYPE</code></p></li>
<li><p><code>USAGE_TYPE_GROUP</code></p></li>
<li><p><code>RECORD_TYPE</code></p></li>
<li><p><code>OPERATING_SYSTEM</code></p></li>
<li><p><code>TENANCY</code></p></li>
<li><p><code>SCOPE</code></p></li>
<li><p><code>PLATFORM</code></p></li>
<li><p><code>SUBSCRIPTION_ID</code></p></li>
<li><p><code>LEGAL_ENTITY_NAME</code></p></li>
<li><p><code>DEPLOYMENT_OPTION</code></p></li>
<li><p><code>DATABASE_ENGINE</code></p></li>
<li><p><code>INSTANCE_TYPE_FAMILY</code></p></li>
<li><p><code>BILLING_ENTITY</code></p></li>
<li><p><code>RESERVATION_ID</code></p></li>
<li><p><code>SAVINGS_PLAN_ARN</code></p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="costexplorer_get_cost_forecast_:_PredictionIntervalLevel">PredictionIntervalLevel</code></td>
<td><p>Cost Explorer always returns the mean forecast as a single point.
You can request a prediction interval around the mean by specifying a
confidence level. The higher the confidence level, the more confident
Cost Explorer is about the actual value falling in the prediction
interval. Higher confidence levels result in wider prediction
intervals.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Total = list(
        Amount = "string",
        Unit = "string"
      ),
      ForecastResultsByTime = list(
        list(
          TimePeriod = list(
            Start = "string",
            End = "string"
          ),
          MeanValue = "string",
          PredictionIntervalLowerBound = "string",
          PredictionIntervalUpperBound = "string"
        )
      )
    )

### Request syntax

    svc$get_cost_forecast(
      TimePeriod = list(
        Start = "string",
        End = "string"
      ),
      Metric = "BLENDED_COST"|"UNBLENDED_COST"|"AMORTIZED_COST"|"NET_UNBLENDED_COST"|"NET_AMORTIZED_COST"|"USAGE_QUANTITY"|"NORMALIZED_USAGE_AMOUNT",
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
      PredictionIntervalLevel = 123
    )
