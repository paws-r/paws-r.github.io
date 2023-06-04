<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>comprehend_list_entity_recognizers</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets a list of the properties of all entity recognizers that you created, including recognizers currently in training

### Description

Gets a list of the properties of all entity recognizers that you
created, including recognizers currently in training. Allows you to
filter the list of recognizers based on criteria such as status and
submission time. This call returns up to 500 entity recognizers in the
list, with a default number of 100 recognizers in the list.

The results of this list are not in any particular order. Please get the
list and sort locally if needed.

### Usage

    comprehend_list_entity_recognizers(Filter, NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="comprehend_list_entity_recognizers_:_Filter">Filter</code></td>
<td><p>Filters the list of entities returned. You can filter on
<code>Status</code>, <code>SubmitTimeBefore</code>, or
<code>SubmitTimeAfter</code>. You can only set one filter at a
time.</p></td>
</tr>
<tr class="even">
<td><code
id="comprehend_list_entity_recognizers_:_NextToken">NextToken</code></td>
<td><p>Identifies the next page of results to return.</p></td>
</tr>
<tr class="odd">
<td><code
id="comprehend_list_entity_recognizers_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return on each page. The default
is 100.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      EntityRecognizerPropertiesList = list(
        list(
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
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_entity_recognizers(
      Filter = list(
        Status = "SUBMITTED"|"TRAINING"|"DELETING"|"STOP_REQUESTED"|"STOPPED"|"IN_ERROR"|"TRAINED"|"TRAINED_WITH_WARNING",
        RecognizerName = "string",
        SubmitTimeBefore = as.POSIXct(
          "2015-01-01"
        ),
        SubmitTimeAfter = as.POSIXct(
          "2015-01-01"
        )
      ),
      NextToken = "string",
      MaxResults = 123
    )
