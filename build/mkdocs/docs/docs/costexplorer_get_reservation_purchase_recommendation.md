<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>costexplorer_get_reservation_purchase_recommendation</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets recommendations for reservation purchases

### Description

Gets recommendations for reservation purchases. These recommendations
might help you to reduce your costs. Reservations provide a discounted
hourly rate (up to 75%) compared to On-Demand pricing.

Amazon Web Services generates your recommendations by identifying your
On-Demand usage during a specific time period and collecting your usage
into categories that are eligible for a reservation. After Amazon Web
Services has these categories, it simulates every combination of
reservations in each category of usage to identify the best number of
each type of Reserved Instance (RI) to purchase to maximize your
estimated savings.

For example, Amazon Web Services automatically aggregates your Amazon
EC2 Linux, shared tenancy, and c4 family usage in the US West (Oregon)
Region and recommends that you buy size-flexible regional reservations
to apply to the c4 family usage. Amazon Web Services recommends the
smallest size instance in an instance family. This makes it easier to
purchase a size-flexible Reserved Instance (RI). Amazon Web Services
also shows the equal number of normalized units. This way, you can
purchase any instance size that you want. For this example, your RI
recommendation is for `c4.large` because that is the smallest size
instance in the c4 instance family.

### Usage

    costexplorer_get_reservation_purchase_recommendation(AccountId, Service,
      Filter, AccountScope, LookbackPeriodInDays, TermInYears, PaymentOption,
      ServiceSpecification, PageSize, NextPageToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="costexplorer_get_reservation_purchase_recommendation_:_AccountId">AccountId</code></td>
<td><p>The account ID that's associated with the
recommendation.</p></td>
</tr>
<tr class="even">
<td><code
id="costexplorer_get_reservation_purchase_recommendation_:_Service">Service</code></td>
<td><p>[required] The specific service that you want recommendations
for.</p></td>
</tr>
<tr class="odd">
<td><code
id="costexplorer_get_reservation_purchase_recommendation_:_Filter">Filter</code></td>
<td></td>
</tr>
<tr class="even">
<td><code
id="costexplorer_get_reservation_purchase_recommendation_:_AccountScope">AccountScope</code></td>
<td><p>The account scope that you want your recommendations for. Amazon
Web Services calculates recommendations including the management account
and member accounts if the value is set to <code>PAYER</code>. If the
value is <code>LINKED</code>, recommendations are calculated for
individual member accounts only.</p></td>
</tr>
<tr class="odd">
<td><code
id="costexplorer_get_reservation_purchase_recommendation_:_LookbackPeriodInDays">LookbackPeriodInDays</code></td>
<td><p>The number of previous days that you want Amazon Web Services to
consider when it calculates your recommendations.</p></td>
</tr>
<tr class="even">
<td><code
id="costexplorer_get_reservation_purchase_recommendation_:_TermInYears">TermInYears</code></td>
<td><p>The reservation term that you want recommendations for.</p></td>
</tr>
<tr class="odd">
<td><code
id="costexplorer_get_reservation_purchase_recommendation_:_PaymentOption">PaymentOption</code></td>
<td><p>The reservation purchase option that you want recommendations
for.</p></td>
</tr>
<tr class="even">
<td><code
id="costexplorer_get_reservation_purchase_recommendation_:_ServiceSpecification">ServiceSpecification</code></td>
<td><p>The hardware specifications for the service instances that you
want recommendations for, such as standard or convertible Amazon EC2
instances.</p></td>
</tr>
<tr class="odd">
<td><code
id="costexplorer_get_reservation_purchase_recommendation_:_PageSize">PageSize</code></td>
<td><p>The number of recommendations that you want returned in a single
response object.</p></td>
</tr>
<tr class="even">
<td><code
id="costexplorer_get_reservation_purchase_recommendation_:_NextPageToken">NextPageToken</code></td>
<td><p>The pagination token that indicates the next set of results that
you want to retrieve.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Metadata = list(
        RecommendationId = "string",
        GenerationTimestamp = "string"
      ),
      Recommendations = list(
        list(
          AccountScope = "PAYER"|"LINKED",
          LookbackPeriodInDays = "SEVEN_DAYS"|"THIRTY_DAYS"|"SIXTY_DAYS",
          TermInYears = "ONE_YEAR"|"THREE_YEARS",
          PaymentOption = "NO_UPFRONT"|"PARTIAL_UPFRONT"|"ALL_UPFRONT"|"LIGHT_UTILIZATION"|"MEDIUM_UTILIZATION"|"HEAVY_UTILIZATION",
          ServiceSpecification = list(
            EC2Specification = list(
              OfferingClass = "STANDARD"|"CONVERTIBLE"
            )
          ),
          RecommendationDetails = list(
            list(
              AccountId = "string",
              InstanceDetails = list(
                EC2InstanceDetails = list(
                  Family = "string",
                  InstanceType = "string",
                  Region = "string",
                  AvailabilityZone = "string",
                  Platform = "string",
                  Tenancy = "string",
                  CurrentGeneration = TRUE|FALSE,
                  SizeFlexEligible = TRUE|FALSE
                ),
                RDSInstanceDetails = list(
                  Family = "string",
                  InstanceType = "string",
                  Region = "string",
                  DatabaseEngine = "string",
                  DatabaseEdition = "string",
                  DeploymentOption = "string",
                  LicenseModel = "string",
                  CurrentGeneration = TRUE|FALSE,
                  SizeFlexEligible = TRUE|FALSE
                ),
                RedshiftInstanceDetails = list(
                  Family = "string",
                  NodeType = "string",
                  Region = "string",
                  CurrentGeneration = TRUE|FALSE,
                  SizeFlexEligible = TRUE|FALSE
                ),
                ElastiCacheInstanceDetails = list(
                  Family = "string",
                  NodeType = "string",
                  Region = "string",
                  ProductDescription = "string",
                  CurrentGeneration = TRUE|FALSE,
                  SizeFlexEligible = TRUE|FALSE
                ),
                ESInstanceDetails = list(
                  InstanceClass = "string",
                  InstanceSize = "string",
                  Region = "string",
                  CurrentGeneration = TRUE|FALSE,
                  SizeFlexEligible = TRUE|FALSE
                )
              ),
              RecommendedNumberOfInstancesToPurchase = "string",
              RecommendedNormalizedUnitsToPurchase = "string",
              MinimumNumberOfInstancesUsedPerHour = "string",
              MinimumNormalizedUnitsUsedPerHour = "string",
              MaximumNumberOfInstancesUsedPerHour = "string",
              MaximumNormalizedUnitsUsedPerHour = "string",
              AverageNumberOfInstancesUsedPerHour = "string",
              AverageNormalizedUnitsUsedPerHour = "string",
              AverageUtilization = "string",
              EstimatedBreakEvenInMonths = "string",
              CurrencyCode = "string",
              EstimatedMonthlySavingsAmount = "string",
              EstimatedMonthlySavingsPercentage = "string",
              EstimatedMonthlyOnDemandCost = "string",
              EstimatedReservationCostForLookbackPeriod = "string",
              UpfrontCost = "string",
              RecurringStandardMonthlyCost = "string"
            )
          ),
          RecommendationSummary = list(
            TotalEstimatedMonthlySavingsAmount = "string",
            TotalEstimatedMonthlySavingsPercentage = "string",
            CurrencyCode = "string"
          )
        )
      ),
      NextPageToken = "string"
    )

### Request syntax

    svc$get_reservation_purchase_recommendation(
      AccountId = "string",
      Service = "string",
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
      AccountScope = "PAYER"|"LINKED",
      LookbackPeriodInDays = "SEVEN_DAYS"|"THIRTY_DAYS"|"SIXTY_DAYS",
      TermInYears = "ONE_YEAR"|"THREE_YEARS",
      PaymentOption = "NO_UPFRONT"|"PARTIAL_UPFRONT"|"ALL_UPFRONT"|"LIGHT_UTILIZATION"|"MEDIUM_UTILIZATION"|"HEAVY_UTILIZATION",
      ServiceSpecification = list(
        EC2Specification = list(
          OfferingClass = "STANDARD"|"CONVERTIBLE"
        )
      ),
      PageSize = 123,
      NextPageToken = "string"
    )
