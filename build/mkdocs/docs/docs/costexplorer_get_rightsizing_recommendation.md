<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>costexplorer_get_rightsizing_recommendation</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates recommendations that help you save cost by identifying idle and underutilized Amazon EC2 instances

### Description

Creates recommendations that help you save cost by identifying idle and
underutilized Amazon EC2 instances.

Recommendations are generated to either downsize or terminate instances,
along with providing savings detail and metrics. For more information
about calculation and function, see [Optimizing Your Cost with
Rightsizing
Recommendations](https://docs.aws.amazon.com/cost-management/latest/userguide/ce-rightsizing.html)
in the *Billing and Cost Management User Guide*.

### Usage

    costexplorer_get_rightsizing_recommendation(Filter, Configuration,
      Service, PageSize, NextPageToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="costexplorer_get_rightsizing_recommendation_:_Filter">Filter</code></td>
<td></td>
</tr>
<tr class="even">
<td><code
id="costexplorer_get_rightsizing_recommendation_:_Configuration">Configuration</code></td>
<td><p>You can use Configuration to customize recommendations across two
attributes. You can choose to view recommendations for instances within
the same instance families or across different instance families. You
can also choose to view your estimated savings that are associated with
recommendations with consideration of existing Savings Plans or RI
benefits, or neither.</p></td>
</tr>
<tr class="odd">
<td><code
id="costexplorer_get_rightsizing_recommendation_:_Service">Service</code></td>
<td><p>[required] The specific service that you want recommendations
for. The only valid value for
<code>get_rightsizing_recommendation</code> is
"<code>AmazonEC2</code>".</p></td>
</tr>
<tr class="even">
<td><code
id="costexplorer_get_rightsizing_recommendation_:_PageSize">PageSize</code></td>
<td><p>The number of recommendations that you want returned in a single
response object.</p></td>
</tr>
<tr class="odd">
<td><code
id="costexplorer_get_rightsizing_recommendation_:_NextPageToken">NextPageToken</code></td>
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
        GenerationTimestamp = "string",
        LookbackPeriodInDays = "SEVEN_DAYS"|"THIRTY_DAYS"|"SIXTY_DAYS",
        AdditionalMetadata = "string"
      ),
      Summary = list(
        TotalRecommendationCount = "string",
        EstimatedTotalMonthlySavingsAmount = "string",
        SavingsCurrencyCode = "string",
        SavingsPercentage = "string"
      ),
      RightsizingRecommendations = list(
        list(
          AccountId = "string",
          CurrentInstance = list(
            ResourceId = "string",
            InstanceName = "string",
            Tags = list(
              list(
                Key = "string",
                Values = list(
                  "string"
                ),
                MatchOptions = list(
                  "EQUALS"|"ABSENT"|"STARTS_WITH"|"ENDS_WITH"|"CONTAINS"|"CASE_SENSITIVE"|"CASE_INSENSITIVE"|"GREATER_THAN_OR_EQUAL"
                )
              )
            ),
            ResourceDetails = list(
              EC2ResourceDetails = list(
                HourlyOnDemandRate = "string",
                InstanceType = "string",
                Platform = "string",
                Region = "string",
                Sku = "string",
                Memory = "string",
                NetworkPerformance = "string",
                Storage = "string",
                Vcpu = "string"
              )
            ),
            ResourceUtilization = list(
              EC2ResourceUtilization = list(
                MaxCpuUtilizationPercentage = "string",
                MaxMemoryUtilizationPercentage = "string",
                MaxStorageUtilizationPercentage = "string",
                EBSResourceUtilization = list(
                  EbsReadOpsPerSecond = "string",
                  EbsWriteOpsPerSecond = "string",
                  EbsReadBytesPerSecond = "string",
                  EbsWriteBytesPerSecond = "string"
                ),
                DiskResourceUtilization = list(
                  DiskReadOpsPerSecond = "string",
                  DiskWriteOpsPerSecond = "string",
                  DiskReadBytesPerSecond = "string",
                  DiskWriteBytesPerSecond = "string"
                ),
                NetworkResourceUtilization = list(
                  NetworkInBytesPerSecond = "string",
                  NetworkOutBytesPerSecond = "string",
                  NetworkPacketsInPerSecond = "string",
                  NetworkPacketsOutPerSecond = "string"
                )
              )
            ),
            ReservationCoveredHoursInLookbackPeriod = "string",
            SavingsPlansCoveredHoursInLookbackPeriod = "string",
            OnDemandHoursInLookbackPeriod = "string",
            TotalRunningHoursInLookbackPeriod = "string",
            MonthlyCost = "string",
            CurrencyCode = "string"
          ),
          RightsizingType = "TERMINATE"|"MODIFY",
          ModifyRecommendationDetail = list(
            TargetInstances = list(
              list(
                EstimatedMonthlyCost = "string",
                EstimatedMonthlySavings = "string",
                CurrencyCode = "string",
                DefaultTargetInstance = TRUE|FALSE,
                ResourceDetails = list(
                  EC2ResourceDetails = list(
                    HourlyOnDemandRate = "string",
                    InstanceType = "string",
                    Platform = "string",
                    Region = "string",
                    Sku = "string",
                    Memory = "string",
                    NetworkPerformance = "string",
                    Storage = "string",
                    Vcpu = "string"
                  )
                ),
                ExpectedResourceUtilization = list(
                  EC2ResourceUtilization = list(
                    MaxCpuUtilizationPercentage = "string",
                    MaxMemoryUtilizationPercentage = "string",
                    MaxStorageUtilizationPercentage = "string",
                    EBSResourceUtilization = list(
                      EbsReadOpsPerSecond = "string",
                      EbsWriteOpsPerSecond = "string",
                      EbsReadBytesPerSecond = "string",
                      EbsWriteBytesPerSecond = "string"
                    ),
                    DiskResourceUtilization = list(
                      DiskReadOpsPerSecond = "string",
                      DiskWriteOpsPerSecond = "string",
                      DiskReadBytesPerSecond = "string",
                      DiskWriteBytesPerSecond = "string"
                    ),
                    NetworkResourceUtilization = list(
                      NetworkInBytesPerSecond = "string",
                      NetworkOutBytesPerSecond = "string",
                      NetworkPacketsInPerSecond = "string",
                      NetworkPacketsOutPerSecond = "string"
                    )
                  )
                ),
                PlatformDifferences = list(
                  "HYPERVISOR"|"NETWORK_INTERFACE"|"STORAGE_INTERFACE"|"INSTANCE_STORE_AVAILABILITY"|"VIRTUALIZATION_TYPE"
                )
              )
            )
          ),
          TerminateRecommendationDetail = list(
            EstimatedMonthlySavings = "string",
            CurrencyCode = "string"
          ),
          FindingReasonCodes = list(
            "CPU_OVER_PROVISIONED"|"CPU_UNDER_PROVISIONED"|"MEMORY_OVER_PROVISIONED"|"MEMORY_UNDER_PROVISIONED"|"EBS_THROUGHPUT_OVER_PROVISIONED"|"EBS_THROUGHPUT_UNDER_PROVISIONED"|"EBS_IOPS_OVER_PROVISIONED"|"EBS_IOPS_UNDER_PROVISIONED"|"NETWORK_BANDWIDTH_OVER_PROVISIONED"|"NETWORK_BANDWIDTH_UNDER_PROVISIONED"|"NETWORK_PPS_OVER_PROVISIONED"|"NETWORK_PPS_UNDER_PROVISIONED"|"DISK_IOPS_OVER_PROVISIONED"|"DISK_IOPS_UNDER_PROVISIONED"|"DISK_THROUGHPUT_OVER_PROVISIONED"|"DISK_THROUGHPUT_UNDER_PROVISIONED"
          )
        )
      ),
      NextPageToken = "string",
      Configuration = list(
        RecommendationTarget = "SAME_INSTANCE_FAMILY"|"CROSS_INSTANCE_FAMILY",
        BenefitsConsidered = TRUE|FALSE
      )
    )

### Request syntax

    svc$get_rightsizing_recommendation(
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
      Configuration = list(
        RecommendationTarget = "SAME_INSTANCE_FAMILY"|"CROSS_INSTANCE_FAMILY",
        BenefitsConsidered = TRUE|FALSE
      ),
      Service = "string",
      PageSize = 123,
      NextPageToken = "string"
    )
