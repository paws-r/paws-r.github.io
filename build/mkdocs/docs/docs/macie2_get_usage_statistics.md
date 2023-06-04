<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>macie2_get_usage_statistics</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves (queries) quotas and aggregated usage data for one or more accounts

### Description

Retrieves (queries) quotas and aggregated usage data for one or more
accounts.

### Usage

    macie2_get_usage_statistics(filterBy, maxResults, nextToken, sortBy,
      timeRange)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="macie2_get_usage_statistics_:_filterBy">filterBy</code></td>
<td><p>An array of objects, one for each condition to use to filter the
query results. If you specify more than one condition, Amazon Macie uses
an AND operator to join the conditions.</p></td>
</tr>
<tr class="even">
<td><code
id="macie2_get_usage_statistics_:_maxResults">maxResults</code></td>
<td><p>The maximum number of items to include in each page of the
response.</p></td>
</tr>
<tr class="odd">
<td><code
id="macie2_get_usage_statistics_:_nextToken">nextToken</code></td>
<td><p>The nextToken string that specifies which page of results to
return in a paginated response.</p></td>
</tr>
<tr class="even">
<td><code id="macie2_get_usage_statistics_:_sortBy">sortBy</code></td>
<td><p>The criteria to use to sort the query results.</p></td>
</tr>
<tr class="odd">
<td><code
id="macie2_get_usage_statistics_:_timeRange">timeRange</code></td>
<td><p>The inclusive time period to query usage data for. Valid values
are: MONTH_TO_DATE, for the current calendar month to date; and,
PAST_30_DAYS, for the preceding 30 days. If you don't specify a value,
Amazon Macie provides usage data for the preceding 30 days.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      nextToken = "string",
      records = list(
        list(
          accountId = "string",
          automatedDiscoveryFreeTrialStartDate = as.POSIXct(
            "2015-01-01"
          ),
          freeTrialStartDate = as.POSIXct(
            "2015-01-01"
          ),
          usage = list(
            list(
              currency = "USD",
              estimatedCost = "string",
              serviceLimit = list(
                isServiceLimited = TRUE|FALSE,
                unit = "TERABYTES",
                value = 123
              ),
              type = "DATA_INVENTORY_EVALUATION"|"SENSITIVE_DATA_DISCOVERY"|"AUTOMATED_SENSITIVE_DATA_DISCOVERY"|"AUTOMATED_OBJECT_MONITORING"
            )
          )
        )
      ),
      timeRange = "MONTH_TO_DATE"|"PAST_30_DAYS"
    )

### Request syntax

    svc$get_usage_statistics(
      filterBy = list(
        list(
          comparator = "GT"|"GTE"|"LT"|"LTE"|"EQ"|"NE"|"CONTAINS",
          key = "accountId"|"serviceLimit"|"freeTrialStartDate"|"total",
          values = list(
            "string"
          )
        )
      ),
      maxResults = 123,
      nextToken = "string",
      sortBy = list(
        key = "accountId"|"total"|"serviceLimitValue"|"freeTrialStartDate",
        orderBy = "ASC"|"DESC"
      ),
      timeRange = "MONTH_TO_DATE"|"PAST_30_DAYS"
    )
