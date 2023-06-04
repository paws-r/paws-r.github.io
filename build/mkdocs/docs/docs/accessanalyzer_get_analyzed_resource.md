<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>accessanalyzer_get_analyzed_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves information about a resource that was analyzed

### Description

Retrieves information about a resource that was analyzed.

### Usage

    accessanalyzer_get_analyzed_resource(analyzerArn, resourceArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="accessanalyzer_get_analyzed_resource_:_analyzerArn">analyzerArn</code></td>
<td><p>[required] The <a
href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access-analyzer-getting-started.html#permission-resources">ARN
of the analyzer</a> to retrieve information from.</p></td>
</tr>
<tr class="even">
<td><code
id="accessanalyzer_get_analyzed_resource_:_resourceArn">resourceArn</code></td>
<td><p>[required] The ARN of the resource to retrieve information
about.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      resource = list(
        resourceArn = "string",
        resourceType = "AWS::S3::Bucket"|"AWS::IAM::Role"|"AWS::SQS::Queue"|"AWS::Lambda::Function"|"AWS::Lambda::LayerVersion"|"AWS::KMS::Key"|"AWS::SecretsManager::Secret"|"AWS::EFS::FileSystem"|"AWS::EC2::Snapshot"|"AWS::ECR::Repository"|"AWS::RDS::DBSnapshot"|"AWS::RDS::DBClusterSnapshot"|"AWS::SNS::Topic",
        createdAt = as.POSIXct(
          "2015-01-01"
        ),
        analyzedAt = as.POSIXct(
          "2015-01-01"
        ),
        updatedAt = as.POSIXct(
          "2015-01-01"
        ),
        isPublic = TRUE|FALSE,
        actions = list(
          "string"
        ),
        sharedVia = list(
          "string"
        ),
        status = "ACTIVE"|"ARCHIVED"|"RESOLVED",
        resourceOwnerAccount = "string",
        error = "string"
      )
    )

### Request syntax

    svc$get_analyzed_resource(
      analyzerArn = "string",
      resourceArn = "string"
    )
