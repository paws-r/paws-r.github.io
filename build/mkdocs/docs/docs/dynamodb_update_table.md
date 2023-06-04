<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>dynamodb_update_table</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Modifies the provisioned throughput settings, global secondary indexes, or DynamoDB Streams settings for a given table

### Description

Modifies the provisioned throughput settings, global secondary indexes,
or DynamoDB Streams settings for a given table.

This operation only applies to [Version 2019.11.21
(Current)](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/globaltables.V2.html)
of global tables.

You can only perform one of the following operations at once:

-   Modify the provisioned throughput settings of the table.

-   Remove a global secondary index from the table.

-   Create a new global secondary index on the table. After the index
    begins backfilling, you can use `update_table` to perform other
    operations.

`update_table` is an asynchronous operation; while it is executing, the
table status changes from `ACTIVE` to `UPDATING`. While it is
`UPDATING`, you cannot issue another `update_table` request. When the
table returns to the `ACTIVE` state, the `update_table` operation is
complete.

### Usage

    dynamodb_update_table(AttributeDefinitions, TableName, BillingMode,
      ProvisionedThroughput, GlobalSecondaryIndexUpdates, StreamSpecification,
      SSESpecification, ReplicaUpdates, TableClass, DeletionProtectionEnabled)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="dynamodb_update_table_:_AttributeDefinitions">AttributeDefinitions</code></td>
<td><p>An array of attributes that describe the key schema for the table
and indexes. If you are adding a new global secondary index to the
table, <code>AttributeDefinitions</code> must include the key element(s)
of the new index.</p></td>
</tr>
<tr class="even">
<td><code id="dynamodb_update_table_:_TableName">TableName</code></td>
<td><p>[required] The name of the table to be updated.</p></td>
</tr>
<tr class="odd">
<td><code
id="dynamodb_update_table_:_BillingMode">BillingMode</code></td>
<td><p>Controls how you are charged for read and write throughput and
how you manage capacity. When switching from pay-per-request to
provisioned capacity, initial provisioned capacity values must be set.
The initial provisioned capacity values are estimated based on the
consumed read and write capacity of your table and global secondary
indexes over the past 30 minutes.</p>
<ul>
<li><p><code>PROVISIONED</code> - We recommend using
<code>PROVISIONED</code> for predictable workloads.
<code>PROVISIONED</code> sets the billing mode to <a
href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/HowItWorks.ReadWriteCapacityMode.html#HowItWorks.ProvisionedThroughput.Manual">Provisioned
Mode</a>.</p></li>
<li><p><code>PAY_PER_REQUEST</code> - We recommend using
<code>PAY_PER_REQUEST</code> for unpredictable workloads.
<code>PAY_PER_REQUEST</code> sets the billing mode to <a
href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/HowItWorks.ReadWriteCapacityMode.html#HowItWorks.OnDemand">On-Demand
Mode</a>.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="dynamodb_update_table_:_ProvisionedThroughput">ProvisionedThroughput</code></td>
<td><p>The new provisioned throughput settings for the specified table
or index.</p></td>
</tr>
<tr class="odd">
<td><code
id="dynamodb_update_table_:_GlobalSecondaryIndexUpdates">GlobalSecondaryIndexUpdates</code></td>
<td><p>An array of one or more global secondary indexes for the table.
For each index in the array, you can request one action:</p>
<ul>
<li><p><code>Create</code> - add a new global secondary index to the
table.</p></li>
<li><p><code>Update</code> - modify the provisioned throughput settings
of an existing global secondary index.</p></li>
<li><p><code>Delete</code> - remove a global secondary index from the
table.</p></li>
</ul>
<p>You can create or delete only one global secondary index per
<code>update_table</code> operation.</p>
<p>For more information, see <a
href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/GSI.OnlineOps.html">Managing
Global Secondary Indexes</a> in the <em>Amazon DynamoDB Developer
Guide</em>.</p></td>
</tr>
<tr class="even">
<td><code
id="dynamodb_update_table_:_StreamSpecification">StreamSpecification</code></td>
<td><p>Represents the DynamoDB Streams configuration for the table.</p>
<p>You receive a <code>ResourceInUseException</code> if you try to
enable a stream on a table that already has a stream, or if you try to
disable a stream on a table that doesn't have a stream.</p></td>
</tr>
<tr class="odd">
<td><code
id="dynamodb_update_table_:_SSESpecification">SSESpecification</code></td>
<td><p>The new server-side encryption settings for the specified
table.</p></td>
</tr>
<tr class="even">
<td><code
id="dynamodb_update_table_:_ReplicaUpdates">ReplicaUpdates</code></td>
<td><p>A list of replica update actions (create, delete, or update) for
the table.</p>
<p>This property only applies to <a
href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/globaltables.V2.html">Version
2019.11.21 (Current)</a> of global tables.</p></td>
</tr>
<tr class="odd">
<td><code id="dynamodb_update_table_:_TableClass">TableClass</code></td>
<td><p>The table class of the table to be updated. Valid values are
<code>STANDARD</code> and
<code>STANDARD_INFREQUENT_ACCESS</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="dynamodb_update_table_:_DeletionProtectionEnabled">DeletionProtectionEnabled</code></td>
<td><p>Indicates whether deletion protection is to be enabled (true) or
disabled (false) on the table.</p></td>
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

    svc$update_table(
      AttributeDefinitions = list(
        list(
          AttributeName = "string",
          AttributeType = "S"|"N"|"B"
        )
      ),
      TableName = "string",
      BillingMode = "PROVISIONED"|"PAY_PER_REQUEST",
      ProvisionedThroughput = list(
        ReadCapacityUnits = 123,
        WriteCapacityUnits = 123
      ),
      GlobalSecondaryIndexUpdates = list(
        list(
          Update = list(
            IndexName = "string",
            ProvisionedThroughput = list(
              ReadCapacityUnits = 123,
              WriteCapacityUnits = 123
            )
          ),
          Create = list(
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
          ),
          Delete = list(
            IndexName = "string"
          )
        )
      ),
      StreamSpecification = list(
        StreamEnabled = TRUE|FALSE,
        StreamViewType = "NEW_IMAGE"|"OLD_IMAGE"|"NEW_AND_OLD_IMAGES"|"KEYS_ONLY"
      ),
      SSESpecification = list(
        Enabled = TRUE|FALSE,
        SSEType = "AES256"|"KMS",
        KMSMasterKeyId = "string"
      ),
      ReplicaUpdates = list(
        list(
          Create = list(
            RegionName = "string",
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
            TableClassOverride = "STANDARD"|"STANDARD_INFREQUENT_ACCESS"
          ),
          Update = list(
            RegionName = "string",
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
            TableClassOverride = "STANDARD"|"STANDARD_INFREQUENT_ACCESS"
          ),
          Delete = list(
            RegionName = "string"
          )
        )
      ),
      TableClass = "STANDARD"|"STANDARD_INFREQUENT_ACCESS",
      DeletionProtectionEnabled = TRUE|FALSE
    )

### Examples

    ## Not run: 
    # This example increases the provisioned read and write capacity on the
    # Music table.
    svc$update_table(
      ProvisionedThroughput = list(
        ReadCapacityUnits = 10L,
        WriteCapacityUnits = 10L
      ),
      TableName = "MusicCollection"
    )

    ## End(Not run)
