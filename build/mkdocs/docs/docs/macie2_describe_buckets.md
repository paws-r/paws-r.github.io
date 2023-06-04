<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>macie2_describe_buckets</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves (queries) statistical data and other information about one or more S3 buckets that Amazon Macie monitors and analyzes for an account

### Description

Retrieves (queries) statistical data and other information about one or
more S3 buckets that Amazon Macie monitors and analyzes for an account.

### Usage

    macie2_describe_buckets(criteria, maxResults, nextToken, sortCriteria)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="macie2_describe_buckets_:_criteria">criteria</code></td>
<td><p>The criteria to use to filter the query results.</p></td>
</tr>
<tr class="even">
<td><code
id="macie2_describe_buckets_:_maxResults">maxResults</code></td>
<td><p>The maximum number of items to include in each page of the
response. The default value is 50.</p></td>
</tr>
<tr class="odd">
<td><code id="macie2_describe_buckets_:_nextToken">nextToken</code></td>
<td><p>The nextToken string that specifies which page of results to
return in a paginated response.</p></td>
</tr>
<tr class="even">
<td><code
id="macie2_describe_buckets_:_sortCriteria">sortCriteria</code></td>
<td><p>The criteria to use to sort the query results.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      buckets = list(
        list(
          accountId = "string",
          allowsUnencryptedObjectUploads = "TRUE"|"FALSE"|"UNKNOWN",
          bucketArn = "string",
          bucketCreatedAt = as.POSIXct(
            "2015-01-01"
          ),
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
          lastUpdated = as.POSIXct(
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
          publicAccess = list(
            effectivePermission = "PUBLIC"|"NOT_PUBLIC"|"UNKNOWN",
            permissionConfiguration = list(
              accountLevelPermissions = list(
                blockPublicAccess = list(
                  blockPublicAcls = TRUE|FALSE,
                  blockPublicPolicy = TRUE|FALSE,
                  ignorePublicAcls = TRUE|FALSE,
                  restrictPublicBuckets = TRUE|FALSE
                )
              ),
              bucketLevelPermissions = list(
                accessControlList = list(
                  allowsPublicReadAccess = TRUE|FALSE,
                  allowsPublicWriteAccess = TRUE|FALSE
                ),
                blockPublicAccess = list(
                  blockPublicAcls = TRUE|FALSE,
                  blockPublicPolicy = TRUE|FALSE,
                  ignorePublicAcls = TRUE|FALSE,
                  restrictPublicBuckets = TRUE|FALSE
                ),
                bucketPolicy = list(
                  allowsPublicReadAccess = TRUE|FALSE,
                  allowsPublicWriteAccess = TRUE|FALSE
                )
              )
            )
          ),
          region = "string",
          replicationDetails = list(
            replicated = TRUE|FALSE,
            replicatedExternally = TRUE|FALSE,
            replicationAccounts = list(
              "string"
            )
          ),
          sensitivityScore = 123,
          serverSideEncryption = list(
            kmsMasterKeyId = "string",
            type = "NONE"|"AES256"|"aws:kms"
          ),
          sharedAccess = "EXTERNAL"|"INTERNAL"|"NOT_SHARED"|"UNKNOWN",
          sizeInBytes = 123,
          sizeInBytesCompressed = 123,
          tags = list(
            list(
              key = "string",
              value = "string"
            )
          ),
          unclassifiableObjectCount = list(
            fileType = 123,
            storageClass = 123,
            total = 123
          ),
          unclassifiableObjectSizeInBytes = list(
            fileType = 123,
            storageClass = 123,
            total = 123
          ),
          versioning = TRUE|FALSE
        )
      ),
      nextToken = "string"
    )

### Request syntax

    svc$describe_buckets(
      criteria = list(
        list(
          eq = list(
            "string"
          ),
          gt = 123,
          gte = 123,
          lt = 123,
          lte = 123,
          neq = list(
            "string"
          ),
          prefix = "string"
        )
      ),
      maxResults = 123,
      nextToken = "string",
      sortCriteria = list(
        attributeName = "string",
        orderBy = "ASC"|"DESC"
      )
    )
