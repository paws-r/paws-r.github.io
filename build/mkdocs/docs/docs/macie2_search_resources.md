<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>macie2_search_resources</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves (queries) statistical data and other information about Amazon Web Services resources that Amazon Macie monitors and analyzes

### Description

Retrieves (queries) statistical data and other information about Amazon
Web Services resources that Amazon Macie monitors and analyzes.

### Usage

    macie2_search_resources(bucketCriteria, maxResults, nextToken,
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
id="macie2_search_resources_:_bucketCriteria">bucketCriteria</code></td>
<td><p>The filter conditions that determine which S3 buckets to include
or exclude from the query results.</p></td>
</tr>
<tr class="even">
<td><code
id="macie2_search_resources_:_maxResults">maxResults</code></td>
<td><p>The maximum number of items to include in each page of the
response. The default value is 50.</p></td>
</tr>
<tr class="odd">
<td><code id="macie2_search_resources_:_nextToken">nextToken</code></td>
<td><p>The nextToken string that specifies which page of results to
return in a paginated response.</p></td>
</tr>
<tr class="even">
<td><code
id="macie2_search_resources_:_sortCriteria">sortCriteria</code></td>
<td><p>The criteria to use to sort the results.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      matchingResources = list(
        list(
          matchingBucket = list(
            accountId = "string",
            bucketName = "string",
            classifiableObjectCount = 123,
            classifiableSizeInBytes = 123,
            errorCode = "ACCESS_DENIED",
            errorMessage = "string",
            jobDetails = list(
              isDefinedInJob = "TRUE"|"FALSE"|"UNKNOWN",
              isMonitoredByJob = "TRUE"|"FALSE"|"UNKNOWN",
              lastJobId = "string",
              lastJobRunTime = as.POSIXct(
                "2015-01-01"
              )
            ),
            lastAutomatedDiscoveryTime = as.POSIXct(
              "2015-01-01"
            ),
            objectCount = 123,
            objectCountByEncryptionType = list(
              customerManaged = 123,
              kmsManaged = 123,
              s3Managed = 123,
              unencrypted = 123,
              unknown = 123
            ),
            sensitivityScore = 123,
            sizeInBytes = 123,
            sizeInBytesCompressed = 123,
            unclassifiableObjectCount = list(
              fileType = 123,
              storageClass = 123,
              total = 123
            ),
            unclassifiableObjectSizeInBytes = list(
              fileType = 123,
              storageClass = 123,
              total = 123
            )
          )
        )
      ),
      nextToken = "string"
    )

### Request syntax

    svc$search_resources(
      bucketCriteria = list(
        excludes = list(
          and = list(
            list(
              simpleCriterion = list(
                comparator = "EQ"|"NE",
                key = "ACCOUNT_ID"|"S3_BUCKET_NAME"|"S3_BUCKET_EFFECTIVE_PERMISSION"|"S3_BUCKET_SHARED_ACCESS",
                values = list(
                  "string"
                )
              ),
              tagCriterion = list(
                comparator = "EQ"|"NE",
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
                comparator = "EQ"|"NE",
                key = "ACCOUNT_ID"|"S3_BUCKET_NAME"|"S3_BUCKET_EFFECTIVE_PERMISSION"|"S3_BUCKET_SHARED_ACCESS",
                values = list(
                  "string"
                )
              ),
              tagCriterion = list(
                comparator = "EQ"|"NE",
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
      maxResults = 123,
      nextToken = "string",
      sortCriteria = list(
        attributeName = "ACCOUNT_ID"|"RESOURCE_NAME"|"S3_CLASSIFIABLE_OBJECT_COUNT"|"S3_CLASSIFIABLE_SIZE_IN_BYTES",
        orderBy = "ASC"|"DESC"
      )
    )
