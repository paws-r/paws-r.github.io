<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>glue_get_ml_transform</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets an Glue machine learning transform artifact and all its corresponding metadata

### Description

Gets an Glue machine learning transform artifact and all its
corresponding metadata. Machine learning transforms are a special type
of transform that use machine learning to learn the details of the
transformation to be performed by learning from examples provided by
humans. These transformations are then saved by Glue. You can retrieve
their metadata by calling `get_ml_transform`.

### Usage

    glue_get_ml_transform(TransformId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="glue_get_ml_transform_:_TransformId">TransformId</code></td>
<td><p>[required] The unique identifier of the transform, generated at
the time that the transform was created.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      TransformId = "string",
      Name = "string",
      Description = "string",
      Status = "NOT_READY"|"READY"|"DELETING",
      CreatedOn = as.POSIXct(
        "2015-01-01"
      ),
      LastModifiedOn = as.POSIXct(
        "2015-01-01"
      ),
      InputRecordTables = list(
        list(
          DatabaseName = "string",
          TableName = "string",
          CatalogId = "string",
          ConnectionName = "string",
          AdditionalOptions = list(
            "string"
          )
        )
      ),
      Parameters = list(
        TransformType = "FIND_MATCHES",
        FindMatchesParameters = list(
          PrimaryKeyColumnName = "string",
          PrecisionRecallTradeoff = 123.0,
          AccuracyCostTradeoff = 123.0,
          EnforceProvidedLabels = TRUE|FALSE
        )
      ),
      EvaluationMetrics = list(
        TransformType = "FIND_MATCHES",
        FindMatchesMetrics = list(
          AreaUnderPRCurve = 123.0,
          Precision = 123.0,
          Recall = 123.0,
          F1 = 123.0,
          ConfusionMatrix = list(
            NumTruePositives = 123,
            NumFalsePositives = 123,
            NumTrueNegatives = 123,
            NumFalseNegatives = 123
          ),
          ColumnImportances = list(
            list(
              ColumnName = "string",
              Importance = 123.0
            )
          )
        )
      ),
      LabelCount = 123,
      Schema = list(
        list(
          Name = "string",
          DataType = "string"
        )
      ),
      Role = "string",
      GlueVersion = "string",
      MaxCapacity = 123.0,
      WorkerType = "Standard"|"G.1X"|"G.2X"|"G.025X"|"G.4X"|"G.8X",
      NumberOfWorkers = 123,
      Timeout = 123,
      MaxRetries = 123,
      TransformEncryption = list(
        MlUserDataEncryption = list(
          MlUserDataEncryptionMode = "DISABLED"|"SSE-KMS",
          KmsKeyId = "string"
        ),
        TaskRunSecurityConfigurationName = "string"
      )
    )

### Request syntax

    svc$get_ml_transform(
      TransformId = "string"
    )
