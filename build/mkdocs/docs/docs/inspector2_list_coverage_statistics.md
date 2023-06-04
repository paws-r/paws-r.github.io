<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>inspector2_list_coverage_statistics</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists Amazon Inspector coverage statistics for your environment

### Description

Lists Amazon Inspector coverage statistics for your environment.

### Usage

    inspector2_list_coverage_statistics(filterCriteria, groupBy, nextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="inspector2_list_coverage_statistics_:_filterCriteria">filterCriteria</code></td>
<td><p>An object that contains details on the filters to apply to the
coverage data for your environment.</p></td>
</tr>
<tr class="even">
<td><code
id="inspector2_list_coverage_statistics_:_groupBy">groupBy</code></td>
<td><p>The value to group the results by.</p></td>
</tr>
<tr class="odd">
<td><code
id="inspector2_list_coverage_statistics_:_nextToken">nextToken</code></td>
<td><p>A token to use for paginating results that are returned in the
response. Set the value of this parameter to null for the first request
to a list action. For subsequent calls, use the <code>NextToken</code>
value returned from the previous request to continue listing results
after the first page.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      countsByGroup = list(
        list(
          count = 123,
          groupKey = "SCAN_STATUS_CODE"|"SCAN_STATUS_REASON"|"ACCOUNT_ID"|"RESOURCE_TYPE"|"ECR_REPOSITORY_NAME"
        )
      ),
      nextToken = "string",
      totalCounts = 123
    )

### Request syntax

    svc$list_coverage_statistics(
      filterCriteria = list(
        accountId = list(
          list(
            comparison = "EQUALS"|"NOT_EQUALS",
            value = "string"
          )
        ),
        ec2InstanceTags = list(
          list(
            comparison = "EQUALS",
            key = "string",
            value = "string"
          )
        ),
        ecrImageTags = list(
          list(
            comparison = "EQUALS"|"NOT_EQUALS",
            value = "string"
          )
        ),
        ecrRepositoryName = list(
          list(
            comparison = "EQUALS"|"NOT_EQUALS",
            value = "string"
          )
        ),
        lambdaFunctionName = list(
          list(
            comparison = "EQUALS"|"NOT_EQUALS",
            value = "string"
          )
        ),
        lambdaFunctionRuntime = list(
          list(
            comparison = "EQUALS"|"NOT_EQUALS",
            value = "string"
          )
        ),
        lambdaFunctionTags = list(
          list(
            comparison = "EQUALS",
            key = "string",
            value = "string"
          )
        ),
        resourceId = list(
          list(
            comparison = "EQUALS"|"NOT_EQUALS",
            value = "string"
          )
        ),
        resourceType = list(
          list(
            comparison = "EQUALS"|"NOT_EQUALS",
            value = "string"
          )
        ),
        scanStatusCode = list(
          list(
            comparison = "EQUALS"|"NOT_EQUALS",
            value = "string"
          )
        ),
        scanStatusReason = list(
          list(
            comparison = "EQUALS"|"NOT_EQUALS",
            value = "string"
          )
        ),
        scanType = list(
          list(
            comparison = "EQUALS"|"NOT_EQUALS",
            value = "string"
          )
        )
      ),
      groupBy = "SCAN_STATUS_CODE"|"SCAN_STATUS_REASON"|"ACCOUNT_ID"|"RESOURCE_TYPE"|"ECR_REPOSITORY_NAME",
      nextToken = "string"
    )
