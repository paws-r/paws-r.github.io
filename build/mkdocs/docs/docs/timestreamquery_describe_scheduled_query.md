<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>timestreamquery_describe_scheduled_query</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Provides detailed information about a scheduled query

### Description

Provides detailed information about a scheduled query.

### Usage

    timestreamquery_describe_scheduled_query(ScheduledQueryArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="timestreamquery_describe_scheduled_query_:_ScheduledQueryArn">ScheduledQueryArn</code></td>
<td><p>[required] The ARN of the scheduled query.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ScheduledQuery = list(
        Arn = "string",
        Name = "string",
        QueryString = "string",
        CreationTime = as.POSIXct(
          "2015-01-01"
        ),
        State = "ENABLED"|"DISABLED",
        PreviousInvocationTime = as.POSIXct(
          "2015-01-01"
        ),
        NextInvocationTime = as.POSIXct(
          "2015-01-01"
        ),
        ScheduleConfiguration = list(
          ScheduleExpression = "string"
        ),
        NotificationConfiguration = list(
          SnsConfiguration = list(
            TopicArn = "string"
          )
        ),
        TargetConfiguration = list(
          TimestreamConfiguration = list(
            DatabaseName = "string",
            TableName = "string",
            TimeColumn = "string",
            DimensionMappings = list(
              list(
                Name = "string",
                DimensionValueType = "VARCHAR"
              )
            ),
            MultiMeasureMappings = list(
              TargetMultiMeasureName = "string",
              MultiMeasureAttributeMappings = list(
                list(
                  SourceColumn = "string",
                  TargetMultiMeasureAttributeName = "string",
                  MeasureValueType = "BIGINT"|"BOOLEAN"|"DOUBLE"|"VARCHAR"|"TIMESTAMP"
                )
              )
            ),
            MixedMeasureMappings = list(
              list(
                MeasureName = "string",
                SourceColumn = "string",
                TargetMeasureName = "string",
                MeasureValueType = "BIGINT"|"BOOLEAN"|"DOUBLE"|"VARCHAR"|"MULTI",
                MultiMeasureAttributeMappings = list(
                  list(
                    SourceColumn = "string",
                    TargetMultiMeasureAttributeName = "string",
                    MeasureValueType = "BIGINT"|"BOOLEAN"|"DOUBLE"|"VARCHAR"|"TIMESTAMP"
                  )
                )
              )
            ),
            MeasureNameColumn = "string"
          )
        ),
        ScheduledQueryExecutionRoleArn = "string",
        KmsKeyId = "string",
        ErrorReportConfiguration = list(
          S3Configuration = list(
            BucketName = "string",
            ObjectKeyPrefix = "string",
            EncryptionOption = "SSE_S3"|"SSE_KMS"
          )
        ),
        LastRunSummary = list(
          InvocationTime = as.POSIXct(
            "2015-01-01"
          ),
          TriggerTime = as.POSIXct(
            "2015-01-01"
          ),
          RunStatus = "AUTO_TRIGGER_SUCCESS"|"AUTO_TRIGGER_FAILURE"|"MANUAL_TRIGGER_SUCCESS"|"MANUAL_TRIGGER_FAILURE",
          ExecutionStats = list(
            ExecutionTimeInMillis = 123,
            DataWrites = 123,
            BytesMetered = 123,
            RecordsIngested = 123,
            QueryResultRows = 123
          ),
          ErrorReportLocation = list(
            S3ReportLocation = list(
              BucketName = "string",
              ObjectKey = "string"
            )
          ),
          FailureReason = "string"
        ),
        RecentlyFailedRuns = list(
          list(
            InvocationTime = as.POSIXct(
              "2015-01-01"
            ),
            TriggerTime = as.POSIXct(
              "2015-01-01"
            ),
            RunStatus = "AUTO_TRIGGER_SUCCESS"|"AUTO_TRIGGER_FAILURE"|"MANUAL_TRIGGER_SUCCESS"|"MANUAL_TRIGGER_FAILURE",
            ExecutionStats = list(
              ExecutionTimeInMillis = 123,
              DataWrites = 123,
              BytesMetered = 123,
              RecordsIngested = 123,
              QueryResultRows = 123
            ),
            ErrorReportLocation = list(
              S3ReportLocation = list(
                BucketName = "string",
                ObjectKey = "string"
              )
            ),
            FailureReason = "string"
          )
        )
      )
    )

### Request syntax

    svc$describe_scheduled_query(
      ScheduledQueryArn = "string"
    )
