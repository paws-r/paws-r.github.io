<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>timestreamwrite_create_batch_load_task</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a new Timestream batch load task

### Description

Creates a new Timestream batch load task. A batch load task processes
data from a CSV source in an S3 location and writes to a Timestream
table. A mapping from source to target is defined in a batch load task.
Errors and events are written to a report at an S3 location. For the
report, if the KMS key is not specified, the batch load task will be
encrypted with a Timestream managed KMS key located in your account. For
more information, see [Amazon Web Services managed
keys](https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#aws-managed-cmk).
[Service quotas
apply](https://docs.aws.amazon.com/timestream/latest/developerguide/ts-limits.html).
For details, see [code
sample](https://docs.aws.amazon.com/timestream/latest/developerguide/code-samples.create-batch-load.html).

### Usage

    timestreamwrite_create_batch_load_task(ClientToken,
      DataModelConfiguration, DataSourceConfiguration, ReportConfiguration,
      TargetDatabaseName, TargetTableName, RecordVersion)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="timestreamwrite_create_batch_load_task_:_ClientToken">ClientToken</code></td>
<td></td>
</tr>
<tr class="even">
<td><code
id="timestreamwrite_create_batch_load_task_:_DataModelConfiguration">DataModelConfiguration</code></td>
<td></td>
</tr>
<tr class="odd">
<td><code
id="timestreamwrite_create_batch_load_task_:_DataSourceConfiguration">DataSourceConfiguration</code></td>
<td><p>[required] Defines configuration details about the data source
for a batch load task.</p></td>
</tr>
<tr class="even">
<td><code
id="timestreamwrite_create_batch_load_task_:_ReportConfiguration">ReportConfiguration</code></td>
<td><p>[required]</p></td>
</tr>
<tr class="odd">
<td><code
id="timestreamwrite_create_batch_load_task_:_TargetDatabaseName">TargetDatabaseName</code></td>
<td><p>[required] Target Timestream database for a batch load
task.</p></td>
</tr>
<tr class="even">
<td><code
id="timestreamwrite_create_batch_load_task_:_TargetTableName">TargetTableName</code></td>
<td><p>[required] Target Timestream table for a batch load
task.</p></td>
</tr>
<tr class="odd">
<td><code
id="timestreamwrite_create_batch_load_task_:_RecordVersion">RecordVersion</code></td>
<td></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      TaskId = "string"
    )

### Request syntax

    svc$create_batch_load_task(
      ClientToken = "string",
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
      ReportConfiguration = list(
        ReportS3Configuration = list(
          BucketName = "string",
          ObjectKeyPrefix = "string",
          EncryptionOption = "SSE_S3"|"SSE_KMS",
          KmsKeyId = "string"
        )
      ),
      TargetDatabaseName = "string",
      TargetTableName = "string",
      RecordVersion = 123
    )
