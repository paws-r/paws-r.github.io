<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>timestreamwrite_describe_table</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns information about the table, including the table name, database name, retention duration of the memory store and the magnetic store

### Description

Returns information about the table, including the table name, database
name, retention duration of the memory store and the magnetic store.
[Service quotas
apply](https://docs.aws.amazon.com/timestream/latest/developerguide/ts-limits.html).
See [code
sample](https://docs.aws.amazon.com/timestream/latest/developerguide/code-samples.describe-table.html)
for details.

### Usage

    timestreamwrite_describe_table(DatabaseName, TableName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="timestreamwrite_describe_table_:_DatabaseName">DatabaseName</code></td>
<td><p>[required] The name of the Timestream database.</p></td>
</tr>
<tr class="even">
<td><code
id="timestreamwrite_describe_table_:_TableName">TableName</code></td>
<td><p>[required] The name of the Timestream table.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Table = list(
        Arn = "string",
        TableName = "string",
        DatabaseName = "string",
        TableStatus = "ACTIVE"|"DELETING"|"RESTORING",
        RetentionProperties = list(
          MemoryStoreRetentionPeriodInHours = 123,
          MagneticStoreRetentionPeriodInDays = 123
        ),
        CreationTime = as.POSIXct(
          "2015-01-01"
        ),
        LastUpdatedTime = as.POSIXct(
          "2015-01-01"
        ),
        MagneticStoreWriteProperties = list(
          EnableMagneticStoreWrites = TRUE|FALSE,
          MagneticStoreRejectedDataLocation = list(
            S3Configuration = list(
              BucketName = "string",
              ObjectKeyPrefix = "string",
              EncryptionOption = "SSE_S3"|"SSE_KMS",
              KmsKeyId = "string"
            )
          )
        )
      )
    )

### Request syntax

    svc$describe_table(
      DatabaseName = "string",
      TableName = "string"
    )
