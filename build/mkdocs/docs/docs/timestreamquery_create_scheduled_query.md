<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>timestreamquery_create_scheduled_query</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Create a scheduled query that will be run on your behalf at the configured schedule

### Description

Create a scheduled query that will be run on your behalf at the
configured schedule. Timestream assumes the execution role provided as
part of the `ScheduledQueryExecutionRoleArn` parameter to run the query.
You can use the `NotificationConfiguration` parameter to configure
notification for your scheduled query operations.

### Usage

    timestreamquery_create_scheduled_query(Name, QueryString,
      ScheduleConfiguration, NotificationConfiguration, TargetConfiguration,
      ClientToken, ScheduledQueryExecutionRoleArn, Tags, KmsKeyId,
      ErrorReportConfiguration)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="timestreamquery_create_scheduled_query_:_Name">Name</code></td>
<td><p>[required] Name of the scheduled query.</p></td>
</tr>
<tr class="even">
<td><code
id="timestreamquery_create_scheduled_query_:_QueryString">QueryString</code></td>
<td><p>[required] The query string to run. Parameter names can be
specified in the query string <code>@</code> character followed by an
identifier. The named Parameter <code
style="white-space: pre;">⁠@scheduled_runtime⁠</code> is reserved and can
be used in the query to get the time at which the query is scheduled to
run.</p>
<p>The timestamp calculated according to the ScheduleConfiguration
parameter, will be the value of <code
style="white-space: pre;">⁠@scheduled_runtime⁠</code> paramater for each
query run. For example, consider an instance of a scheduled query
executing on 2021-12-01 00:00:00. For this instance, the <code
style="white-space: pre;">⁠@scheduled_runtime⁠</code> parameter is
initialized to the timestamp 2021-12-01 00:00:00 when invoking the
query.</p></td>
</tr>
<tr class="odd">
<td><code
id="timestreamquery_create_scheduled_query_:_ScheduleConfiguration">ScheduleConfiguration</code></td>
<td><p>[required] The schedule configuration for the query.</p></td>
</tr>
<tr class="even">
<td><code
id="timestreamquery_create_scheduled_query_:_NotificationConfiguration">NotificationConfiguration</code></td>
<td><p>[required] Notification configuration for the scheduled query. A
notification is sent by Timestream when a query run finishes, when the
state is updated or when you delete it.</p></td>
</tr>
<tr class="odd">
<td><code
id="timestreamquery_create_scheduled_query_:_TargetConfiguration">TargetConfiguration</code></td>
<td><p>Configuration used for writing the result of a query.</p></td>
</tr>
<tr class="even">
<td><code
id="timestreamquery_create_scheduled_query_:_ClientToken">ClientToken</code></td>
<td><p>Using a ClientToken makes the call to CreateScheduledQuery
idempotent, in other words, making the same request repeatedly will
produce the same result. Making multiple identical CreateScheduledQuery
requests has the same effect as making a single request.</p>
<ul>
<li><p>If CreateScheduledQuery is called without a
<code>ClientToken</code>, the Query SDK generates a
<code>ClientToken</code> on your behalf.</p></li>
<li><p>After 8 hours, any request with the same <code>ClientToken</code>
is treated as a new request.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="timestreamquery_create_scheduled_query_:_ScheduledQueryExecutionRoleArn">ScheduledQueryExecutionRoleArn</code></td>
<td><p>[required] The ARN for the IAM role that Timestream will assume
when running the scheduled query.</p></td>
</tr>
<tr class="even">
<td><code
id="timestreamquery_create_scheduled_query_:_Tags">Tags</code></td>
<td><p>A list of key-value pairs to label the scheduled query.</p></td>
</tr>
<tr class="odd">
<td><code
id="timestreamquery_create_scheduled_query_:_KmsKeyId">KmsKeyId</code></td>
<td><p>The Amazon KMS key used to encrypt the scheduled query resource,
at-rest. If the Amazon KMS key is not specified, the scheduled query
resource will be encrypted with a Timestream owned Amazon KMS key. To
specify a KMS key, use the key ID, key ARN, alias name, or alias ARN.
When using an alias name, prefix the name with <em>alias/</em></p>
<p>If ErrorReportConfiguration uses <code>SSE_KMS</code> as encryption
type, the same KmsKeyId is used to encrypt the error report at
rest.</p></td>
</tr>
<tr class="even">
<td><code
id="timestreamquery_create_scheduled_query_:_ErrorReportConfiguration">ErrorReportConfiguration</code></td>
<td><p>[required] Configuration for error reporting. Error reports will
be generated when a problem is encountered when writing the query
results.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Arn = "string"
    )

### Request syntax

    svc$create_scheduled_query(
      Name = "string",
      QueryString = "string",
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
      ClientToken = "string",
      ScheduledQueryExecutionRoleArn = "string",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      ),
      KmsKeyId = "string",
      ErrorReportConfiguration = list(
        S3Configuration = list(
          BucketName = "string",
          ObjectKeyPrefix = "string",
          EncryptionOption = "SSE_S3"|"SSE_KMS"
        )
      )
    )
