<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>dynamodb_create_global_table</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a global table from an existing table

### Description

Creates a global table from an existing table. A global table creates a
replication relationship between two or more DynamoDB tables with the
same table name in the provided Regions.

This operation only applies to [Version 2017.11.29
(Legacy)](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/globaltables.V1.html)
of global tables. We recommend using [Version 2019.11.21
(Current)](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/globaltables.V2.html)
when creating new global tables, as it provides greater flexibility,
higher efficiency and consumes less write capacity than 2017.11.29
(Legacy). To determine which version you are using, see [Determining the
version](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/globaltables.DetermineVersion.html).
To update existing global tables from version 2017.11.29 (Legacy) to
version 2019.11.21 (Current), see [Updating global
tables](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/V2globaltables_upgrade.html).

If you want to add a new replica table to a global table, each of the
following conditions must be true:

-   The table must have the same primary key as all of the other
    replicas.

-   The table must have the same name as all of the other replicas.

-   The table must have DynamoDB Streams enabled, with the stream
    containing both the new and the old images of the item.

-   None of the replica tables in the global table can contain any data.

If global secondary indexes are specified, then the following conditions
must also be met:

-   The global secondary indexes must have the same name.

-   The global secondary indexes must have the same hash key and sort
    key (if present).

If local secondary indexes are specified, then the following conditions
must also be met:

-   The local secondary indexes must have the same name.

-   The local secondary indexes must have the same hash key and sort key
    (if present).

Write capacity settings should be set consistently across your replica
tables and secondary indexes. DynamoDB strongly recommends enabling auto
scaling to manage the write capacity settings for all of your global
tables replicas and indexes.

If you prefer to manage write capacity settings manually, you should
provision equal replicated write capacity units to your replica tables.
You should also provision equal replicated write capacity units to
matching secondary indexes across your global table.

### Usage

    dynamodb_create_global_table(GlobalTableName, ReplicationGroup)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="dynamodb_create_global_table_:_GlobalTableName">GlobalTableName</code></td>
<td><p>[required] The global table name.</p></td>
</tr>
<tr class="even">
<td><code
id="dynamodb_create_global_table_:_ReplicationGroup">ReplicationGroup</code></td>
<td><p>[required] The Regions where the global table needs to be
created.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      GlobalTableDescription = list(
        ReplicationGroup = list(
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
        GlobalTableArn = "string",
        CreationDateTime = as.POSIXct(
          "2015-01-01"
        ),
        GlobalTableStatus = "CREATING"|"ACTIVE"|"DELETING"|"UPDATING",
        GlobalTableName = "string"
      )
    )

### Request syntax

    svc$create_global_table(
      GlobalTableName = "string",
      ReplicationGroup = list(
        list(
          RegionName = "string"
        )
      )
    )
