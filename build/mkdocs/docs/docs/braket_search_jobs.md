<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>braket_search_jobs</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Searches for Amazon Braket jobs that match the specified filter values

### Description

Searches for Amazon Braket jobs that match the specified filter values.

### Usage

    braket_search_jobs(filters, maxResults, nextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="braket_search_jobs_:_filters">filters</code></td>
<td><p>[required] The filter values to use when searching for a
job.</p></td>
</tr>
<tr class="even">
<td><code id="braket_search_jobs_:_maxResults">maxResults</code></td>
<td><p>The maximum number of results to return in the response.</p></td>
</tr>
<tr class="odd">
<td><code id="braket_search_jobs_:_nextToken">nextToken</code></td>
<td><p>A token used for pagination of results returned in the response.
Use the token returned from the previous request to continue results
where the previous request ended.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      jobs = list(
        list(
          createdAt = as.POSIXct(
            "2015-01-01"
          ),
          device = "string",
          endedAt = as.POSIXct(
            "2015-01-01"
          ),
          jobArn = "string",
          jobName = "string",
          startedAt = as.POSIXct(
            "2015-01-01"
          ),
          status = "QUEUED"|"RUNNING"|"COMPLETED"|"FAILED"|"CANCELLING"|"CANCELLED",
          tags = list(
            "string"
          )
        )
      ),
      nextToken = "string"
    )

### Request syntax

    svc$search_jobs(
      filters = list(
        list(
          name = "string",
          operator = "LT"|"LTE"|"EQUAL"|"GT"|"GTE"|"BETWEEN"|"CONTAINS",
          values = list(
            "string"
          )
        )
      ),
      maxResults = 123,
      nextToken = "string"
    )
