<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>timestreamwrite_create_table</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Adds a new table to an existing database in your account

### Description

Adds a new table to an existing database in your account. In an Amazon
Web Services account, table names must be at least unique within each
Region if they are in the same database. You might have identical table
names in the same Region if the tables are in separate databases. While
creating the table, you must specify the table name, database name, and
the retention properties. [Service quotas
apply](https://docs.aws.amazon.com/timestream/latest/developerguide/ts-limits.html).
See [code
sample](https://docs.aws.amazon.com/timestream/latest/developerguide/code-samples.create-table.html)
for details.

### Usage

    timestreamwrite_create_table(DatabaseName, TableName,
      RetentionProperties, Tags, MagneticStoreWriteProperties)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="timestreamwrite_create_table_:_DatabaseName">DatabaseName</code></td>
<td><p>[required] The name of the Timestream database.</p></td>
</tr>
<tr class="even">
<td><code
id="timestreamwrite_create_table_:_TableName">TableName</code></td>
<td><p>[required] The name of the Timestream table.</p></td>
</tr>
<tr class="odd">
<td><code
id="timestreamwrite_create_table_:_RetentionProperties">RetentionProperties</code></td>
<td><p>The duration for which your time-series data must be stored in
the memory store and the magnetic store.</p></td>
</tr>
<tr class="even">
<td><code id="timestreamwrite_create_table_:_Tags">Tags</code></td>
<td><p>A list of key-value pairs to label the table.</p></td>
</tr>
<tr class="odd">
<td><code
id="timestreamwrite_create_table_:_MagneticStoreWriteProperties">MagneticStoreWriteProperties</code></td>
<td><p>Contains properties to set on the table when enabling magnetic
store writes.</p></td>
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

    svc$create_table(
      DatabaseName = "string",
      TableName = "string",
      RetentionProperties = list(
        MemoryStoreRetentionPeriodInHours = 123,
        MagneticStoreRetentionPeriodInDays = 123
      ),
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
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
