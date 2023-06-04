<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>dynamodb_create_table</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## The CreateTable operation adds a new table to your account

### Description

The `create_table` operation adds a new table to your account. In an
Amazon Web Services account, table names must be unique within each
Region. That is, you can have two tables with same name if you create
the tables in different Regions.

`create_table` is an asynchronous operation. Upon receiving a
`create_table` request, DynamoDB immediately returns a response with a
`TableStatus` of `CREATING`. After the table is created, DynamoDB sets
the `TableStatus` to `ACTIVE`. You can perform read and write operations
only on an `ACTIVE` table.

You can optionally define secondary indexes on the new table, as part of
the `create_table` operation. If you want to create multiple tables with
secondary indexes on them, you must create the tables sequentially. Only
one table with secondary indexes can be in the `CREATING` state at any
given time.

You can use the `describe_table` action to check the table status.

### Usage

    dynamodb_create_table(AttributeDefinitions, TableName, KeySchema,
      LocalSecondaryIndexes, GlobalSecondaryIndexes, BillingMode,
      ProvisionedThroughput, StreamSpecification, SSESpecification, Tags,
      TableClass, DeletionProtectionEnabled)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="dynamodb_create_table_:_AttributeDefinitions">AttributeDefinitions</code></td>
<td><p>[required] An array of attributes that describe the key schema
for the table and indexes.</p></td>
</tr>
<tr class="even">
<td><code id="dynamodb_create_table_:_TableName">TableName</code></td>
<td><p>[required] The name of the table to create.</p></td>
</tr>
<tr class="odd">
<td><code id="dynamodb_create_table_:_KeySchema">KeySchema</code></td>
<td><p>[required] Specifies the attributes that make up the primary key
for a table or an index. The attributes in <code>KeySchema</code> must
also be defined in the <code>AttributeDefinitions</code> array. For more
information, see <a
href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/HowItWorks.html">Data
Model</a> in the <em>Amazon DynamoDB Developer Guide</em>.</p>
<p>Each <code>KeySchemaElement</code> in the array is composed of:</p>
<ul>
<li><p><code>AttributeName</code> - The name of this key
attribute.</p></li>
<li><p><code>KeyType</code> - The role that the key attribute will
assume:</p>
<ul>
<li><p><code>HASH</code> - partition key</p></li>
<li><p><code>RANGE</code> - sort key</p></li>
</ul></li>
</ul>
<p>The partition key of an item is also known as its <em>hash
attribute</em>. The term "hash attribute" derives from the DynamoDB
usage of an internal hash function to evenly distribute data items
across partitions, based on their partition key values.</p>
<p>The sort key of an item is also known as its <em>range
attribute</em>. The term "range attribute" derives from the way DynamoDB
stores items with the same partition key physically close together, in
sorted order by the sort key value.</p>
<p>For a simple primary key (partition key), you must provide exactly
one element with a <code>KeyType</code> of <code>HASH</code>.</p>
<p>For a composite primary key (partition key and sort key), you must
provide exactly two elements, in this order: The first element must have
a <code>KeyType</code> of <code>HASH</code>, and the second element must
have a <code>KeyType</code> of <code>RANGE</code>.</p>
<p>For more information, see <a
href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/WorkingWithTables.html#WorkingWithTables.primary.key">Working
with Tables</a> in the <em>Amazon DynamoDB Developer
Guide</em>.</p></td>
</tr>
<tr class="even">
<td><code
id="dynamodb_create_table_:_LocalSecondaryIndexes">LocalSecondaryIndexes</code></td>
<td><p>One or more local secondary indexes (the maximum is 5) to be
created on the table. Each index is scoped to a given partition key
value. There is a 10 GB size limit per partition key value; otherwise,
the size of a local secondary index is unconstrained.</p>
<p>Each local secondary index in the array includes the following:</p>
<ul>
<li><p><code>IndexName</code> - The name of the local secondary index.
Must be unique only for this table.</p></li>
<li><p><code>KeySchema</code> - Specifies the key schema for the local
secondary index. The key schema must begin with the same partition key
as the table.</p></li>
<li><p><code>Projection</code> - Specifies attributes that are copied
(projected) from the table into the index. These are in addition to the
primary key attributes and index key attributes, which are automatically
projected. Each attribute specification is composed of:</p>
<ul>
<li><p><code>ProjectionType</code> - One of the following:</p>
<ul>
<li><p><code>KEYS_ONLY</code> - Only the index and primary keys are
projected into the index.</p></li>
<li><p><code>INCLUDE</code> - Only the specified table attributes are
projected into the index. The list of projected attributes is in
<code>NonKeyAttributes</code>.</p></li>
<li><p><code>ALL</code> - All of the table attributes are projected into
the index.</p></li>
</ul></li>
<li><p><code>NonKeyAttributes</code> - A list of one or more non-key
attribute names that are projected into the secondary index. The total
count of attributes provided in <code>NonKeyAttributes</code>, summed
across all of the secondary indexes, must not exceed 100. If you project
the same attribute into two different indexes, this counts as two
distinct attributes when determining the total.</p></li>
</ul></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="dynamodb_create_table_:_GlobalSecondaryIndexes">GlobalSecondaryIndexes</code></td>
<td><p>One or more global secondary indexes (the maximum is 20) to be
created on the table. Each global secondary index in the array includes
the following:</p>
<ul>
<li><p><code>IndexName</code> - The name of the global secondary index.
Must be unique only for this table.</p></li>
<li><p><code>KeySchema</code> - Specifies the key schema for the global
secondary index.</p></li>
<li><p><code>Projection</code> - Specifies attributes that are copied
(projected) from the table into the index. These are in addition to the
primary key attributes and index key attributes, which are automatically
projected. Each attribute specification is composed of:</p>
<ul>
<li><p><code>ProjectionType</code> - One of the following:</p>
<ul>
<li><p><code>KEYS_ONLY</code> - Only the index and primary keys are
projected into the index.</p></li>
<li><p><code>INCLUDE</code> - Only the specified table attributes are
projected into the index. The list of projected attributes is in
<code>NonKeyAttributes</code>.</p></li>
<li><p><code>ALL</code> - All of the table attributes are projected into
the index.</p></li>
</ul></li>
<li><p><code>NonKeyAttributes</code> - A list of one or more non-key
attribute names that are projected into the secondary index. The total
count of attributes provided in <code>NonKeyAttributes</code>, summed
across all of the secondary indexes, must not exceed 100. If you project
the same attribute into two different indexes, this counts as two
distinct attributes when determining the total.</p></li>
</ul></li>
<li><p><code>ProvisionedThroughput</code> - The provisioned throughput
settings for the global secondary index, consisting of read and write
capacity units.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="dynamodb_create_table_:_BillingMode">BillingMode</code></td>
<td><p>Controls how you are charged for read and write throughput and
how you manage capacity. This setting can be changed later.</p>
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
<tr class="odd">
<td><code
id="dynamodb_create_table_:_ProvisionedThroughput">ProvisionedThroughput</code></td>
<td><p>Represents the provisioned throughput settings for a specified
table or index. The settings can be modified using the
<code>update_table</code> operation.</p>
<p>If you set BillingMode as <code>PROVISIONED</code>, you must specify
this property. If you set BillingMode as <code>PAY_PER_REQUEST</code>,
you cannot specify this property.</p>
<p>For current minimum and maximum provisioned throughput values, see <a
href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ServiceQuotas.html">Service,
Account, and Table Quotas</a> in the <em>Amazon DynamoDB Developer
Guide</em>.</p></td>
</tr>
<tr class="even">
<td><code
id="dynamodb_create_table_:_StreamSpecification">StreamSpecification</code></td>
<td><p>The settings for DynamoDB Streams on the table. These settings
consist of:</p>
<ul>
<li><p><code>StreamEnabled</code> - Indicates whether DynamoDB Streams
is to be enabled (true) or disabled (false).</p></li>
<li><p><code>StreamViewType</code> - When an item in the table is
modified, <code>StreamViewType</code> determines what information is
written to the table's stream. Valid values for
<code>StreamViewType</code> are:</p>
<ul>
<li><p><code>KEYS_ONLY</code> - Only the key attributes of the modified
item are written to the stream.</p></li>
<li><p><code>NEW_IMAGE</code> - The entire item, as it appears after it
was modified, is written to the stream.</p></li>
<li><p><code>OLD_IMAGE</code> - The entire item, as it appeared before
it was modified, is written to the stream.</p></li>
<li><p><code>NEW_AND_OLD_IMAGES</code> - Both the new and the old item
images of the item are written to the stream.</p></li>
</ul></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="dynamodb_create_table_:_SSESpecification">SSESpecification</code></td>
<td><p>Represents the settings used to enable server-side
encryption.</p></td>
</tr>
<tr class="even">
<td><code id="dynamodb_create_table_:_Tags">Tags</code></td>
<td><p>A list of key-value pairs to label the table. For more
information, see <a
href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Tagging.html">Tagging
for DynamoDB</a>.</p></td>
</tr>
<tr class="odd">
<td><code id="dynamodb_create_table_:_TableClass">TableClass</code></td>
<td><p>The table class of the new table. Valid values are
<code>STANDARD</code> and
<code>STANDARD_INFREQUENT_ACCESS</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="dynamodb_create_table_:_DeletionProtectionEnabled">DeletionProtectionEnabled</code></td>
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

    svc$create_table(
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
          )
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
          ProvisionedThroughput = list(
            ReadCapacityUnits = 123,
            WriteCapacityUnits = 123
          )
        )
      ),
      BillingMode = "PROVISIONED"|"PAY_PER_REQUEST",
      ProvisionedThroughput = list(
        ReadCapacityUnits = 123,
        WriteCapacityUnits = 123
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
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      ),
      TableClass = "STANDARD"|"STANDARD_INFREQUENT_ACCESS",
      DeletionProtectionEnabled = TRUE|FALSE
    )

### Examples

    ## Not run: 
    # This example creates a table named Music.
    svc$create_table(
      AttributeDefinitions = list(
        list(
          AttributeName = "Artist",
          AttributeType = "S"
        ),
        list(
          AttributeName = "SongTitle",
          AttributeType = "S"
        )
      ),
      KeySchema = list(
        list(
          AttributeName = "Artist",
          KeyType = "HASH"
        ),
        list(
          AttributeName = "SongTitle",
          KeyType = "RANGE"
        )
      ),
      ProvisionedThroughput = list(
        ReadCapacityUnits = 5L,
        WriteCapacityUnits = 5L
      ),
      TableName = "Music"
    )

    ## End(Not run)
