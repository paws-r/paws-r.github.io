<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>timestreamwrite_describe_batch_load_task</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns information about the batch load task, including configurations, mappings, progress, and other details

### Description

Returns information about the batch load task, including configurations,
mappings, progress, and other details. [Service quotas
apply](https://docs.aws.amazon.com/timestream/latest/developerguide/ts-limits.html).
See [code
sample](https://docs.aws.amazon.com/timestream/latest/developerguide/code-samples.describe-batch-load.html)
for details.

### Usage

    timestreamwrite_describe_batch_load_task(TaskId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="timestreamwrite_describe_batch_load_task_:_TaskId">TaskId</code></td>
<td><p>[required] The ID of the batch load task.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      BatchLoadTaskDescription = list(
        TaskId = "string",
        ErrorMessage = "string",
        DataSourceConfiguration = list(
          DataSourceS3Configuration = list(
            BucketName = "string",
            ObjectKeyPrefix = "string"
          ),
          CsvConfiguration = list(
            ColumnSeparator = "string",
            EscapeChar = "string",
            QuoteChar = "string",
            NullValue = "string",
            TrimWhiteSpace = TRUE|FALSE
          ),
          DataFormat = "CSV"
        ),
        ProgressReport = list(
          RecordsProcessed = 123,
          RecordsIngested = 123,
          ParseFailures = 123,
          RecordIngestionFailures = 123,
          FileFailures = 123,
          BytesMetered = 123
        ),
        ReportConfiguration = list(
          ReportS3Configuration = list(
            BucketName = "string",
            ObjectKeyPrefix = "string",
            EncryptionOption = "SSE_S3"|"SSE_KMS",
            KmsKeyId = "string"
          )
        ),
        DataModelConfiguration = list(
          DataModel = list(
            TimeColumn = "string",
            TimeUnit = "MILLISECONDS"|"SECONDS"|"MICROSECONDS"|"NANOSECONDS",
            DimensionMappings = list(
              list(
                SourceColumn = "string",
                DestinationColumn = "string"
              )
            ),
            MultiMeasureMappings = list(
              TargetMultiMeasureName = "string",
              MultiMeasureAttributeMappings = list(
                list(
                  SourceColumn = "string",
                  TargetMultiMeasureAttributeName = "string",
                  MeasureValueType = "DOUBLE"|"BIGINT"|"BOOLEAN"|"VARCHAR"|"TIMESTAMP"
                )
              )
            ),
            MixedMeasureMappings = list(
              list(
                MeasureName = "string",
                SourceColumn = "string",
                TargetMeasureName = "string",
                MeasureValueType = "DOUBLE"|"BIGINT"|"VARCHAR"|"BOOLEAN"|"TIMESTAMP"|"MULTI",
                MultiMeasureAttributeMappings = list(
                  list(
                    SourceColumn = "string",
                    TargetMultiMeasureAttributeName = "string",
                    MeasureValueType = "DOUBLE"|"BIGINT"|"BOOLEAN"|"VARCHAR"|"TIMESTAMP"
                  )
                )
              )
            ),
            MeasureNameColumn = "string"
          ),
          DataModelS3Configuration = list(
            BucketName = "string",
            ObjectKey = "string"
          )
        ),
        TargetDatabaseName = "string",
        TargetTableName = "string",
        TaskStatus = "CREATED"|"IN_PROGRESS"|"FAILED"|"SUCCEEDED"|"PROGRESS_STOPPED"|"PENDING_RESUME",
        RecordVersion = 123,
        CreationTime = as.POSIXct(
          "2015-01-01"
        ),
        LastUpdatedTime = as.POSIXct(
          "2015-01-01"
        ),
        ResumableUntil = as.POSIXct(
          "2015-01-01"
        )
      )
    )

### Request syntax

    svc$describe_batch_load_task(
      TaskId = "string"
    )
