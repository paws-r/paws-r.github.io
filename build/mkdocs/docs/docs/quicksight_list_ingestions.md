<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>quicksight_list_ingestions</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the history of SPICE ingestions for a dataset

### Description

Lists the history of SPICE ingestions for a dataset.

### Usage

    quicksight_list_ingestions(DataSetId, NextToken, AwsAccountId,
      MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="quicksight_list_ingestions_:_DataSetId">DataSetId</code></td>
<td><p>[required] The ID of the dataset used in the ingestion.</p></td>
</tr>
<tr class="even">
<td><code
id="quicksight_list_ingestions_:_NextToken">NextToken</code></td>
<td><p>The token for the next set of results, or null if there are no
more results.</p></td>
</tr>
<tr class="odd">
<td><code
id="quicksight_list_ingestions_:_AwsAccountId">AwsAccountId</code></td>
<td><p>[required] The Amazon Web Services account ID.</p></td>
</tr>
<tr class="even">
<td><code
id="quicksight_list_ingestions_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to be returned per
request.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Ingestions = list(
        list(
          Arn = "string",
          IngestionId = "string",
          IngestionStatus = "INITIALIZED"|"QUEUED"|"RUNNING"|"FAILED"|"COMPLETED"|"CANCELLED",
          ErrorInfo = list(
            Type = "FAILURE_TO_ASSUME_ROLE"|"INGESTION_SUPERSEDED"|"INGESTION_CANCELED"|"DATA_SET_DELETED"|"DATA_SET_NOT_SPICE"|"S3_UPLOADED_FILE_DELETED"|"S3_MANIFEST_ERROR"|"DATA_TOLERANCE_EXCEPTION"|"SPICE_TABLE_NOT_FOUND"|"DATA_SET_SIZE_LIMIT_EXCEEDED"|"ROW_SIZE_LIMIT_EXCEEDED"|"ACCOUNT_CAPACITY_LIMIT_EXCEEDED"|"CUSTOMER_ERROR"|"DATA_SOURCE_NOT_FOUND"|"IAM_ROLE_NOT_AVAILABLE"|"CONNECTION_FAILURE"|"SQL_TABLE_NOT_FOUND"|"PERMISSION_DENIED"|"SSL_CERTIFICATE_VALIDATION_FAILURE"|"OAUTH_TOKEN_FAILURE"|"SOURCE_API_LIMIT_EXCEEDED_FAILURE"|"PASSWORD_AUTHENTICATION_FAILURE"|"SQL_SCHEMA_MISMATCH_ERROR"|"INVALID_DATE_FORMAT"|"INVALID_DATAPREP_SYNTAX"|"SOURCE_RESOURCE_LIMIT_EXCEEDED"|"SQL_INVALID_PARAMETER_VALUE"|"QUERY_TIMEOUT"|"SQL_NUMERIC_OVERFLOW"|"UNRESOLVABLE_HOST"|"UNROUTABLE_HOST"|"SQL_EXCEPTION"|"S3_FILE_INACCESSIBLE"|"IOT_FILE_NOT_FOUND"|"IOT_DATA_SET_FILE_EMPTY"|"INVALID_DATA_SOURCE_CONFIG"|"DATA_SOURCE_AUTH_FAILED"|"DATA_SOURCE_CONNECTION_FAILED"|"FAILURE_TO_PROCESS_JSON_FILE"|"INTERNAL_SERVICE_ERROR"|"REFRESH_SUPPRESSED_BY_EDIT"|"PERMISSION_NOT_FOUND"|"ELASTICSEARCH_CURSOR_NOT_ENABLED"|"CURSOR_NOT_ENABLED"|"DUPLICATE_COLUMN_NAMES_FOUND",
            Message = "string"
          ),
          RowInfo = list(
            RowsIngested = 123,
            RowsDropped = 123,
            TotalRowsInDataset = 123
          ),
          QueueInfo = list(
            WaitingOnIngestion = "string",
            QueuedIngestion = "string"
          ),
          CreatedTime = as.POSIXct(
            "2015-01-01"
          ),
          IngestionTimeInSeconds = 123,
          IngestionSizeInBytes = 123,
          RequestSource = "MANUAL"|"SCHEDULED",
          RequestType = "INITIAL_INGESTION"|"EDIT"|"INCREMENTAL_REFRESH"|"FULL_REFRESH"
        )
      ),
      NextToken = "string",
      RequestId = "string",
      Status = 123
    )

### Request syntax

    svc$list_ingestions(
      DataSetId = "string",
      NextToken = "string",
      AwsAccountId = "string",
      MaxResults = 123
    )
