<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>dynamodb_list_global_tables</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists all global tables that have a replica in the specified Region

### Description

Lists all global tables that have a replica in the specified Region.

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

    dynamodb_list_global_tables(ExclusiveStartGlobalTableName, Limit,
      RegionName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="dynamodb_list_global_tables_:_ExclusiveStartGlobalTableName">ExclusiveStartGlobalTableName</code></td>
<td><p>The first global table name that this operation will
evaluate.</p></td>
</tr>
<tr class="even">
<td><code id="dynamodb_list_global_tables_:_Limit">Limit</code></td>
<td><p>The maximum number of table names to return, if the parameter is
not specified DynamoDB defaults to 100.</p>
<p>If the number of global tables DynamoDB finds reaches this limit, it
stops the operation and returns the table names collected up to that
point, with a table name in the
<code>LastEvaluatedGlobalTableName</code> to apply in a subsequent
operation to the <code>ExclusiveStartGlobalTableName</code>
parameter.</p></td>
</tr>
<tr class="odd">
<td><code
id="dynamodb_list_global_tables_:_RegionName">RegionName</code></td>
<td><p>Lists the global tables in a specific Region.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      GlobalTables = list(
        list(
          GlobalTableName = "string",
          ReplicationGroup = list(
            list(
              RegionName = "string"
            )
          )
        )
      ),
      LastEvaluatedGlobalTableName = "string"
    )

### Request syntax

    svc$list_global_tables(
      ExclusiveStartGlobalTableName = "string",
      Limit = 123,
      RegionName = "string"
    )
