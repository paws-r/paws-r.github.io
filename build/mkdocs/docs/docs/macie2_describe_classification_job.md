<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>macie2_describe_classification_job</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves the status and settings for a classification job

### Description

Retrieves the status and settings for a classification job.

### Usage

    macie2_describe_classification_job(jobId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="macie2_describe_classification_job_:_jobId">jobId</code></td>
<td><p>[required] The unique identifier for the classification
job.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      allowListIds = list(
        "string"
      ),
      clientToken = "string",
      createdAt = as.POSIXct(
        "2015-01-01"
      ),
      customDataIdentifierIds = list(
        "string"
      ),
      description = "string",
      initialRun = TRUE|FALSE,
      jobArn = "string",
      jobId = "string",
      jobStatus = "RUNNING"|"PAUSED"|"CANCELLED"|"COMPLETE"|"IDLE"|"USER_PAUSED",
      jobType = "ONE_TIME"|"SCHEDULED",
      lastRunErrorStatus = list(
        code = "NONE"|"ERROR"
      ),
      lastRunTime = as.POSIXct(
        "2015-01-01"
      ),
      managedDataIdentifierIds = list(
        "string"
      ),
      managedDataIdentifierSelector = "ALL"|"EXCLUDE"|"INCLUDE"|"NONE",
      name = "string",
      s3JobDefinition = list(
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
        scoping = list(
          excludes = list(
            and = list(
              list(
                simpleScopeTerm = list(
                  comparator = "EQ"|"GT"|"GTE"|"LT"|"LTE"|"NE"|"CONTAINS"|"STARTS_WITH",
                  key = "OBJECT_EXTENSION"|"OBJECT_LAST_MODIFIED_DATE"|"OBJECT_SIZE"|"OBJECT_KEY",
                  values = list(
                    "string"
                  )
                ),
                tagScopeTerm = list(
                  comparator = "EQ"|"GT"|"GTE"|"LT"|"LTE"|"NE"|"CONTAINS"|"STARTS_WITH",
                  key = "string",
                  tagValues = list(
                    list(
                      key = "string",
                      value = "string"
                    )
                  ),
                  target = "S3_OBJECT"
                )
              )
            )
          ),
          includes = list(
            and = list(
              list(
                simpleScopeTerm = list(
                  comparator = "EQ"|"GT"|"GTE"|"LT"|"LTE"|"NE"|"CONTAINS"|"STARTS_WITH",
                  key = "OBJECT_EXTENSION"|"OBJECT_LAST_MODIFIED_DATE"|"OBJECT_SIZE"|"OBJECT_KEY",
                  values = list(
                    "string"
                  )
                ),
                tagScopeTerm = list(
                  comparator = "EQ"|"GT"|"GTE"|"LT"|"LTE"|"NE"|"CONTAINS"|"STARTS_WITH",
                  key = "string",
                  tagValues = list(
                    list(
                      key = "string",
                      value = "string"
                    )
                  ),
                  target = "S3_OBJECT"
                )
              )
            )
          )
        )
      ),
      samplingPercentage = 123,
      scheduleFrequency = list(
        dailySchedule = list(),
        monthlySchedule = list(
          dayOfMonth = 123
        ),
        weeklySchedule = list(
          dayOfWeek = "SUNDAY"|"MONDAY"|"TUESDAY"|"WEDNESDAY"|"THURSDAY"|"FRIDAY"|"SATURDAY"
        )
      ),
      statistics = list(
        approximateNumberOfObjectsToProcess = 123.0,
        numberOfRuns = 123.0
      ),
      tags = list(
        "string"
      ),
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

### Request syntax

    svc$describe_classification_job(
      jobId = "string"
    )
