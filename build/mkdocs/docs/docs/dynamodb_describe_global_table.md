<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>dynamodb_describe_global_table</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns information about the specified global table

### Description

Returns information about the specified global table.

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

### Usage

    dynamodb_describe_global_table(GlobalTableName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="dynamodb_describe_global_table_:_GlobalTableName">GlobalTableName</code></td>
<td><p>[required] The name of the global table.</p></td>
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

    svc$describe_global_table(
      GlobalTableName = "string"
    )
