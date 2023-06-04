<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>macie2_get_findings</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves the details of one or more findings

### Description

Retrieves the details of one or more findings.

### Usage

    macie2_get_findings(findingIds, sortCriteria)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="macie2_get_findings_:_findingIds">findingIds</code></td>
<td><p>[required] An array of strings that lists the unique identifiers
for the findings to retrieve. You can specify as many as 50 unique
identifiers in this array.</p></td>
</tr>
<tr class="even">
<td><code
id="macie2_get_findings_:_sortCriteria">sortCriteria</code></td>
<td><p>The criteria for sorting the results of the request.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      findings = list(
        list(
          accountId = "string",
          archived = TRUE|FALSE,
          category = "CLASSIFICATION"|"POLICY",
          classificationDetails = list(
            detailedResultsLocation = "string",
            jobArn = "string",
            jobId = "string",
            originType = "SENSITIVE_DATA_DISCOVERY_JOB"|"AUTOMATED_SENSITIVE_DATA_DISCOVERY",
            result = list(
              additionalOccurrences = TRUE|FALSE,
              customDataIdentifiers = list(
                detections = list(
                  list(
                    arn = "string",
                    count = 123,
                    name = "string",
                    occurrences = list(
                      cells = list(
                        list(
                          cellReference = "string",
                          column = 123,
                          columnName = "string",
                          row = 123
                        )
                      ),
                      lineRanges = list(
                        list(
                          end = 123,
                          start = 123,
                          startColumn = 123
                        )
                      ),
                      offsetRanges = list(
                        list(
                          end = 123,
                          start = 123,
                          startColumn = 123
                        )
                      ),
                      pages = list(
                        list(
                          lineRange = list(
                            end = 123,
                            start = 123,
                            startColumn = 123
                          ),
                          offsetRange = list(
                            end = 123,
                            start = 123,
                            startColumn = 123
                          ),
                          pageNumber = 123
                        )
                      ),
                      records = list(
                        list(
                          jsonPath = "string",
                          recordIndex = 123
                        )
                      )
                    )
                  )
                ),
                totalCount = 123
              ),
              mimeType = "string",
              sensitiveData = list(
                list(
                  category = "FINANCIAL_INFORMATION"|"PERSONAL_INFORMATION"|"CREDENTIALS"|"CUSTOM_IDENTIFIER",
                  detections = list(
                    list(
                      count = 123,
                      occurrences = list(
                        cells = list(
                          list(
                            cellReference = "string",
                            column = 123,
                            columnName = "string",
                            row = 123
                          )
                        ),
                        lineRanges = list(
                          list(
                            end = 123,
                            start = 123,
                            startColumn = 123
                          )
                        ),
                        offsetRanges = list(
                          list(
                            end = 123,
                            start = 123,
                            startColumn = 123
                          )
                        ),
                        pages = list(
                          list(
                            lineRange = list(
                              end = 123,
                              start = 123,
                              startColumn = 123
                            ),
                            offsetRange = list(
                              end = 123,
                              start = 123,
                              startColumn = 123
                            ),
                            pageNumber = 123
                          )
                        ),
                        records = list(
                          list(
                            jsonPath = "string",
                            recordIndex = 123
                          )
                        )
                      ),
                      type = "string"
                    )
                  ),
                  totalCount = 123
                )
              ),
              sizeClassified = 123,
              status = list(
                code = "string",
                reason = "string"
              )
            )
          ),
          count = 123,
          createdAt = as.POSIXct(
            "2015-01-01"
          ),
          description = "string",
          id = "string",
          partition = "string",
          policyDetails = list(
            action = list(
              actionType = "AWS_API_CALL",
              apiCallDetails = list(
                api = "string",
                apiServiceName = "string",
                firstSeen = as.POSIXct(
                  "2015-01-01"
                ),
                lastSeen = as.POSIXct(
                  "2015-01-01"
                )
              )
            ),
            actor = list(
              domainDetails = list(
                domainName = "string"
              ),
              ipAddressDetails = list(
                ipAddressV4 = "string",
                ipCity = list(
                  name = "string"
                ),
                ipCountry = list(
                  code = "string",
                  name = "string"
                ),
                ipGeoLocation = list(
                  lat = 123.0,
                  lon = 123.0
                ),
                ipOwner = list(
                  asn = "string",
                  asnOrg = "string",
                  isp = "string",
                  org = "string"
                )
              ),
              userIdentity = list(
                assumedRole = list(
                  accessKeyId = "string",
                  accountId = "string",
                  arn = "string",
                  principalId = "string",
                  sessionContext = list(
                    attributes = list(
                      creationDate = as.POSIXct(
                        "2015-01-01"
                      ),
                      mfaAuthenticated = TRUE|FALSE
                    ),
                    sessionIssuer = list(
                      accountId = "string",
                      arn = "string",
                      principalId = "string",
                      type = "string",
                      userName = "string"
                    )
                  )
                ),
                awsAccount = list(
                  accountId = "string",
                  principalId = "string"
                ),
                awsService = list(
                  invokedBy = "string"
                ),
                federatedUser = list(
                  accessKeyId = "string",
                  accountId = "string",
                  arn = "string",
                  principalId = "string",
                  sessionContext = list(
                    attributes = list(
                      creationDate = as.POSIXct(
                        "2015-01-01"
                      ),
                      mfaAuthenticated = TRUE|FALSE
                    ),
                    sessionIssuer = list(
                      accountId = "string",
                      arn = "string",
                      principalId = "string",
                      type = "string",
                      userName = "string"
                    )
                  )
                ),
                iamUser = list(
                  accountId = "string",
                  arn = "string",
                  principalId = "string",
                  userName = "string"
                ),
                root = list(
                  accountId = "string",
                  arn = "string",
                  principalId = "string"
                ),
                type = "AssumedRole"|"IAMUser"|"FederatedUser"|"Root"|"AWSAccount"|"AWSService"
              )
            )
          ),
          region = "string",
          resourcesAffected = list(
            s3Bucket = list(
              allowsUnencryptedObjectUploads = "TRUE"|"FALSE"|"UNKNOWN",
              arn = "string",
              createdAt = as.POSIXct(
                "2015-01-01"
              ),
              defaultServerSideEncryption = list(
                encryptionType = "NONE"|"AES256"|"aws:kms"|"UNKNOWN",
                kmsMasterKeyId = "string"
              ),
              name = "string",
              owner = list(
                displayName = "string",
                id = "string"
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
              tags = list(
                list(
                  key = "string",
                  value = "string"
                )
              )
            ),
            s3Object = list(
              bucketArn = "string",
              eTag = "string",
              extension = "string",
              key = "string",
              lastModified = as.POSIXct(
                "2015-01-01"
              ),
              path = "string",
              publicAccess = TRUE|FALSE,
              serverSideEncryption = list(
                encryptionType = "NONE"|"AES256"|"aws:kms"|"UNKNOWN",
                kmsMasterKeyId = "string"
              ),
              size = 123,
              storageClass = "STANDARD"|"REDUCED_REDUNDANCY"|"STANDARD_IA"|"INTELLIGENT_TIERING"|"DEEP_ARCHIVE"|"ONEZONE_IA"|"GLACIER"|"GLACIER_IR"|"OUTPOSTS",
              tags = list(
                list(
                  key = "string",
                  value = "string"
                )
              ),
              versionId = "string"
            )
          ),
          sample = TRUE|FALSE,
          schemaVersion = "string",
          severity = list(
            description = "Low"|"Medium"|"High",
            score = 123
          ),
          title = "string",
          type = "SensitiveData:S3Object/Multiple"|"SensitiveData:S3Object/Financial"|"SensitiveData:S3Object/Personal"|"SensitiveData:S3Object/Credentials"|"SensitiveData:S3Object/CustomIdentifier"|"Policy:IAMUser/S3BucketPublic"|"Policy:IAMUser/S3BucketSharedExternally"|"Policy:IAMUser/S3BucketReplicatedExternally"|"Policy:IAMUser/S3BucketEncryptionDisabled"|"Policy:IAMUser/S3BlockPublicAccessDisabled"|"Policy:IAMUser/S3BucketSharedWithCloudFront",
          updatedAt = as.POSIXct(
            "2015-01-01"
          )
        )
      )
    )

### Request syntax

    svc$get_findings(
      findingIds = list(
        "string"
      ),
      sortCriteria = list(
        attributeName = "string",
        orderBy = "ASC"|"DESC"
      )
    )
