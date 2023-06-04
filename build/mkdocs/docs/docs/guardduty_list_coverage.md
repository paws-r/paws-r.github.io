<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>guardduty_list_coverage</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists coverage details for your GuardDuty account

### Description

Lists coverage details for your GuardDuty account. If you're a GuardDuty
administrator, you can retrieve all resources associated with the active
member accounts in your organization.

Make sure the accounts have EKS Runtime Monitoring enabled and GuardDuty
agent running on their EKS nodes.

### Usage

    guardduty_list_coverage(DetectorId, NextToken, MaxResults,
      FilterCriteria, SortCriteria)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="guardduty_list_coverage_:_DetectorId">DetectorId</code></td>
<td><p>[required] The unique ID of the detector whose coverage details
you want to retrieve.</p></td>
</tr>
<tr class="even">
<td><code id="guardduty_list_coverage_:_NextToken">NextToken</code></td>
<td><p>A token to use for paginating results that are returned in the
response. Set the value of this parameter to null for the first request
to a list action. For subsequent calls, use the NextToken value returned
from the previous request to continue listing results after the first
page.</p></td>
</tr>
<tr class="odd">
<td><code
id="guardduty_list_coverage_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return in the response.</p></td>
</tr>
<tr class="even">
<td><code
id="guardduty_list_coverage_:_FilterCriteria">FilterCriteria</code></td>
<td><p>Represents the criteria used to filter the coverage
details.</p></td>
</tr>
<tr class="odd">
<td><code
id="guardduty_list_coverage_:_SortCriteria">SortCriteria</code></td>
<td><p>Represents the criteria used to sort the coverage
details.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Resources = list(
        list(
          ResourceId = "string",
          DetectorId = "string",
          AccountId = "string",
          ResourceDetails = list(
            EksClusterDetails = list(
              ClusterName = "string",
              CoveredNodes = 123,
              CompatibleNodes = 123,
              AddonDetails = list(
                AddonVersion = "string",
                AddonStatus = "string"
              )
            ),
            ResourceType = "EKS"
          ),
          CoverageStatus = "HEALTHY"|"UNHEALTHY",
          Issue = "string",
          UpdatedAt = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_coverage(
      DetectorId = "string",
      NextToken = "string",
      MaxResults = 123,
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
      SortCriteria = list(
        AttributeName = "ACCOUNT_ID"|"CLUSTER_NAME"|"COVERAGE_STATUS"|"ISSUE"|"ADDON_VERSION"|"UPDATED_AT",
        OrderBy = "ASC"|"DESC"
      )
    )
