<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>timestreamwrite_update_table</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Modifies the retention duration of the memory store and magnetic store for your Timestream table

### Description

Modifies the retention duration of the memory store and magnetic store
for your Timestream table. Note that the change in retention duration
takes effect immediately. For example, if the retention period of the
memory store was initially set to 2 hours and then changed to 24 hours,
the memory store will be capable of holding 24 hours of data, but will
be populated with 24 hours of data 22 hours after this change was made.
Timestream does not retrieve data from the magnetic store to populate
the memory store.

See [code
sample](https://docs.aws.amazon.com/timestream/latest/developerguide/code-samples.update-table.html)
for details.

### Usage

    timestreamwrite_update_table(DatabaseName, TableName,
      RetentionProperties, MagneticStoreWriteProperties)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="timestreamwrite_update_table_:_DatabaseName">DatabaseName</code></td>
<td><p>[required] The name of the Timestream database.</p></td>
</tr>
<tr class="even">
<td><code
id="timestreamwrite_update_table_:_TableName">TableName</code></td>
<td><p>[required] The name of the Timestream table.</p></td>
</tr>
<tr class="odd">
<td><code
id="timestreamwrite_update_table_:_RetentionProperties">RetentionProperties</code></td>
<td><p>The retention duration of the memory store and the magnetic
store.</p></td>
</tr>
<tr class="even">
<td><code
id="timestreamwrite_update_table_:_MagneticStoreWriteProperties">MagneticStoreWriteProperties</code></td>
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

    svc$update_table(
      DatabaseName = "string",
      TableName = "string",
      RetentionProperties = list(
        MemoryStoreRetentionPeriodInHours = 123,
        MagneticStoreRetentionPeriodInDays = 123
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
