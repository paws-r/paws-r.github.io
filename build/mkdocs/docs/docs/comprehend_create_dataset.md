<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>comprehend_create_dataset</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a dataset to upload training or test data for a model associated with a flywheel

### Description

Creates a dataset to upload training or test data for a model associated
with a flywheel. For more information about datasets, see [Flywheel
overview](https://docs.aws.amazon.com/comprehend/latest/dg/flywheels-about.html)
in the *Amazon Comprehend Developer Guide*.

### Usage

    comprehend_create_dataset(FlywheelArn, DatasetName, DatasetType,
      Description, InputDataConfig, ClientRequestToken, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="comprehend_create_dataset_:_FlywheelArn">FlywheelArn</code></td>
<td><p>[required] The Amazon Resource Number (ARN) of the flywheel of
the flywheel to receive the data.</p></td>
</tr>
<tr class="even">
<td><code
id="comprehend_create_dataset_:_DatasetName">DatasetName</code></td>
<td><p>[required] Name of the dataset.</p></td>
</tr>
<tr class="odd">
<td><code
id="comprehend_create_dataset_:_DatasetType">DatasetType</code></td>
<td><p>The dataset type. You can specify that the data in a dataset is
for training the model or for testing the model.</p></td>
</tr>
<tr class="even">
<td><code
id="comprehend_create_dataset_:_Description">Description</code></td>
<td><p>Description of the dataset.</p></td>
</tr>
<tr class="odd">
<td><code
id="comprehend_create_dataset_:_InputDataConfig">InputDataConfig</code></td>
<td><p>[required] Information about the input data configuration. The
type of input data varies based on the format of the input and whether
the data is for a classifier model or an entity recognition
model.</p></td>
</tr>
<tr class="even">
<td><code
id="comprehend_create_dataset_:_ClientRequestToken">ClientRequestToken</code></td>
<td><p>A unique identifier for the request. If you don't set the client
request token, Amazon Comprehend generates one.</p></td>
</tr>
<tr class="odd">
<td><code id="comprehend_create_dataset_:_Tags">Tags</code></td>
<td><p>Tags for the dataset.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      DatasetArn = "string"
    )

### Request syntax

    svc$create_dataset(
      FlywheelArn = "string",
      DatasetName = "string",
      DatasetType = "TRAIN"|"TEST",
      Description = "string",
      InputDataConfig = list(
        AugmentedManifests = list(
          list(
            AttributeNames = list(
              "string"
            ),
            S3Uri = "string",
            AnnotationDataS3Uri = "string",
            SourceDocumentsS3Uri = "string",
            DocumentType = "PLAIN_TEXT_DOCUMENT"|"SEMI_STRUCTURED_DOCUMENT"
          )
        ),
        DataFormat = "COMPREHEND_CSV"|"AUGMENTED_MANIFEST",
        DocumentClassifierInputDataConfig = list(
          S3Uri = "string",
          LabelDelimiter = "string"
        ),
        EntityRecognizerInputDataConfig = list(
          Annotations = list(
            S3Uri = "string"
          ),
          Documents = list(
            S3Uri = "string",
            InputFormat = "ONE_DOC_PER_FILE"|"ONE_DOC_PER_LINE"
          ),
          EntityList = list(
            S3Uri = "string"
          )
        )
      ),
      ClientRequestToken = "string",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
