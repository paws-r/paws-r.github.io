<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>timestreamwrite_list_tables</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Provides a list of tables, along with the name, status, and retention properties of each table

### Description

Provides a list of tables, along with the name, status, and retention
properties of each table. See [code
sample](https://docs.aws.amazon.com/timestream/latest/developerguide/code-samples.list-table.html)
for details.

### Usage

    timestreamwrite_list_tables(DatabaseName, NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="timestreamwrite_list_tables_:_DatabaseName">DatabaseName</code></td>
<td><p>The name of the Timestream database.</p></td>
</tr>
<tr class="even">
<td><code
id="timestreamwrite_list_tables_:_NextToken">NextToken</code></td>
<td><p>The pagination token. To resume pagination, provide the NextToken
value as argument of a subsequent API invocation.</p></td>
</tr>
<tr class="odd">
<td><code
id="timestreamwrite_list_tables_:_MaxResults">MaxResults</code></td>
<td><p>The total number of items to return in the output. If the total
number of items available is more than the value specified, a NextToken
is provided in the output. To resume pagination, provide the NextToken
value as argument of a subsequent API invocation.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Tables = list(
        list(
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
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_tables(
      DatabaseName = "string",
      NextToken = "string",
      MaxResults = 123
    )
