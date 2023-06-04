<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>glue_get_ml_transforms</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets a sortable, filterable list of existing Glue machine learning transforms

### Description

Gets a sortable, filterable list of existing Glue machine learning
transforms. Machine learning transforms are a special type of transform
that use machine learning to learn the details of the transformation to
be performed by learning from examples provided by humans. These
transformations are then saved by Glue, and you can retrieve their
metadata by calling `get_ml_transforms`.

### Usage

    glue_get_ml_transforms(NextToken, MaxResults, Filter, Sort)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="glue_get_ml_transforms_:_NextToken">NextToken</code></td>
<td><p>A paginated token to offset the results.</p></td>
</tr>
<tr class="even">
<td><code
id="glue_get_ml_transforms_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return.</p></td>
</tr>
<tr class="odd">
<td><code id="glue_get_ml_transforms_:_Filter">Filter</code></td>
<td><p>The filter transformation criteria.</p></td>
</tr>
<tr class="even">
<td><code id="glue_get_ml_transforms_:_Sort">Sort</code></td>
<td><p>The sorting criteria.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Transforms = list(
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
      ),
      NextToken = "string"
    )

### Request syntax

    svc$get_ml_transforms(
      NextToken = "string",
      MaxResults = 123,
      Filter = list(
        Name = "string",
        TransformType = "FIND_MATCHES",
        Status = "NOT_READY"|"READY"|"DELETING",
        GlueVersion = "string",
        CreatedBefore = as.POSIXct(
          "2015-01-01"
        ),
        CreatedAfter = as.POSIXct(
          "2015-01-01"
        ),
        LastModifiedBefore = as.POSIXct(
          "2015-01-01"
        ),
        LastModifiedAfter = as.POSIXct(
          "2015-01-01"
        ),
        Schema = list(
          list(
            Name = "string",
            DataType = "string"
          )
        )
      ),
      Sort = list(
        Column = "NAME"|"TRANSFORM_TYPE"|"STATUS"|"CREATED"|"LAST_MODIFIED",
        SortDirection = "DESCENDING"|"ASCENDING"
      )
    )
