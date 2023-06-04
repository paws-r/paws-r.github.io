<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>rekognition_describe_project_versions</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists and describes the versions of a model in an Amazon Rekognition Custom Labels project

### Description

Lists and describes the versions of a model in an Amazon Rekognition
Custom Labels project. You can specify up to 10 model versions in
`ProjectVersionArns`. If you don't specify a value, descriptions for all
model versions in the project are returned.

This operation requires permissions to perform the
`rekognition:DescribeProjectVersions` action.

### Usage

    rekognition_describe_project_versions(ProjectArn, VersionNames,
      NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="rekognition_describe_project_versions_:_ProjectArn">ProjectArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the project that
contains the models you want to describe.</p></td>
</tr>
<tr class="even">
<td><code
id="rekognition_describe_project_versions_:_VersionNames">VersionNames</code></td>
<td><p>A list of model version names that you want to describe. You can
add up to 10 model version names to the list. If you don't specify a
value, all model descriptions are returned. A version name is part of a
model (ProjectVersion) ARN. For example, <code
style="white-space: pre;">⁠my-model.2020-01-21T09.10.15⁠</code> is the
version name in the following ARN. <code
style="white-space: pre;">⁠arn:aws:rekognition:us-east-1:123456789012:project/getting-started/version/my-model.2020-01-21T09.10.15/1234567890123⁠</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="rekognition_describe_project_versions_:_NextToken">NextToken</code></td>
<td><p>If the previous response was incomplete (because there is more
results to retrieve), Amazon Rekognition Custom Labels returns a
pagination token in the response. You can use this pagination token to
retrieve the next set of results.</p></td>
</tr>
<tr class="even">
<td><code
id="rekognition_describe_project_versions_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return per paginated call. The
largest value you can specify is 100. If you specify a value greater
than 100, a ValidationException error occurs. The default value is
100.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ProjectVersionDescriptions = list(
        list(
          ProjectVersionArn = "string",
          CreationTimestamp = as.POSIXct(
            "2015-01-01"
          ),
          MinInferenceUnits = 123,
          Status = "TRAINING_IN_PROGRESS"|"TRAINING_COMPLETED"|"TRAINING_FAILED"|"STARTING"|"RUNNING"|"FAILED"|"STOPPING"|"STOPPED"|"DELETING"|"COPYING_IN_PROGRESS"|"COPYING_COMPLETED"|"COPYING_FAILED",
          StatusMessage = "string",
          BillableTrainingTimeInSeconds = 123,
          TrainingEndTimestamp = as.POSIXct(
            "2015-01-01"
          ),
          OutputConfig = list(
            S3Bucket = "string",
            S3KeyPrefix = "string"
          ),
          TrainingDataResult = list(
            Input = list(
              Assets = list(
                list(
                  GroundTruthManifest = list(
                    S3Object = list(
                      Bucket = "string",
                      Name = "string",
                      Version = "string"
                    )
                  )
                )
              )
            ),
            Output = list(
              Assets = list(
                list(
                  GroundTruthManifest = list(
                    S3Object = list(
                      Bucket = "string",
                      Name = "string",
                      Version = "string"
                    )
                  )
                )
              )
            ),
            Validation = list(
              Assets = list(
                list(
                  GroundTruthManifest = list(
                    S3Object = list(
                      Bucket = "string",
                      Name = "string",
                      Version = "string"
                    )
                  )
                )
              )
            )
          ),
          TestingDataResult = list(
            Input = list(
              Assets = list(
                list(
                  GroundTruthManifest = list(
                    S3Object = list(
                      Bucket = "string",
                      Name = "string",
                      Version = "string"
                    )
                  )
                )
              ),
              AutoCreate = TRUE|FALSE
            ),
            Output = list(
              Assets = list(
                list(
                  GroundTruthManifest = list(
                    S3Object = list(
                      Bucket = "string",
                      Name = "string",
                      Version = "string"
                    )
                  )
                )
              ),
              AutoCreate = TRUE|FALSE
            ),
            Validation = list(
              Assets = list(
                list(
                  GroundTruthManifest = list(
                    S3Object = list(
                      Bucket = "string",
                      Name = "string",
                      Version = "string"
                    )
                  )
                )
              )
            )
          ),
          EvaluationResult = list(
            F1Score = 123.0,
            Summary = list(
              S3Object = list(
                Bucket = "string",
                Name = "string",
                Version = "string"
              )
            )
          ),
          ManifestSummary = list(
            S3Object = list(
              Bucket = "string",
              Name = "string",
              Version = "string"
            )
          ),
          KmsKeyId = "string",
          MaxInferenceUnits = 123,
          SourceProjectVersionArn = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_project_versions(
      ProjectArn = "string",
      VersionNames = list(
        "string"
      ),
      NextToken = "string",
      MaxResults = 123
    )
