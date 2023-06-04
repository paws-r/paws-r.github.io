<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>comprehend_list_document_classifiers</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets a list of the document classifiers that you have created

### Description

Gets a list of the document classifiers that you have created.

### Usage

    comprehend_list_document_classifiers(Filter, NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="comprehend_list_document_classifiers_:_Filter">Filter</code></td>
<td><p>Filters the jobs that are returned. You can filter jobs on their
name, status, or the date and time that they were submitted. You can
only set one filter at a time.</p></td>
</tr>
<tr class="even">
<td><code
id="comprehend_list_document_classifiers_:_NextToken">NextToken</code></td>
<td><p>Identifies the next page of results to return.</p></td>
</tr>
<tr class="odd">
<td><code
id="comprehend_list_document_classifiers_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return in each page. The default
is 100.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      DocumentClassifierPropertiesList = list(
        list(
          DocumentClassifierArn = "string",
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
            S3Uri = "string",
            TestS3Uri = "string",
            LabelDelimiter = "string",
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
            ),
            DocumentType = "PLAIN_TEXT_DOCUMENT"|"SEMI_STRUCTURED_DOCUMENT",
            Documents = list(
              S3Uri = "string",
              TestS3Uri = "string"
            ),
            DocumentReaderConfig = list(
              DocumentReadAction = "TEXTRACT_DETECT_DOCUMENT_TEXT"|"TEXTRACT_ANALYZE_DOCUMENT",
              DocumentReadMode = "SERVICE_DEFAULT"|"FORCE_DOCUMENT_READ_ACTION",
              FeatureTypes = list(
                "TABLES"|"FORMS"
              )
            )
          ),
          OutputDataConfig = list(
            S3Uri = "string",
            KmsKeyId = "string",
            FlywheelStatsS3Prefix = "string"
          ),
          ClassifierMetadata = list(
            NumberOfLabels = 123,
            NumberOfTrainedDocuments = 123,
            NumberOfTestDocuments = 123,
            EvaluationMetrics = list(
              Accuracy = 123.0,
              Precision = 123.0,
              Recall = 123.0,
              F1Score = 123.0,
              MicroPrecision = 123.0,
              MicroRecall = 123.0,
              MicroF1Score = 123.0,
              HammingLoss = 123.0
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
          Mode = "MULTI_CLASS"|"MULTI_LABEL",
          ModelKmsKeyId = "string",
          VersionName = "string",
          SourceModelArn = "string",
          FlywheelArn = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_document_classifiers(
      Filter = list(
        Status = "SUBMITTED"|"TRAINING"|"DELETING"|"STOP_REQUESTED"|"STOPPED"|"IN_ERROR"|"TRAINED"|"TRAINED_WITH_WARNING",
        DocumentClassifierName = "string",
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
