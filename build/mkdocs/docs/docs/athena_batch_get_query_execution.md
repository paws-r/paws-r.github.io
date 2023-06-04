<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>athena_batch_get_query_execution</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the details of a single query execution or a list of up to 50 query executions, which you provide as an array of query execution ID strings

### Description

Returns the details of a single query execution or a list of up to 50
query executions, which you provide as an array of query execution ID
strings. Requires you to have access to the workgroup in which the
queries ran. To get a list of query execution IDs, use
ListQueryExecutionsInput$WorkGroup. Query executions differ from named
(saved) queries. Use BatchGetNamedQueryInput to get details about named
queries.

### Usage

    athena_batch_get_query_execution(QueryExecutionIds)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="athena_batch_get_query_execution_:_QueryExecutionIds">QueryExecutionIds</code></td>
<td><p>[required] An array of query execution IDs.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      QueryExecutions = list(
        list(
          QueryExecutionId = "string",
          Query = "string",
          StatementType = "DDL"|"DML"|"UTILITY",
          ResultConfiguration = list(
            OutputLocation = "string",
            EncryptionConfiguration = list(
              EncryptionOption = "SSE_S3"|"SSE_KMS"|"CSE_KMS",
              KmsKey = "string"
            ),
            ExpectedBucketOwner = "string",
            AclConfiguration = list(
              S3AclOption = "BUCKET_OWNER_FULL_CONTROL"
            )
          ),
          ResultReuseConfiguration = list(
            ResultReuseByAgeConfiguration = list(
              Enabled = TRUE|FALSE,
              MaxAgeInMinutes = 123
            )
          ),
          QueryExecutionContext = list(
            Database = "string",
            Catalog = "string"
          ),
          Status = list(
            State = "QUEUED"|"RUNNING"|"SUCCEEDED"|"FAILED"|"CANCELLED",
            StateChangeReason = "string",
            SubmissionDateTime = as.POSIXct(
              "2015-01-01"
            ),
            CompletionDateTime = as.POSIXct(
              "2015-01-01"
            ),
            AthenaError = list(
              ErrorCategory = 123,
              ErrorType = 123,
              Retryable = TRUE|FALSE,
              ErrorMessage = "string"
            )
          ),
          Statistics = list(
            EngineExecutionTimeInMillis = 123,
            DataScannedInBytes = 123,
            DataManifestLocation = "string",
            TotalExecutionTimeInMillis = 123,
            QueryQueueTimeInMillis = 123,
            QueryPlanningTimeInMillis = 123,
            ServiceProcessingTimeInMillis = 123,
            ResultReuseInformation = list(
              ReusedPreviousResult = TRUE|FALSE
            )
          ),
          WorkGroup = "string",
          EngineVersion = list(
            SelectedEngineVersion = "string",
            EffectiveEngineVersion = "string"
          ),
          ExecutionParameters = list(
            "string"
          ),
          SubstatementType = "string"
        )
      ),
      UnprocessedQueryExecutionIds = list(
        list(
          QueryExecutionId = "string",
          ErrorCode = "string",
          ErrorMessage = "string"
        )
      )
    )

### Request syntax

    svc$batch_get_query_execution(
      QueryExecutionIds = list(
        "string"
      )
    )
