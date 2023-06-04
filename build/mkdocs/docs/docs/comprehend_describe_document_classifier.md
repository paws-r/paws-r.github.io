<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>comprehend_describe_document_classifier</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets the properties associated with a document classifier

### Description

Gets the properties associated with a document classifier.

### Usage

    comprehend_describe_document_classifier(DocumentClassifierArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="comprehend_describe_document_classifier_:_DocumentClassifierArn">DocumentClassifierArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) that identifies the
document classifier. The <code>create_document_classifier</code>
operation returns this identifier in its response.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      DocumentClassifierProperties = list(
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
    )

### Request syntax

    svc$describe_document_classifier(
      DocumentClassifierArn = "string"
    )
