<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>dynamodb_delete_table</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## The DeleteTable operation deletes a table and all of its items

### Description

The `delete_table` operation deletes a table and all of its items. After
a `delete_table` request, the specified table is in the `DELETING` state
until DynamoDB completes the deletion. If the table is in the `ACTIVE`
state, you can delete it. If a table is in `CREATING` or `UPDATING`
states, then DynamoDB returns a `ResourceInUseException`. If the
specified table does not exist, DynamoDB returns a
`ResourceNotFoundException`. If table is already in the `DELETING`
state, no error is returned.

This operation only applies to [Version 2019.11.21
(Current)](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/globaltables.V2.html)
of global tables.

DynamoDB might continue to accept data read and write operations, such
as `get_item` and `put_item`, on a table in the `DELETING` state until
the table deletion is complete.

When you delete a table, any indexes on that table are also deleted.

If you have DynamoDB Streams enabled on the table, then the
corresponding stream on that table goes into the `DISABLED` state, and
the stream is automatically deleted after 24 hours.

Use the `describe_table` action to check the status of the table.

### Usage

    dynamodb_delete_table(TableName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="dynamodb_delete_table_:_TableName">TableName</code></td>
<td><p>[required] The name of the table to delete.</p></td>
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

    svc$delete_table(
      TableName = "string"
    )

### Examples

    ## Not run: 
    # This example deletes the Music table.
    svc$delete_table(
      TableName = "Music"
    )

    ## End(Not run)
