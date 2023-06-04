<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>redshiftserverless_list_table_restore_status</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns information about an array of TableRestoreStatus objects

### Description

Returns information about an array of `TableRestoreStatus` objects.

### Usage

    redshiftserverless_list_table_restore_status(maxResults, namespaceName,
      nextToken, workgroupName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="redshiftserverless_list_table_restore_status_:_maxResults">maxResults</code></td>
<td><p>An optional parameter that specifies the maximum number of
results to return. You can use nextToken to display the next page of
results.</p></td>
</tr>
<tr class="even">
<td><code
id="redshiftserverless_list_table_restore_status_:_namespaceName">namespaceName</code></td>
<td><p>The namespace from which to list all of the statuses of
<code>restore_table_from_snapshot</code> operations .</p></td>
</tr>
<tr class="odd">
<td><code
id="redshiftserverless_list_table_restore_status_:_nextToken">nextToken</code></td>
<td><p>If your initial <code>list_table_restore_status</code> operation
returns a nextToken, you can include the returned <code>nextToken</code>
in following <code>list_table_restore_status</code> operations. This
will return results on the next page.</p></td>
</tr>
<tr class="even">
<td><code
id="redshiftserverless_list_table_restore_status_:_workgroupName">workgroupName</code></td>
<td><p>The workgroup from which to list all of the statuses of
<code>restore_table_from_snapshot</code> operations.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      nextToken = "string",
      tableRestoreStatuses = list(
        list(
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
    )

### Request syntax

    svc$list_table_restore_status(
      maxResults = 123,
      namespaceName = "string",
      nextToken = "string",
      workgroupName = "string"
    )
