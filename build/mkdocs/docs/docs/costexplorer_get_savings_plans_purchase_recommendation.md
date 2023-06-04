<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>costexplorer_get_savings_plans_purchase_recommendation</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves the Savings Plans recommendations for your account

### Description

Retrieves the Savings Plans recommendations for your account. First use
`start_savings_plans_purchase_recommendation_generation` to generate a
new set of recommendations, and then use
`get_savings_plans_purchase_recommendation` to retrieve them.

### Usage

    costexplorer_get_savings_plans_purchase_recommendation(SavingsPlansType,
      TermInYears, PaymentOption, AccountScope, NextPageToken, PageSize,
      LookbackPeriodInDays, Filter)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="costexplorer_get_savings_plans_purchase_recommendation_:_SavingsPlansType">SavingsPlansType</code></td>
<td><p>[required] The Savings Plans recommendation type that's
requested.</p></td>
</tr>
<tr class="even">
<td><code
id="costexplorer_get_savings_plans_purchase_recommendation_:_TermInYears">TermInYears</code></td>
<td><p>[required] The savings plan recommendation term that's used to
generate these recommendations.</p></td>
</tr>
<tr class="odd">
<td><code
id="costexplorer_get_savings_plans_purchase_recommendation_:_PaymentOption">PaymentOption</code></td>
<td><p>[required] The payment option that's used to generate these
recommendations.</p></td>
</tr>
<tr class="even">
<td><code
id="costexplorer_get_savings_plans_purchase_recommendation_:_AccountScope">AccountScope</code></td>
<td><p>The account scope that you want your recommendations for. Amazon
Web Services calculates recommendations including the management account
and member accounts if the value is set to <code>PAYER</code>. If the
value is <code>LINKED</code>, recommendations are calculated for
individual member accounts only.</p></td>
</tr>
<tr class="odd">
<td><code
id="costexplorer_get_savings_plans_purchase_recommendation_:_NextPageToken">NextPageToken</code></td>
<td><p>The token to retrieve the next set of results. Amazon Web
Services provides the token when the response from a previous call has
more results than the maximum page size.</p></td>
</tr>
<tr class="even">
<td><code
id="costexplorer_get_savings_plans_purchase_recommendation_:_PageSize">PageSize</code></td>
<td><p>The number of recommendations that you want returned in a single
response object.</p></td>
</tr>
<tr class="odd">
<td><code
id="costexplorer_get_savings_plans_purchase_recommendation_:_LookbackPeriodInDays">LookbackPeriodInDays</code></td>
<td><p>[required] The lookback period that's used to generate the
recommendation.</p></td>
</tr>
<tr class="even">
<td><code
id="costexplorer_get_savings_plans_purchase_recommendation_:_Filter">Filter</code></td>
<td><p>You can filter your recommendations by Account ID with the
<code>LINKED_ACCOUNT</code> dimension. To filter your recommendations by
Account ID, specify <code>Key</code> as <code>LINKED_ACCOUNT</code> and
<code>Value</code> as the comma-separated Acount ID(s) that you want to
see Savings Plans purchase recommendations for.</p>
<p>For GetSavingsPlansPurchaseRecommendation, the <code>Filter</code>
doesn't include <code>CostCategories</code> or <code>Tags</code>. It
only includes <code>Dimensions</code>. With <code>Dimensions</code>,
<code>Key</code> must be <code>LINKED_ACCOUNT</code> and
<code>Value</code> can be a single Account ID or multiple
comma-separated Account IDs that you want to see Savings Plans Purchase
Recommendations for. <code>AND</code> and <code>OR</code> operators are
not supported.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Metadata = list(
        RecommendationId = "string",
        GenerationTimestamp = "string",
        AdditionalMetadata = "string"
      ),
      SavingsPlansPurchaseRecommendation = list(
        AccountScope = "PAYER"|"LINKED",
        SavingsPlansType = "COMPUTE_SP"|"EC2_INSTANCE_SP"|"SAGEMAKER_SP",
        TermInYears = "ONE_YEAR"|"THREE_YEARS",
        PaymentOption = "NO_UPFRONT"|"PARTIAL_UPFRONT"|"ALL_UPFRONT"|"LIGHT_UTILIZATION"|"MEDIUM_UTILIZATION"|"HEAVY_UTILIZATION",
        LookbackPeriodInDays = "SEVEN_DAYS"|"THIRTY_DAYS"|"SIXTY_DAYS",
        SavingsPlansPurchaseRecommendationDetails = list(
          list(
            SavingsPlansDetails = list(
              Region = "string",
              InstanceFamily = "string",
              OfferingId = "string"
            ),
            AccountId = "string",
            UpfrontCost = "string",
            EstimatedROI = "string",
            CurrencyCode = "string",
            EstimatedSPCost = "string",
            EstimatedOnDemandCost = "string",
            EstimatedOnDemandCostWithCurrentCommitment = "string",
            EstimatedSavingsAmount = "string",
            EstimatedSavingsPercentage = "string",
            HourlyCommitmentToPurchase = "string",
            EstimatedAverageUtilization = "string",
            EstimatedMonthlySavingsAmount = "string",
            CurrentMinimumHourlyOnDemandSpend = "string",
            CurrentMaximumHourlyOnDemandSpend = "string",
            CurrentAverageHourlyOnDemandSpend = "string"
          )
        ),
        SavingsPlansPurchaseRecommendationSummary = list(
          EstimatedROI = "string",
          CurrencyCode = "string",
          EstimatedTotalCost = "string",
          CurrentOnDemandSpend = "string",
          EstimatedSavingsAmount = "string",
          TotalRecommendationCount = "string",
          DailyCommitmentToPurchase = "string",
          HourlyCommitmentToPurchase = "string",
          EstimatedSavingsPercentage = "string",
          EstimatedMonthlySavingsAmount = "string",
          EstimatedOnDemandCostWithCurrentCommitment = "string"
        )
      ),
      NextPageToken = "string"
    )

### Request syntax

    svc$get_savings_plans_purchase_recommendation(
      SavingsPlansType = "COMPUTE_SP"|"EC2_INSTANCE_SP"|"SAGEMAKER_SP",
      TermInYears = "ONE_YEAR"|"THREE_YEARS",
      PaymentOption = "NO_UPFRONT"|"PARTIAL_UPFRONT"|"ALL_UPFRONT"|"LIGHT_UTILIZATION"|"MEDIUM_UTILIZATION"|"HEAVY_UTILIZATION",
      AccountScope = "PAYER"|"LINKED",
      NextPageToken = "string",
      PageSize = 123,
      LookbackPeriodInDays = "SEVEN_DAYS"|"THIRTY_DAYS"|"SIXTY_DAYS",
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
      )
    )
