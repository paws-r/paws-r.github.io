<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>servicequotas_get_aws_default_service_quota</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves the default value for the specified quota

### Description

Retrieves the default value for the specified quota. The default value
does not reflect any quota increases.

### Usage

    servicequotas_get_aws_default_service_quota(ServiceCode, QuotaCode)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="servicequotas_get_aws_default_service_quota_:_ServiceCode">ServiceCode</code></td>
<td><p>[required] The service identifier.</p></td>
</tr>
<tr class="even">
<td><code
id="servicequotas_get_aws_default_service_quota_:_QuotaCode">QuotaCode</code></td>
<td><p>[required] The quota identifier.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Quota = list(
        ServiceCode = "string",
        ServiceName = "string",
        QuotaArn = "string",
        QuotaCode = "string",
        QuotaName = "string",
        Value = 123.0,
        Unit = "string",
        Adjustable = TRUE|FALSE,
        GlobalQuota = TRUE|FALSE,
        UsageMetric = list(
          MetricNamespace = "string",
          MetricName = "string",
          MetricDimensions = list(
            "string"
          ),
          MetricStatisticRecommendation = "string"
        ),
        Period = list(
          PeriodValue = 123,
          PeriodUnit = "MICROSECOND"|"MILLISECOND"|"SECOND"|"MINUTE"|"HOUR"|"DAY"|"WEEK"
        ),
        ErrorReason = list(
          ErrorCode = "DEPENDENCY_ACCESS_DENIED_ERROR"|"DEPENDENCY_THROTTLING_ERROR"|"DEPENDENCY_SERVICE_ERROR"|"SERVICE_QUOTA_NOT_AVAILABLE_ERROR",
          ErrorMessage = "string"
        )
      )
    )

### Request syntax

    svc$get_aws_default_service_quota(
      ServiceCode = "string",
      QuotaCode = "string"
    )
