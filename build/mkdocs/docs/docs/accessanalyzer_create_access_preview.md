<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>accessanalyzer_create_access_preview</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates an access preview that allows you to preview IAM Access Analyzer findings for your resource before deploying resource permissions

### Description

Creates an access preview that allows you to preview IAM Access Analyzer
findings for your resource before deploying resource permissions.

### Usage

    accessanalyzer_create_access_preview(analyzerArn, configurations,
      clientToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="accessanalyzer_create_access_preview_:_analyzerArn">analyzerArn</code></td>
<td><p>[required] The <a
href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access-analyzer-getting-started.html#permission-resources">ARN
of the account analyzer</a> used to generate the access preview. You can
only create an access preview for analyzers with an <code>Account</code>
type and <code>Active</code> status.</p></td>
</tr>
<tr class="even">
<td><code
id="accessanalyzer_create_access_preview_:_configurations">configurations</code></td>
<td><p>[required] Access control configuration for your resource that is
used to generate the access preview. The access preview includes
findings for external access allowed to the resource with the proposed
access control configuration. The configuration must contain exactly one
element.</p></td>
</tr>
<tr class="odd">
<td><code
id="accessanalyzer_create_access_preview_:_clientToken">clientToken</code></td>
<td><p>A client token.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      id = "string"
    )

### Request syntax

    svc$create_access_preview(
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
      clientToken = "string"
    )
