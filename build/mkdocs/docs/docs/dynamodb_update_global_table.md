<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>dynamodb_update_global_table</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Adds or removes replicas in the specified global table

### Description

Adds or removes replicas in the specified global table. The global table
must already exist to be able to use this operation. Any replica to be
added must be empty, have the same name as the global table, have the
same key schema, have DynamoDB Streams enabled, and have the same
provisioned and maximum write capacity units.

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

This operation only applies to [Version
2017.11.29](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/globaltables.V1.html)
of global tables. If you are using global tables [Version
2019.11.21](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/globaltables.V2.html)
you can use `describe_table` instead.

Although you can use `update_global_table` to add replicas and remove
replicas in a single request, for simplicity we recommend that you issue
separate requests for adding or removing replicas.

If global secondary indexes are specified, then the following conditions
must also be met:

-   The global secondary indexes must have the same name.

-   The global secondary indexes must have the same hash key and sort
    key (if present).

-   The global secondary indexes must have the same provisioned and
    maximum write capacity units.

### Usage

    dynamodb_update_global_table(GlobalTableName, ReplicaUpdates)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="dynamodb_update_global_table_:_GlobalTableName">GlobalTableName</code></td>
<td><p>[required] The global table name.</p></td>
</tr>
<tr class="even">
<td><code
id="dynamodb_update_global_table_:_ReplicaUpdates">ReplicaUpdates</code></td>
<td><p>[required] A list of Regions that should be added or removed from
the global table.</p></td>
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

    svc$update_global_table(
      GlobalTableName = "string",
      ReplicaUpdates = list(
        list(
          Create = list(
            RegionName = "string"
          ),
          Delete = list(
            RegionName = "string"
          )
        )
      )
    )
