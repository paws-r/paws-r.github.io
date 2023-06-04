<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>dynamodb_describe_import</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Represents the properties of the import

### Description

Represents the properties of the import.

### Usage

    dynamodb_describe_import(ImportArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="dynamodb_describe_import_:_ImportArn">ImportArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) associated with the
table you're importing to.</p></td>
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

    svc$describe_import(
      ImportArn = "string"
    )
