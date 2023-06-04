<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>dynamodb_restore_table_to_point_in_time</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Restores the specified table to the specified point in time within EarliestRestorableDateTime and LatestRestorableDateTime

### Description

Restores the specified table to the specified point in time within
`EarliestRestorableDateTime` and `LatestRestorableDateTime`. You can
restore your table to any point in time during the last 35 days. Any
number of users can execute up to 4 concurrent restores (any type of
restore) in a given account.

When you restore using point in time recovery, DynamoDB restores your
table data to the state based on the selected date and time
(day:hour:minute:second) to a new table.

Along with data, the following are also included on the new restored
table using point in time recovery:

-   Global secondary indexes (GSIs)

-   Local secondary indexes (LSIs)

-   Provisioned read and write capacity

-   Encryption settings

    All these settings come from the current settings of the source
    table at the time of restore.

You must manually set up the following on the restored table:

-   Auto scaling policies

-   IAM policies

-   Amazon CloudWatch metrics and alarms

-   Tags

-   Stream settings

-   Time to Live (TTL) settings

-   Point in time recovery settings

### Usage

    dynamodb_restore_table_to_point_in_time(SourceTableArn, SourceTableName,
      TargetTableName, UseLatestRestorableTime, RestoreDateTime,
      BillingModeOverride, GlobalSecondaryIndexOverride,
      LocalSecondaryIndexOverride, ProvisionedThroughputOverride,
      SSESpecificationOverride)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="dynamodb_restore_table_to_point_in_time_:_SourceTableArn">SourceTableArn</code></td>
<td><p>The DynamoDB table that will be restored. This value is an Amazon
Resource Name (ARN).</p></td>
</tr>
<tr class="even">
<td><code
id="dynamodb_restore_table_to_point_in_time_:_SourceTableName">SourceTableName</code></td>
<td><p>Name of the source table that is being restored.</p></td>
</tr>
<tr class="odd">
<td><code
id="dynamodb_restore_table_to_point_in_time_:_TargetTableName">TargetTableName</code></td>
<td><p>[required] The name of the new table to which it must be restored
to.</p></td>
</tr>
<tr class="even">
<td><code
id="dynamodb_restore_table_to_point_in_time_:_UseLatestRestorableTime">UseLatestRestorableTime</code></td>
<td><p>Restore the table to the latest possible time.
<code>LatestRestorableDateTime</code> is typically 5 minutes before the
current time.</p></td>
</tr>
<tr class="odd">
<td><code
id="dynamodb_restore_table_to_point_in_time_:_RestoreDateTime">RestoreDateTime</code></td>
<td><p>Time in the past to restore the table to.</p></td>
</tr>
<tr class="even">
<td><code
id="dynamodb_restore_table_to_point_in_time_:_BillingModeOverride">BillingModeOverride</code></td>
<td><p>The billing mode of the restored table.</p></td>
</tr>
<tr class="odd">
<td><code
id="dynamodb_restore_table_to_point_in_time_:_GlobalSecondaryIndexOverride">GlobalSecondaryIndexOverride</code></td>
<td><p>List of global secondary indexes for the restored table. The
indexes provided should match existing secondary indexes. You can choose
to exclude some or all of the indexes at the time of restore.</p></td>
</tr>
<tr class="even">
<td><code
id="dynamodb_restore_table_to_point_in_time_:_LocalSecondaryIndexOverride">LocalSecondaryIndexOverride</code></td>
<td><p>List of local secondary indexes for the restored table. The
indexes provided should match existing secondary indexes. You can choose
to exclude some or all of the indexes at the time of restore.</p></td>
</tr>
<tr class="odd">
<td><code
id="dynamodb_restore_table_to_point_in_time_:_ProvisionedThroughputOverride">ProvisionedThroughputOverride</code></td>
<td><p>Provisioned throughput settings for the restored table.</p></td>
</tr>
<tr class="even">
<td><code
id="dynamodb_restore_table_to_point_in_time_:_SSESpecificationOverride">SSESpecificationOverride</code></td>
<td><p>The new server-side encryption settings for the restored
table.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      TableDescription = list(
        AttributeDefinitions = list(
          list(
            AttributeName = "string",
            AttributeType = "S"|"N"|"B"
          )
        ),
        TableName = "string",
        KeySchema = list(
          list(
            AttributeName = "string",
            KeyType = "HASH"|"RANGE"
          )
        ),
        TableStatus = "CREATING"|"UPDATING"|"DELETING"|"ACTIVE"|"INACCESSIBLE_ENCRYPTION_CREDENTIALS"|"ARCHIVING"|"ARCHIVED",
        CreationDateTime = as.POSIXct(
          "2015-01-01"
        ),
        ProvisionedThroughput = list(
          LastIncreaseDateTime = as.POSIXct(
            "2015-01-01"
          ),
          LastDecreaseDateTime = as.POSIXct(
            "2015-01-01"
          ),
          NumberOfDecreasesToday = 123,
          ReadCapacityUnits = 123,
          WriteCapacityUnits = 123
        ),
        TableSizeBytes = 123,
        ItemCount = 123,
        TableArn = "string",
        TableId = "string",
        BillingModeSummary = list(
          BillingMode = "PROVISIONED"|"PAY_PER_REQUEST",
          LastUpdateToPayPerRequestDateTime = as.POSIXct(
            "2015-01-01"
          )
        ),
        LocalSecondaryIndexes = list(
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
            IndexSizeBytes = 123,
            ItemCount = 123,
            IndexArn = "string"
          )
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
            IndexStatus = "CREATING"|"UPDATING"|"DELETING"|"ACTIVE",
            Backfilling = TRUE|FALSE,
            ProvisionedThroughput = list(
              LastIncreaseDateTime = as.POSIXct(
                "2015-01-01"
              ),
              LastDecreaseDateTime = as.POSIXct(
                "2015-01-01"
              ),
              NumberOfDecreasesToday = 123,
              ReadCapacityUnits = 123,
              WriteCapacityUnits = 123
            ),
            IndexSizeBytes = 123,
            ItemCount = 123,
            IndexArn = "string"
          )
        ),
        StreamSpecification = list(
          StreamEnabled = TRUE|FALSE,
          StreamViewType = "NEW_IMAGE"|"OLD_IMAGE"|"NEW_AND_OLD_IMAGES"|"KEYS_ONLY"
        ),
        LatestStreamLabel = "string",
        LatestStreamArn = "string",
        GlobalTableVersion = "string",
        Replicas = list(
          list(
            RegionName = "string",
            ReplicaStatus = "CREATING"|"CREATION_FAILED"|"UPDATING"|"DELETING"|"ACTIVE"|"REGION_DISABLED"|"INACCESSIBLE_ENCRYPTION_CREDENTIALS",
            ReplicaStatusDescription = "string",
            ReplicaStatusPercentProgress = "string",
            KMSMasterKeyId = "string",
            ProvisionedThroughputOverride = list(
              ReadCapacityUnits = 123
            ),
            GlobalSecondaryIndexes = list(
              list(
                IndexName = "string",
                ProvisionedThroughputOverride = list(
                  ReadCapacityUnits = 123
                )
              )
            ),
            ReplicaInaccessibleDateTime = as.POSIXct(
              "2015-01-01"
            ),
            ReplicaTableClassSummary = list(
              TableClass = "STANDARD"|"STANDARD_INFREQUENT_ACCESS",
              LastUpdateDateTime = as.POSIXct(
                "2015-01-01"
              )
            )
          )
        ),
        RestoreSummary = list(
          SourceBackupArn = "string",
          SourceTableArn = "string",
          RestoreDateTime = as.POSIXct(
            "2015-01-01"
          ),
          RestoreInProgress = TRUE|FALSE
        ),
        SSEDescription = list(
          Status = "ENABLING"|"ENABLED"|"DISABLING"|"DISABLED"|"UPDATING",
          SSEType = "AES256"|"KMS",
          KMSMasterKeyArn = "string",
          InaccessibleEncryptionDateTime = as.POSIXct(
            "2015-01-01"
          )
        ),
        ArchivalSummary = list(
          ArchivalDateTime = as.POSIXct(
            "2015-01-01"
          ),
          ArchivalReason = "string",
          ArchivalBackupArn = "string"
        ),
        TableClassSummary = list(
          TableClass = "STANDARD"|"STANDARD_INFREQUENT_ACCESS",
          LastUpdateDateTime = as.POSIXct(
            "2015-01-01"
          )
        ),
        DeletionProtectionEnabled = TRUE|FALSE
      )
    )

### Request syntax

    svc$restore_table_to_point_in_time(
      SourceTableArn = "string",
      SourceTableName = "string",
      TargetTableName = "string",
      UseLatestRestorableTime = TRUE|FALSE,
      RestoreDateTime = as.POSIXct(
        "2015-01-01"
      ),
      BillingModeOverride = "PROVISIONED"|"PAY_PER_REQUEST",
      GlobalSecondaryIndexOverride = list(
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
      ),
      LocalSecondaryIndexOverride = list(
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
          )
        )
      ),
      ProvisionedThroughputOverride = list(
        ReadCapacityUnits = 123,
        WriteCapacityUnits = 123
      ),
      SSESpecificationOverride = list(
        Enabled = TRUE|FALSE,
        SSEType = "AES256"|"KMS",
        KMSMasterKeyId = "string"
      )
    )
