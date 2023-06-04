<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>keyspaces_get_table</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns information about the table, including the table's name and current status, the keyspace name, configuration settings, and metadata

### Description

Returns information about the table, including the table's name and
current status, the keyspace name, configuration settings, and metadata.

To read table metadata using `get_table`, `Select` action permissions
for the table and system tables are required to complete the operation.

### Usage

    keyspaces_get_table(keyspaceName, tableName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="keyspaces_get_table_:_keyspaceName">keyspaceName</code></td>
<td><p>[required] The name of the keyspace that the table is stored
in.</p></td>
</tr>
<tr class="even">
<td><code id="keyspaces_get_table_:_tableName">tableName</code></td>
<td><p>[required] The name of the table.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      keyspaceName = "string",
      tableName = "string",
      resourceArn = "string",
      creationTimestamp = as.POSIXct(
        "2015-01-01"
      ),
      status = "ACTIVE"|"CREATING"|"UPDATING"|"DELETING"|"DELETED"|"RESTORING"|"INACCESSIBLE_ENCRYPTION_CREDENTIALS",
      schemaDefinition = list(
        allColumns = list(
          list(
            name = "string",
            type = "string"
          )
        ),
        partitionKeys = list(
          list(
            name = "string"
          )
        ),
        clusteringKeys = list(
          list(
            name = "string",
            orderBy = "ASC"|"DESC"
          )
        ),
        staticColumns = list(
          list(
            name = "string"
          )
        )
      ),
      capacitySpecification = list(
        throughputMode = "PAY_PER_REQUEST"|"PROVISIONED",
        readCapacityUnits = 123,
        writeCapacityUnits = 123,
        lastUpdateToPayPerRequestTimestamp = as.POSIXct(
          "2015-01-01"
        )
      ),
      encryptionSpecification = list(
        type = "CUSTOMER_MANAGED_KMS_KEY"|"AWS_OWNED_KMS_KEY",
        kmsKeyIdentifier = "string"
      ),
      pointInTimeRecovery = list(
        status = "ENABLED"|"DISABLED",
        earliestRestorableTimestamp = as.POSIXct(
          "2015-01-01"
        )
      ),
      ttl = list(
        status = "ENABLED"
      ),
      defaultTimeToLive = 123,
      comment = list(
        message = "string"
      ),
      clientSideTimestamps = list(
        status = "ENABLED"
      )
    )

### Request syntax

    svc$get_table(
      keyspaceName = "string",
      tableName = "string"
    )
