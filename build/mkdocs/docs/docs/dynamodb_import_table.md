<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>dynamodb_import_table</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Imports table data from an S3 bucket

### Description

Imports table data from an S3 bucket.

### Usage

    dynamodb_import_table(ClientToken, S3BucketSource, InputFormat,
      InputFormatOptions, InputCompressionType, TableCreationParameters)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="dynamodb_import_table_:_ClientToken">ClientToken</code></td>
<td><p>Providing a <code>ClientToken</code> makes the call to
<code>ImportTableInput</code> idempotent, meaning that multiple
identical calls have the same effect as one single call.</p>
<p>A client token is valid for 8 hours after the first request that uses
it is completed. After 8 hours, any request with the same client token
is treated as a new request. Do not resubmit the same request with the
same client token for more than 8 hours, or the result might not be
idempotent.</p>
<p>If you submit a request with the same client token but a change in
other parameters within the 8-hour idempotency window, DynamoDB returns
an <code>IdempotentParameterMismatch</code> exception.</p></td>
</tr>
<tr class="even">
<td><code
id="dynamodb_import_table_:_S3BucketSource">S3BucketSource</code></td>
<td><p>[required] The S3 bucket that provides the source for the
import.</p></td>
</tr>
<tr class="odd">
<td><code
id="dynamodb_import_table_:_InputFormat">InputFormat</code></td>
<td><p>[required] The format of the source data. Valid values for
<code>ImportFormat</code> are <code>CSV</code>,
<code>DYNAMODB_JSON</code> or <code>ION</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="dynamodb_import_table_:_InputFormatOptions">InputFormatOptions</code></td>
<td><p>Additional properties that specify how the input is
formatted,</p></td>
</tr>
<tr class="odd">
<td><code
id="dynamodb_import_table_:_InputCompressionType">InputCompressionType</code></td>
<td><p>Type of compression to be used on the input coming from the
imported table.</p></td>
</tr>
<tr class="even">
<td><code
id="dynamodb_import_table_:_TableCreationParameters">TableCreationParameters</code></td>
<td><p>[required] Parameters for the table to import the data
into.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ImportTableDescription = list(
        ImportArn = "string",
        ImportStatus = "IN_PROGRESS"|"COMPLETED"|"CANCELLING"|"CANCELLED"|"FAILED",
        TableArn = "string",
        TableId = "string",
        ClientToken = "string",
        S3BucketSource = list(
          S3BucketOwner = "string",
          S3Bucket = "string",
          S3KeyPrefix = "string"
        ),
        ErrorCount = 123,
        CloudWatchLogGroupArn = "string",
        InputFormat = "DYNAMODB_JSON"|"ION"|"CSV",
        InputFormatOptions = list(
          Csv = list(
            Delimiter = "string",
            HeaderList = list(
              "string"
            )
          )
        ),
        InputCompressionType = "GZIP"|"ZSTD"|"NONE",
        TableCreationParameters = list(
          TableName = "string",
          AttributeDefinitions = list(
            list(
              AttributeName = "string",
              AttributeType = "S"|"N"|"B"
            )
          ),
          KeySchema = list(
            list(
              AttributeName = "string",
              KeyType = "HASH"|"RANGE"
            )
          ),
          BillingMode = "PROVISIONED"|"PAY_PER_REQUEST",
          ProvisionedThroughput = list(
            ReadCapacityUnits = 123,
            WriteCapacityUnits = 123
          ),
          SSESpecification = list(
            Enabled = TRUE|FALSE,
            SSEType = "AES256"|"KMS",
            KMSMasterKeyId = "string"
          ),
          GlobalSecondaryIndexes = list(
            list(
              IndexName = "string",
              KeySchema = list(
                list(
                  AttributeName = "string",
                  KeyType = "HASH"|"RANGE"
                )
              ),
              Projection = list(
                ProjectionType = "ALL"|"KEYS_ONLY"|"INCLUDE",
                NonKeyAttributes = list(
                  "string"
                )
              ),
              ProvisionedThroughput = list(
                ReadCapacityUnits = 123,
                WriteCapacityUnits = 123
              )
            )
          )
        ),
        StartTime = as.POSIXct(
          "2015-01-01"
        ),
        EndTime = as.POSIXct(
          "2015-01-01"
        ),
        ProcessedSizeBytes = 123,
        ProcessedItemCount = 123,
        ImportedItemCount = 123,
        FailureCode = "string",
        FailureMessage = "string"
      )
    )

### Request syntax

    svc$import_table(
      ClientToken = "string",
      S3BucketSource = list(
        S3BucketOwner = "string",
        S3Bucket = "string",
        S3KeyPrefix = "string"
      ),
      InputFormat = "DYNAMODB_JSON"|"ION"|"CSV",
      InputFormatOptions = list(
        Csv = list(
          Delimiter = "string",
          HeaderList = list(
            "string"
          )
        )
      ),
      InputCompressionType = "GZIP"|"ZSTD"|"NONE",
      TableCreationParameters = list(
        TableName = "string",
        AttributeDefinitions = list(
          list(
            AttributeName = "string",
            AttributeType = "S"|"N"|"B"
          )
        ),
        KeySchema = list(
          list(
            AttributeName = "string",
            KeyType = "HASH"|"RANGE"
          )
        ),
        BillingMode = "PROVISIONED"|"PAY_PER_REQUEST",
        ProvisionedThroughput = list(
          ReadCapacityUnits = 123,
          WriteCapacityUnits = 123
        ),
        SSESpecification = list(
          Enabled = TRUE|FALSE,
          SSEType = "AES256"|"KMS",
          KMSMasterKeyId = "string"
        ),
        GlobalSecondaryIndexes = list(
          list(
            IndexName = "string",
            KeySchema = list(
              list(
                AttributeName = "string",
                KeyType = "HASH"|"RANGE"
              )
            ),
            Projection = list(
              ProjectionType = "ALL"|"KEYS_ONLY"|"INCLUDE",
              NonKeyAttributes = list(
                "string"
              )
            ),
            ProvisionedThroughput = list(
              ReadCapacityUnits = 123,
              WriteCapacityUnits = 123
            )
          )
        )
      )
    )
