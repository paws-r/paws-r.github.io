<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>accessanalyzer_get_finding</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves information about the specified finding

### Description

Retrieves information about the specified finding.

### Usage

    accessanalyzer_get_finding(analyzerArn, id)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="accessanalyzer_get_finding_:_analyzerArn">analyzerArn</code></td>
<td><p>[required] The <a
href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access-analyzer-getting-started.html#permission-resources">ARN
of the analyzer</a> that generated the finding.</p></td>
</tr>
<tr class="even">
<td><code id="accessanalyzer_get_finding_:_id">id</code></td>
<td><p>[required] The ID of the finding to retrieve.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      finding = list(
        id = "string",
        principal = list(
          "string"
        ),
        action = list(
          "string"
        ),
        resource = "string",
        isPublic = TRUE|FALSE,
        resourceType = "AWS::S3::Bucket"|"AWS::IAM::Role"|"AWS::SQS::Queue"|"AWS::Lambda::Function"|"AWS::Lambda::LayerVersion"|"AWS::KMS::Key"|"AWS::SecretsManager::Secret"|"AWS::EFS::FileSystem"|"AWS::EC2::Snapshot"|"AWS::ECR::Repository"|"AWS::RDS::DBSnapshot"|"AWS::RDS::DBClusterSnapshot"|"AWS::SNS::Topic",
        condition = list(
          "string"
        ),
        createdAt = as.POSIXct(
          "2015-01-01"
        ),
        analyzedAt = as.POSIXct(
          "2015-01-01"
        ),
        updatedAt = as.POSIXct(
          "2015-01-01"
        ),
        status = "ACTIVE"|"ARCHIVED"|"RESOLVED",
        resourceOwnerAccount = "string",
        error = "string",
        sources = list(
          list(
            type = "POLICY"|"BUCKET_ACL"|"S3_ACCESS_POINT"|"S3_ACCESS_POINT_ACCOUNT",
            detail = list(
              accessPointArn = "string",
              accessPointAccount = "string"
            )
          )
        )
      )
    )

### Request syntax

    svc$get_finding(
      analyzerArn = "string",
      id = "string"
    )
