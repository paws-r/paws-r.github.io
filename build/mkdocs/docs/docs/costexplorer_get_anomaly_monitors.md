<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>costexplorer_get_anomaly_monitors</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves the cost anomaly monitor definitions for your account

### Description

Retrieves the cost anomaly monitor definitions for your account. You can
filter using a list of cost anomaly monitor Amazon Resource Names
(ARNs).

### Usage

    costexplorer_get_anomaly_monitors(MonitorArnList, NextPageToken,
      MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="costexplorer_get_anomaly_monitors_:_MonitorArnList">MonitorArnList</code></td>
<td><p>A list of cost anomaly monitor ARNs.</p></td>
</tr>
<tr class="even">
<td><code
id="costexplorer_get_anomaly_monitors_:_NextPageToken">NextPageToken</code></td>
<td><p>The token to retrieve the next set of results. Amazon Web
Services provides the token when the response from a previous call has
more results than the maximum page size.</p></td>
</tr>
<tr class="odd">
<td><code
id="costexplorer_get_anomaly_monitors_:_MaxResults">MaxResults</code></td>
<td><p>The number of entries that a paginated response
contains.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      AnomalyMonitors = list(
        list(
          MonitorArn = "string",
          MonitorName = "string",
          CreationDate = "string",
          LastUpdatedDate = "string",
          LastEvaluatedDate = "string",
          MonitorType = "DIMENSIONAL"|"CUSTOM",
          MonitorDimension = "SERVICE",
          MonitorSpecification = list(
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
          DimensionalValueCount = 123
        )
      ),
      NextPageToken = "string"
    )

### Request syntax

    svc$get_anomaly_monitors(
      MonitorArnList = list(
        "string"
      ),
      NextPageToken = "string",
      MaxResults = 123
    )
