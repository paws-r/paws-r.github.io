<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>comprehend_create_flywheel</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## A flywheel is an Amazon Web Services resource that orchestrates the ongoing training of a model for custom classification or custom entity recognition

### Description

A flywheel is an Amazon Web Services resource that orchestrates the
ongoing training of a model for custom classification or custom entity
recognition. You can create a flywheel to start with an existing trained
model, or Comprehend can create and train a new model.

When you create the flywheel, Comprehend creates a data lake in your
account. The data lake holds the training data and test data for all
versions of the model.

To use a flywheel with an existing trained model, you specify the active
model version. Comprehend copies the model's training data and test data
into the flywheel's data lake.

To use the flywheel with a new model, you need to provide a dataset for
training data (and optional test data) when you create the flywheel.

For more information about flywheels, see [Flywheel
overview](https://docs.aws.amazon.com/comprehend/latest/dg/flywheels-about.html)
in the *Amazon Comprehend Developer Guide*.

### Usage

    comprehend_create_flywheel(FlywheelName, ActiveModelArn,
      DataAccessRoleArn, TaskConfig, ModelType, DataLakeS3Uri,
      DataSecurityConfig, ClientRequestToken, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="comprehend_create_flywheel_:_FlywheelName">FlywheelName</code></td>
<td><p>[required] Name for the flywheel.</p></td>
</tr>
<tr class="even">
<td><code
id="comprehend_create_flywheel_:_ActiveModelArn">ActiveModelArn</code></td>
<td><p>To associate an existing model with the flywheel, specify the
Amazon Resource Number (ARN) of the model version.</p></td>
</tr>
<tr class="odd">
<td><code
id="comprehend_create_flywheel_:_DataAccessRoleArn">DataAccessRoleArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the IAM role that
grants Amazon Comprehend the permissions required to access the flywheel
data in the data lake.</p></td>
</tr>
<tr class="even">
<td><code
id="comprehend_create_flywheel_:_TaskConfig">TaskConfig</code></td>
<td><p>Configuration about the custom classifier associated with the
flywheel.</p></td>
</tr>
<tr class="odd">
<td><code
id="comprehend_create_flywheel_:_ModelType">ModelType</code></td>
<td><p>The model type.</p></td>
</tr>
<tr class="even">
<td><code
id="comprehend_create_flywheel_:_DataLakeS3Uri">DataLakeS3Uri</code></td>
<td><p>[required] Enter the S3 location for the data lake. You can
specify a new S3 bucket or a new folder of an existing S3 bucket. The
flywheel creates the data lake at this location.</p></td>
</tr>
<tr class="odd">
<td><code
id="comprehend_create_flywheel_:_DataSecurityConfig">DataSecurityConfig</code></td>
<td><p>Data security configurations.</p></td>
</tr>
<tr class="even">
<td><code
id="comprehend_create_flywheel_:_ClientRequestToken">ClientRequestToken</code></td>
<td><p>A unique identifier for the request. If you don't set the client
request token, Amazon Comprehend generates one.</p></td>
</tr>
<tr class="odd">
<td><code id="comprehend_create_flywheel_:_Tags">Tags</code></td>
<td><p>The tags to associate with this flywheel.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      FlywheelArn = "string",
      ActiveModelArn = "string"
    )

### Request syntax

    svc$create_flywheel(
      FlywheelName = "string",
      ActiveModelArn = "string",
      DataAccessRoleArn = "string",
      TaskConfig = list(
        LanguageCode = "en"|"es"|"fr"|"de"|"it"|"pt"|"ar"|"hi"|"ja"|"ko"|"zh"|"zh-TW",
        DocumentClassificationConfig = list(
          Mode = "MULTI_CLASS"|"MULTI_LABEL",
          Labels = list(
            "string"
          )
        ),
        EntityRecognitionConfig = list(
          EntityTypes = list(
            list(
              Type = "string"
            )
          )
        )
      ),
      ModelType = "DOCUMENT_CLASSIFIER"|"ENTITY_RECOGNIZER",
      DataLakeS3Uri = "string",
      DataSecurityConfig = list(
        ModelKmsKeyId = "string",
        VolumeKmsKeyId = "string",
        DataLakeKmsKeyId = "string",
        VpcConfig = list(
          SecurityGroupIds = list(
            "string"
          ),
          Subnets = list(
            "string"
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
