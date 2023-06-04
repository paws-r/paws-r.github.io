<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>accessanalyzer_list_analyzed_resources</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves a list of resources of the specified type that have been analyzed by the specified analyzer

### Description

Retrieves a list of resources of the specified type that have been
analyzed by the specified analyzer..

### Usage

    accessanalyzer_list_analyzed_resources(analyzerArn, resourceType,
      nextToken, maxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="accessanalyzer_list_analyzed_resources_:_analyzerArn">analyzerArn</code></td>
<td><p>[required] The <a
href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access-analyzer-getting-started.html#permission-resources">ARN
of the analyzer</a> to retrieve a list of analyzed resources
from.</p></td>
</tr>
<tr class="even">
<td><code
id="accessanalyzer_list_analyzed_resources_:_resourceType">resourceType</code></td>
<td><p>The type of resource.</p></td>
</tr>
<tr class="odd">
<td><code
id="accessanalyzer_list_analyzed_resources_:_nextToken">nextToken</code></td>
<td><p>A token used for pagination of results returned.</p></td>
</tr>
<tr class="even">
<td><code
id="accessanalyzer_list_analyzed_resources_:_maxResults">maxResults</code></td>
<td><p>The maximum number of results to return in the response.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      analyzedResources = list(
        list(
          resourceArn = "string",
          resourceOwnerAccount = "string",
          resourceType = "AWS::S3::Bucket"|"AWS::IAM::Role"|"AWS::SQS::Queue"|"AWS::Lambda::Function"|"AWS::Lambda::LayerVersion"|"AWS::KMS::Key"|"AWS::SecretsManager::Secret"|"AWS::EFS::FileSystem"|"AWS::EC2::Snapshot"|"AWS::ECR::Repository"|"AWS::RDS::DBSnapshot"|"AWS::RDS::DBClusterSnapshot"|"AWS::SNS::Topic"
        )
      ),
      nextToken = "string"
    )

### Request syntax

    svc$list_analyzed_resources(
      analyzerArn = "string",
      resourceType = "AWS::S3::Bucket"|"AWS::IAM::Role"|"AWS::SQS::Queue"|"AWS::Lambda::Function"|"AWS::Lambda::LayerVersion"|"AWS::KMS::Key"|"AWS::SecretsManager::Secret"|"AWS::EFS::FileSystem"|"AWS::EC2::Snapshot"|"AWS::ECR::Repository"|"AWS::RDS::DBSnapshot"|"AWS::RDS::DBClusterSnapshot"|"AWS::SNS::Topic",
      nextToken = "string",
      maxResults = 123
    )
