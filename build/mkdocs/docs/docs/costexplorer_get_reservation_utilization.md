<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>costexplorer_get_reservation_utilization</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves the reservation utilization for your account

### Description

Retrieves the reservation utilization for your account. Management
account in an organization have access to member accounts. You can
filter data by dimensions in a time period. You can use
`get_dimension_values` to determine the possible dimension values.
Currently, you can group only by `SUBSCRIPTION_ID`.

### Usage

    costexplorer_get_reservation_utilization(TimePeriod, GroupBy,
      Granularity, Filter, SortBy, NextPageToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="costexplorer_get_reservation_utilization_:_TimePeriod">TimePeriod</code></td>
<td><p>[required] Sets the start and end dates for retrieving Reserved
Instance (RI) utilization. The start date is inclusive, but the end date
is exclusive. For example, if <code>start</code> is
<code>2017-01-01</code> and <code>end</code> is <code>2017-05-01</code>,
then the cost and usage data is retrieved from <code>2017-01-01</code>
up to and including <code>2017-04-30</code> but not including
<code>2017-05-01</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="costexplorer_get_reservation_utilization_:_GroupBy">GroupBy</code></td>
<td><p>Groups only by <code>SUBSCRIPTION_ID</code>. Metadata is
included.</p></td>
</tr>
<tr class="odd">
<td><code
id="costexplorer_get_reservation_utilization_:_Granularity">Granularity</code></td>
<td><p>If <code>GroupBy</code> is set, <code>Granularity</code> can't be
set. If <code>Granularity</code> isn't set, the response object doesn't
include <code>Granularity</code>, either <code>MONTHLY</code> or
<code>DAILY</code>. If both <code>GroupBy</code> and
<code>Granularity</code> aren't set,
<code>get_reservation_utilization</code> defaults to
<code>DAILY</code>.</p>
<p>The <code>get_reservation_utilization</code> operation supports only
<code>DAILY</code> and <code>MONTHLY</code> granularities.</p></td>
</tr>
<tr class="even">
<td><code
id="costexplorer_get_reservation_utilization_:_Filter">Filter</code></td>
<td><p>Filters utilization data by dimensions. You can filter by the
following dimensions:</p>
<ul>
<li><p>AZ</p></li>
<li><p>CACHE_ENGINE</p></li>
<li><p>DEPLOYMENT_OPTION</p></li>
<li><p>INSTANCE_TYPE</p></li>
<li><p>LINKED_ACCOUNT</p></li>
<li><p>OPERATING_SYSTEM</p></li>
<li><p>PLATFORM</p></li>
<li><p>REGION</p></li>
<li><p>SERVICE</p></li>
<li><p>SCOPE</p></li>
<li><p>TENANCY</p></li>
</ul>
<p><code>get_reservation_utilization</code> uses the same <a
href="https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_Expression.html">Expression</a>
object as the other operations, but only <code>AND</code> is supported
among each dimension, and nesting is supported up to only one level
deep. If there are multiple values for a dimension, they are OR'd
together.</p></td>
</tr>
<tr class="odd">
<td><code
id="costexplorer_get_reservation_utilization_:_SortBy">SortBy</code></td>
<td><p>The value that you want to sort the data by.</p>
<p>The following values are supported for <code>Key</code>:</p>
<ul>
<li><p><code>UtilizationPercentage</code></p></li>
<li><p><code>UtilizationPercentageInUnits</code></p></li>
<li><p><code>PurchasedHours</code></p></li>
<li><p><code>PurchasedUnits</code></p></li>
<li><p><code>TotalActualHours</code></p></li>
<li><p><code>TotalActualUnits</code></p></li>
<li><p><code>UnusedHours</code></p></li>
<li><p><code>UnusedUnits</code></p></li>
<li><p><code>OnDemandCostOfRIHoursUsed</code></p></li>
<li><p><code>NetRISavings</code></p></li>
<li><p><code>TotalPotentialRISavings</code></p></li>
<li><p><code>AmortizedUpfrontFee</code></p></li>
<li><p><code>AmortizedRecurringFee</code></p></li>
<li><p><code>TotalAmortizedFee</code></p></li>
<li><p><code>RICostForUnusedHours</code></p></li>
<li><p><code>RealizedSavings</code></p></li>
<li><p><code>UnrealizedSavings</code></p></li>
</ul>
<p>The supported values for <code>SortOrder</code> are
<code>ASCENDING</code> and <code>DESCENDING</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="costexplorer_get_reservation_utilization_:_NextPageToken">NextPageToken</code></td>
<td><p>The token to retrieve the next set of results. Amazon Web
Services provides the token when the response from a previous call has
more results than the maximum page size.</p></td>
</tr>
<tr class="odd">
<td><code
id="costexplorer_get_reservation_utilization_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of objects that you returned for this request.
If more objects are available, in the response, Amazon Web Services
provides a NextPageToken value that you can use in a subsequent call to
get the next batch of objects.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      UtilizationsByTime = list(
        list(
          TimePeriod = list(
            Start = "string",
            End = "string"
          ),
          Groups = list(
            list(
              Key = "string",
              Value = "string",
              Attributes = list(
                "string"
              ),
              Utilization = list(
                UtilizationPercentage = "string",
                UtilizationPercentageInUnits = "string",
                PurchasedHours = "string",
                PurchasedUnits = "string",
                TotalActualHours = "string",
                TotalActualUnits = "string",
                UnusedHours = "string",
                UnusedUnits = "string",
                OnDemandCostOfRIHoursUsed = "string",
                NetRISavings = "string",
                TotalPotentialRISavings = "string",
                AmortizedUpfrontFee = "string",
                AmortizedRecurringFee = "string",
                TotalAmortizedFee = "string",
                RICostForUnusedHours = "string",
                RealizedSavings = "string",
                UnrealizedSavings = "string"
              )
            )
          ),
          Total = list(
            UtilizationPercentage = "string",
            UtilizationPercentageInUnits = "string",
            PurchasedHours = "string",
            PurchasedUnits = "string",
            TotalActualHours = "string",
            TotalActualUnits = "string",
            UnusedHours = "string",
            UnusedUnits = "string",
            OnDemandCostOfRIHoursUsed = "string",
            NetRISavings = "string",
            TotalPotentialRISavings = "string",
            AmortizedUpfrontFee = "string",
            AmortizedRecurringFee = "string",
            TotalAmortizedFee = "string",
            RICostForUnusedHours = "string",
            RealizedSavings = "string",
            UnrealizedSavings = "string"
          )
        )
      ),
      Total = list(
        UtilizationPercentage = "string",
        UtilizationPercentageInUnits = "string",
        PurchasedHours = "string",
        PurchasedUnits = "string",
        TotalActualHours = "string",
        TotalActualUnits = "string",
        UnusedHours = "string",
        UnusedUnits = "string",
        OnDemandCostOfRIHoursUsed = "string",
        NetRISavings = "string",
        TotalPotentialRISavings = "string",
        AmortizedUpfrontFee = "string",
        AmortizedRecurringFee = "string",
        TotalAmortizedFee = "string",
        RICostForUnusedHours = "string",
        RealizedSavings = "string",
        UnrealizedSavings = "string"
      ),
      NextPageToken = "string"
    )

### Request syntax

    svc$get_reservation_utilization(
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
      SortBy = list(
        Key = "string",
        SortOrder = "ASCENDING"|"DESCENDING"
      ),
      NextPageToken = "string",
      MaxResults = 123
    )
