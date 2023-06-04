<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>redshiftserverless_get_table_restore_status</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns information about a TableRestoreStatus object

### Description

Returns information about a `TableRestoreStatus` object.

### Usage

    redshiftserverless_get_table_restore_status(tableRestoreRequestId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="redshiftserverless_get_table_restore_status_:_tableRestoreRequestId">tableRestoreRequestId</code></td>
<td><p>[required] The ID of the <code>restore_table_from_snapshot</code>
request to return status for.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      tableRestoreStatus = list(
        message = "string",
        namespaceName = "string",
        newTableName = "string",
        progressInMegaBytes = 123,
        requestTime = as.POSIXct(
          "2015-01-01"
        ),
        snapshotName = "string",
        sourceDatabaseName = "string",
        sourceSchemaName = "string",
        sourceTableName = "string",
        status = "string",
        tableRestoreRequestId = "string",
        targetDatabaseName = "string",
        targetSchemaName = "string",
        totalDataInMegaBytes = 123,
        workgroupName = "string"
      )
    )

### Request syntax

    svc$get_table_restore_status(
      tableRestoreRequestId = "string"
    )
