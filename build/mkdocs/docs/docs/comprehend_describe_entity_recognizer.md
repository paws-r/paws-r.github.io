<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>comprehend_describe_entity_recognizer</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Provides details about an entity recognizer including status, S3 buckets containing training data, recognizer metadata, metrics, and so on

### Description

Provides details about an entity recognizer including status, S3 buckets
containing training data, recognizer metadata, metrics, and so on.

### Usage

    comprehend_describe_entity_recognizer(EntityRecognizerArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="comprehend_describe_entity_recognizer_:_EntityRecognizerArn">EntityRecognizerArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) that identifies the
entity recognizer.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      EntityRecognizerProperties = list(
        EntityRecognizerArn = "string",
        LanguageCode = "en"|"es"|"fr"|"de"|"it"|"pt"|"ar"|"hi"|"ja"|"ko"|"zh"|"zh-TW",
        Status = "SUBMITTED"|"TRAINING"|"DELETING"|"STOP_REQUESTED"|"STOPPED"|"IN_ERROR"|"TRAINED"|"TRAINED_WITH_WARNING",
        Message = "string",
        SubmitTime = as.POSIXct(
          "2015-01-01"
        ),
        EndTime = as.POSIXct(
          "2015-01-01"
        ),
        TrainingStartTime = as.POSIXct(
          "2015-01-01"
        ),
        TrainingEndTime = as.POSIXct(
          "2015-01-01"
        ),
        InputDataConfig = list(
          DataFormat = "COMPREHEND_CSV"|"AUGMENTED_MANIFEST",
          EntityTypes = list(
            list(
              Type = "string"
            )
          ),
          Documents = list(
            S3Uri = "string",
            TestS3Uri = "string",
            InputFormat = "ONE_DOC_PER_FILE"|"ONE_DOC_PER_LINE"
          ),
          Annotations = list(
            S3Uri = "string",
            TestS3Uri = "string"
          ),
          EntityList = list(
            S3Uri = "string"
          ),
          AugmentedManifests = list(
            list(
              S3Uri = "string",
              Split = "TRAIN"|"TEST",
              AttributeNames = list(
                "string"
              ),
              AnnotationDataS3Uri = "string",
              SourceDocumentsS3Uri = "string",
              DocumentType = "PLAIN_TEXT_DOCUMENT"|"SEMI_STRUCTURED_DOCUMENT"
            )
          )
        ),
        RecognizerMetadata = list(
          NumberOfTrainedDocuments = 123,
          NumberOfTestDocuments = 123,
          EvaluationMetrics = list(
            Precision = 123.0,
            Recall = 123.0,
            F1Score = 123.0
          ),
          EntityTypes = list(
            list(
              Type = "string",
              EvaluationMetrics = list(
                Precision = 123.0,
                Recall = 123.0,
                F1Score = 123.0
              ),
              NumberOfTrainMentions = 123
            )
          )
        ),
        DataAccessRoleArn = "string",
        VolumeKmsKeyId = "string",
        VpcConfig = list(
          SecurityGroupIds = list(
            "string"
          ),
          Subnets = list(
            "string"
          )
        ),
        ModelKmsKeyId = "string",
        VersionName = "string",
        SourceModelArn = "string",
        FlywheelArn = "string",
        OutputDataConfig = list(
          FlywheelStatsS3Prefix = "string"
        )
      )
    )

### Request syntax

    svc$describe_entity_recognizer(
      EntityRecognizerArn = "string"
    )
