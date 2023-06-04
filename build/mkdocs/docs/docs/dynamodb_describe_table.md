<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>dynamodb_describe_table</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns information about the table, including the current status of the table, when it was created, the primary key schema, and any indexes on the table

### Description

Returns information about the table, including the current status of the
table, when it was created, the primary key schema, and any indexes on
the table.

This operation only applies to [Version 2019.11.21
(Current)](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/globaltables.V2.html)
of global tables.

If you issue a `describe_table` request immediately after a
`create_table` request, DynamoDB might return a
`ResourceNotFoundException`. This is because `describe_table` uses an
eventually consistent query, and the metadata for your table might not
be available at that moment. Wait for a few seconds, and then try the
`describe_table` request again.

### Usage

    dynamodb_describe_table(TableName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="dynamodb_describe_table_:_TableName">TableName</code></td>
<td><p>[required] The name of the table to describe.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Table = list(
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

    svc$describe_table(
      TableName = "string"
    )

### Examples

    ## Not run: 
    # This example describes the Music table.
    svc$describe_table(
      TableName = "Music"
    )

    ## End(Not run)
