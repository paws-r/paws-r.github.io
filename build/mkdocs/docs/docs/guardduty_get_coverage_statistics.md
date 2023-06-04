<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>guardduty_get_coverage_statistics</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves aggregated statistics for your account

### Description

Retrieves aggregated statistics for your account. If you are a GuardDuty
administrator, you can retrieve the statistics for all the resources
associated with the active member accounts in your organization who have
enabled EKS Runtime Monitoring and have the GuardDuty agent running on
their EKS nodes.

### Usage

    guardduty_get_coverage_statistics(DetectorId, FilterCriteria,
      StatisticsType)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="guardduty_get_coverage_statistics_:_DetectorId">DetectorId</code></td>
<td><p>[required] The unique ID of the GuardDuty detector associated to
the coverage statistics.</p></td>
</tr>
<tr class="even">
<td><code
id="guardduty_get_coverage_statistics_:_FilterCriteria">FilterCriteria</code></td>
<td><p>Represents the criteria used to filter the coverage
statistics</p></td>
</tr>
<tr class="odd">
<td><code
id="guardduty_get_coverage_statistics_:_StatisticsType">StatisticsType</code></td>
<td><p>[required] Represents the statistics type used to aggregate the
coverage details.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      CoverageStatistics = list(
        CountByResourceType = list(
          123
        ),
        CountByCoverageStatus = list(
          123
        )
      )
    )

### Request syntax

    svc$get_coverage_statistics(
      DetectorId = "string",
      FilterCriteria = list(
        FilterCriterion = list(
          list(
            CriterionKey = "ACCOUNT_ID"|"CLUSTER_NAME"|"RESOURCE_TYPE"|"COVERAGE_STATUS"|"ADDON_VERSION",
            FilterCondition = list(
              Equals = list(
                "string"
              ),
              NotEquals = list(
                "string"
              )
            )
          )
        )
      ),
      StatisticsType = list(
        "COUNT_BY_RESOURCE_TYPE"|"COUNT_BY_COVERAGE_STATUS"
      )
    )
