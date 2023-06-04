<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>guardduty_get_usage_statistics</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists Amazon GuardDuty usage statistics over the last 30 days for the specified detector ID

### Description

Lists Amazon GuardDuty usage statistics over the last 30 days for the
specified detector ID. For newly enabled detectors or data sources, the
cost returned will include only the usage so far under 30 days. This may
differ from the cost metrics in the console, which project usage over 30
days to provide a monthly cost estimate. For more information, see
[Understanding How Usage Costs are
Calculated](https://docs.aws.amazon.com/guardduty/latest/ug/monitoring_costs.html#usage-calculations).

### Usage

    guardduty_get_usage_statistics(DetectorId, UsageStatisticType,
      UsageCriteria, Unit, MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="guardduty_get_usage_statistics_:_DetectorId">DetectorId</code></td>
<td><p>[required] The ID of the detector that specifies the GuardDuty
service whose usage statistics you want to retrieve.</p></td>
</tr>
<tr class="even">
<td><code
id="guardduty_get_usage_statistics_:_UsageStatisticType">UsageStatisticType</code></td>
<td><p>[required] The type of usage statistics to retrieve.</p></td>
</tr>
<tr class="odd">
<td><code
id="guardduty_get_usage_statistics_:_UsageCriteria">UsageCriteria</code></td>
<td><p>[required] Represents the criteria used for querying
usage.</p></td>
</tr>
<tr class="even">
<td><code id="guardduty_get_usage_statistics_:_Unit">Unit</code></td>
<td><p>The currency unit you would like to view your usage statistics
in. Current valid values are USD.</p></td>
</tr>
<tr class="odd">
<td><code
id="guardduty_get_usage_statistics_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return in the response.</p></td>
</tr>
<tr class="even">
<td><code
id="guardduty_get_usage_statistics_:_NextToken">NextToken</code></td>
<td><p>A token to use for paginating results that are returned in the
response. Set the value of this parameter to null for the first request
to a list action. For subsequent calls, use the NextToken value returned
from the previous request to continue listing results after the first
page.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      UsageStatistics = list(
        SumByAccount = list(
          list(
            AccountId = "string",
            Total = list(
              Amount = "string",
              Unit = "string"
            )
          )
        ),
        SumByDataSource = list(
          list(
            DataSource = "FLOW_LOGS"|"CLOUD_TRAIL"|"DNS_LOGS"|"S3_LOGS"|"KUBERNETES_AUDIT_LOGS"|"EC2_MALWARE_SCAN",
            Total = list(
              Amount = "string",
              Unit = "string"
            )
          )
        ),
        SumByResource = list(
          list(
            Resource = "string",
            Total = list(
              Amount = "string",
              Unit = "string"
            )
          )
        ),
        TopResources = list(
          list(
            Resource = "string",
            Total = list(
              Amount = "string",
              Unit = "string"
            )
          )
        ),
        SumByFeature = list(
          list(
            Feature = "FLOW_LOGS"|"CLOUD_TRAIL"|"DNS_LOGS"|"S3_DATA_EVENTS"|"EKS_AUDIT_LOGS"|"EBS_MALWARE_PROTECTION"|"RDS_LOGIN_EVENTS"|"LAMBDA_NETWORK_LOGS"|"EKS_RUNTIME_MONITORING",
            Total = list(
              Amount = "string",
              Unit = "string"
            )
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$get_usage_statistics(
      DetectorId = "string",
      UsageStatisticType = "SUM_BY_ACCOUNT"|"SUM_BY_DATA_SOURCE"|"SUM_BY_RESOURCE"|"TOP_RESOURCES"|"SUM_BY_FEATURES",
      UsageCriteria = list(
        AccountIds = list(
          "string"
        ),
        DataSources = list(
          "FLOW_LOGS"|"CLOUD_TRAIL"|"DNS_LOGS"|"S3_LOGS"|"KUBERNETES_AUDIT_LOGS"|"EC2_MALWARE_SCAN"
        ),
        Resources = list(
          "string"
        ),
        Features = list(
          "FLOW_LOGS"|"CLOUD_TRAIL"|"DNS_LOGS"|"S3_DATA_EVENTS"|"EKS_AUDIT_LOGS"|"EBS_MALWARE_PROTECTION"|"RDS_LOGIN_EVENTS"|"LAMBDA_NETWORK_LOGS"|"EKS_RUNTIME_MONITORING"
        )
      ),
      Unit = "string",
      MaxResults = 123,
      NextToken = "string"
    )
