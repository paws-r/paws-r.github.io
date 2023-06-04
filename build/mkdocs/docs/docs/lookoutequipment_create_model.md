<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lookoutequipment_create_model</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates an ML model for data inference

### Description

Creates an ML model for data inference.

A machine-learning (ML) model is a mathematical model that finds
patterns in your data. In Amazon Lookout for Equipment, the model learns
the patterns of normal behavior and detects abnormal behavior that could
be potential equipment failure (or maintenance events). The models are
made by analyzing normal data and abnormalities in machine behavior that
have already occurred.

Your model is trained using a portion of the data from your dataset and
uses that data to learn patterns of normal behavior and abnormal
patterns that lead to equipment failure. Another portion of the data is
used to evaluate the model's accuracy.

### Usage

    lookoutequipment_create_model(ModelName, DatasetName, DatasetSchema,
      LabelsInputConfiguration, ClientToken, TrainingDataStartTime,
      TrainingDataEndTime, EvaluationDataStartTime, EvaluationDataEndTime,
      RoleArn, DataPreProcessingConfiguration, ServerSideKmsKeyId, Tags,
      OffCondition)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lookoutequipment_create_model_:_ModelName">ModelName</code></td>
<td><p>[required] The name for the ML model to be created.</p></td>
</tr>
<tr class="even">
<td><code
id="lookoutequipment_create_model_:_DatasetName">DatasetName</code></td>
<td><p>[required] The name of the dataset for the ML model being
created.</p></td>
</tr>
<tr class="odd">
<td><code
id="lookoutequipment_create_model_:_DatasetSchema">DatasetSchema</code></td>
<td><p>The data schema for the ML model being created.</p></td>
</tr>
<tr class="even">
<td><code
id="lookoutequipment_create_model_:_LabelsInputConfiguration">LabelsInputConfiguration</code></td>
<td><p>The input configuration for the labels being used for the ML
model that's being created.</p></td>
</tr>
<tr class="odd">
<td><code
id="lookoutequipment_create_model_:_ClientToken">ClientToken</code></td>
<td><p>[required] A unique identifier for the request. If you do not set
the client request token, Amazon Lookout for Equipment generates
one.</p></td>
</tr>
<tr class="even">
<td><code
id="lookoutequipment_create_model_:_TrainingDataStartTime">TrainingDataStartTime</code></td>
<td><p>Indicates the time reference in the dataset that should be used
to begin the subset of training data for the ML model.</p></td>
</tr>
<tr class="odd">
<td><code
id="lookoutequipment_create_model_:_TrainingDataEndTime">TrainingDataEndTime</code></td>
<td><p>Indicates the time reference in the dataset that should be used
to end the subset of training data for the ML model.</p></td>
</tr>
<tr class="even">
<td><code
id="lookoutequipment_create_model_:_EvaluationDataStartTime">EvaluationDataStartTime</code></td>
<td><p>Indicates the time reference in the dataset that should be used
to begin the subset of evaluation data for the ML model.</p></td>
</tr>
<tr class="odd">
<td><code
id="lookoutequipment_create_model_:_EvaluationDataEndTime">EvaluationDataEndTime</code></td>
<td><p>Indicates the time reference in the dataset that should be used
to end the subset of evaluation data for the ML model.</p></td>
</tr>
<tr class="even">
<td><code
id="lookoutequipment_create_model_:_RoleArn">RoleArn</code></td>
<td><p>The Amazon Resource Name (ARN) of a role with permission to
access the data source being used to create the ML model.</p></td>
</tr>
<tr class="odd">
<td><code
id="lookoutequipment_create_model_:_DataPreProcessingConfiguration">DataPreProcessingConfiguration</code></td>
<td><p>The configuration is the <code>TargetSamplingRate</code>, which
is the sampling rate of the data after post processing by Amazon Lookout
for Equipment. For example, if you provide data that has been collected
at a 1 second level and you want the system to resample the data at a 1
minute rate before training, the <code>TargetSamplingRate</code> is 1
minute.</p>
<p>When providing a value for the <code>TargetSamplingRate</code>, you
must attach the prefix "PT" to the rate you want. The value for a 1
second rate is therefore <em>PT1S</em>, the value for a 15 minute rate
is <em>PT15M</em>, and the value for a 1 hour rate is
<em>PT1H</em></p></td>
</tr>
<tr class="even">
<td><code
id="lookoutequipment_create_model_:_ServerSideKmsKeyId">ServerSideKmsKeyId</code></td>
<td><p>Provides the identifier of the KMS key used to encrypt model data
by Amazon Lookout for Equipment.</p></td>
</tr>
<tr class="odd">
<td><code id="lookoutequipment_create_model_:_Tags">Tags</code></td>
<td><p>Any tags associated with the ML model being created.</p></td>
</tr>
<tr class="even">
<td><code
id="lookoutequipment_create_model_:_OffCondition">OffCondition</code></td>
<td><p>Indicates that the asset associated with this sensor has been
shut off. As long as this condition is met, Lookout for Equipment will
not use data from this asset for training, evaluation, or
inference.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ModelArn = "string",
      Status = "IN_PROGRESS"|"SUCCESS"|"FAILED"
    )

### Request syntax

    svc$create_model(
      ModelName = "string",
      DatasetName = "string",
      DatasetSchema = list(
        InlineDataSchema = "string"
      ),
      LabelsInputConfiguration = list(
        S3InputConfiguration = list(
          Bucket = "string",
          Prefix = "string"
        ),
        LabelGroupName = "string"
      ),
      ClientToken = "string",
      TrainingDataStartTime = as.POSIXct(
        "2015-01-01"
      ),
      TrainingDataEndTime = as.POSIXct(
        "2015-01-01"
      ),
      EvaluationDataStartTime = as.POSIXct(
        "2015-01-01"
      ),
      EvaluationDataEndTime = as.POSIXct(
        "2015-01-01"
      ),
      RoleArn = "string",
      DataPreProcessingConfiguration = list(
        TargetSamplingRate = "PT1S"|"PT5S"|"PT10S"|"PT15S"|"PT30S"|"PT1M"|"PT5M"|"PT10M"|"PT15M"|"PT30M"|"PT1H"
      ),
      ServerSideKmsKeyId = "string",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      ),
      OffCondition = "string"
    )
