<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>macie2_list_classification_jobs</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves a subset of information about one or more classification jobs

### Description

Retrieves a subset of information about one or more classification jobs.

### Usage

    macie2_list_classification_jobs(filterCriteria, maxResults, nextToken,
      sortCriteria)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="macie2_list_classification_jobs_:_filterCriteria">filterCriteria</code></td>
<td><p>The criteria to use to filter the results.</p></td>
</tr>
<tr class="even">
<td><code
id="macie2_list_classification_jobs_:_maxResults">maxResults</code></td>
<td><p>The maximum number of items to include in each page of the
response.</p></td>
</tr>
<tr class="odd">
<td><code
id="macie2_list_classification_jobs_:_nextToken">nextToken</code></td>
<td><p>The nextToken string that specifies which page of results to
return in a paginated response.</p></td>
</tr>
<tr class="even">
<td><code
id="macie2_list_classification_jobs_:_sortCriteria">sortCriteria</code></td>
<td><p>The criteria to use to sort the results.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      items = list(
        list(
          bucketCriteria = list(
            excludes = list(
              and = list(
                list(
                  simpleCriterion = list(
                    comparator = "EQ"|"GT"|"GTE"|"LT"|"LTE"|"NE"|"CONTAINS"|"STARTS_WITH",
                    key = "ACCOUNT_ID"|"S3_BUCKET_NAME"|"S3_BUCKET_EFFECTIVE_PERMISSION"|"S3_BUCKET_SHARED_ACCESS",
                    values = list(
                      "string"
                    )
                  ),
                  tagCriterion = list(
                    comparator = "EQ"|"GT"|"GTE"|"LT"|"LTE"|"NE"|"CONTAINS"|"STARTS_WITH",
                    tagValues = list(
                      list(
                        key = "string",
                        value = "string"
                      )
                    )
                  )
                )
              )
            ),
            includes = list(
              and = list(
                list(
                  simpleCriterion = list(
                    comparator = "EQ"|"GT"|"GTE"|"LT"|"LTE"|"NE"|"CONTAINS"|"STARTS_WITH",
                    key = "ACCOUNT_ID"|"S3_BUCKET_NAME"|"S3_BUCKET_EFFECTIVE_PERMISSION"|"S3_BUCKET_SHARED_ACCESS",
                    values = list(
                      "string"
                    )
                  ),
                  tagCriterion = list(
                    comparator = "EQ"|"GT"|"GTE"|"LT"|"LTE"|"NE"|"CONTAINS"|"STARTS_WITH",
                    tagValues = list(
                      list(
                        key = "string",
                        value = "string"
                      )
                    )
                  )
                )
              )
            )
          ),
          bucketDefinitions = list(
            list(
              accountId = "string",
              buckets = list(
                "string"
              )
            )
          ),
          createdAt = as.POSIXct(
            "2015-01-01"
          ),
          jobId = "string",
          jobStatus = "RUNNING"|"PAUSED"|"CANCELLED"|"COMPLETE"|"IDLE"|"USER_PAUSED",
          jobType = "ONE_TIME"|"SCHEDULED",
          lastRunErrorStatus = list(
            code = "NONE"|"ERROR"
          ),
          name = "string",
          userPausedDetails = list(
            jobExpiresAt = as.POSIXct(
              "2015-01-01"
            ),
            jobImminentExpirationHealthEventArn = "string",
            jobPausedAt = as.POSIXct(
              "2015-01-01"
            )
          )
        )
      ),
      nextToken = "string"
    )

### Request syntax

    svc$list_classification_jobs(
      filterCriteria = list(
        excludes = list(
          list(
            comparator = "EQ"|"GT"|"GTE"|"LT"|"LTE"|"NE"|"CONTAINS"|"STARTS_WITH",
            key = "jobType"|"jobStatus"|"createdAt"|"name",
            values = list(
              "string"
            )
          )
        ),
        includes = list(
          list(
            comparator = "EQ"|"GT"|"GTE"|"LT"|"LTE"|"NE"|"CONTAINS"|"STARTS_WITH",
            key = "jobType"|"jobStatus"|"createdAt"|"name",
            values = list(
              "string"
            )
          )
        )
      ),
      maxResults = 123,
      nextToken = "string",
      sortCriteria = list(
        attributeName = "createdAt"|"jobStatus"|"name"|"jobType",
        orderBy = "ASC"|"DESC"
      )
    )
