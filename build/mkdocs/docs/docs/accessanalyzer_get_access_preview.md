<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>accessanalyzer_get_access_preview</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves information about an access preview for the specified analyzer

### Description

Retrieves information about an access preview for the specified
analyzer.

### Usage

    accessanalyzer_get_access_preview(accessPreviewId, analyzerArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="accessanalyzer_get_access_preview_:_accessPreviewId">accessPreviewId</code></td>
<td><p>[required] The unique ID for the access preview.</p></td>
</tr>
<tr class="even">
<td><code
id="accessanalyzer_get_access_preview_:_analyzerArn">analyzerArn</code></td>
<td><p>[required] The <a
href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access-analyzer-getting-started.html#permission-resources">ARN
of the analyzer</a> used to generate the access preview.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      accessPreview = list(
        id = "string",
        analyzerArn = "string",
        configurations = list(
          list(
            ebsSnapshot = list(
              userIds = list(
                "string"
              ),
              groups = list(
                "string"
              ),
              kmsKeyId = "string"
            ),
            ecrRepository = list(
              repositoryPolicy = "string"
            ),
            iamRole = list(
              trustPolicy = "string"
            ),
            efsFileSystem = list(
              fileSystemPolicy = "string"
            ),
            kmsKey = list(
              keyPolicies = list(
                "string"
              ),
              grants = list(
                list(
                  operations = list(
                    "CreateGrant"|"Decrypt"|"DescribeKey"|"Encrypt"|"GenerateDataKey"|"GenerateDataKeyPair"|"GenerateDataKeyPairWithoutPlaintext"|"GenerateDataKeyWithoutPlaintext"|"GetPublicKey"|"ReEncryptFrom"|"ReEncryptTo"|"RetireGrant"|"Sign"|"Verify"
                  ),
                  granteePrincipal = "string",
                  retiringPrincipal = "string",
                  constraints = list(
                    encryptionContextEquals = list(
                      "string"
                    ),
                    encryptionContextSubset = list(
                      "string"
                    )
                  ),
                  issuingAccount = "string"
                )
              )
            ),
            rdsDbClusterSnapshot = list(
              attributes = list(
                list(
                  accountIds = list(
                    "string"
                  )
                )
              ),
              kmsKeyId = "string"
            ),
            rdsDbSnapshot = list(
              attributes = list(
                list(
                  accountIds = list(
                    "string"
                  )
                )
              ),
              kmsKeyId = "string"
            ),
            secretsManagerSecret = list(
              kmsKeyId = "string",
              secretPolicy = "string"
            ),
            s3Bucket = list(
              bucketPolicy = "string",
              bucketAclGrants = list(
                list(
                  permission = "READ"|"WRITE"|"READ_ACP"|"WRITE_ACP"|"FULL_CONTROL",
                  grantee = list(
                    id = "string",
                    uri = "string"
                  )
                )
              ),
              bucketPublicAccessBlock = list(
                ignorePublicAcls = TRUE|FALSE,
                restrictPublicBuckets = TRUE|FALSE
              ),
              accessPoints = list(
                list(
                  accessPointPolicy = "string",
                  publicAccessBlock = list(
                    ignorePublicAcls = TRUE|FALSE,
                    restrictPublicBuckets = TRUE|FALSE
                  ),
                  networkOrigin = list(
                    vpcConfiguration = list(
                      vpcId = "string"
                    ),
                    internetConfiguration = list()
                  )
                )
              )
            ),
            snsTopic = list(
              topicPolicy = "string"
            ),
            sqsQueue = list(
              queuePolicy = "string"
            )
          )
        ),
        createdAt = as.POSIXct(
          "2015-01-01"
        ),
        status = "COMPLETED"|"CREATING"|"FAILED",
        statusReason = list(
          code = "INTERNAL_ERROR"|"INVALID_CONFIGURATION"
        )
      )
    )

### Request syntax

    svc$get_access_preview(
      accessPreviewId = "string",
      analyzerArn = "string"
    )
