<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>redshift_describe_table_restore_status</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the status of one or more table restore requests made using the RestoreTableFromClusterSnapshot API action

### Description

Lists the status of one or more table restore requests made using the
`restore_table_from_cluster_snapshot` API action. If you don't specify a
value for the `TableRestoreRequestId` parameter, then
`describe_table_restore_status` returns the status of all table restore
requests ordered by the date and time of the request in ascending order.
Otherwise `describe_table_restore_status` returns the status of the
table specified by `TableRestoreRequestId`.

### Usage

    redshift_describe_table_restore_status(ClusterIdentifier,
      TableRestoreRequestId, MaxRecords, Marker)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="redshift_describe_table_restore_status_:_ClusterIdentifier">ClusterIdentifier</code></td>
<td><p>The Amazon Redshift cluster that the table is being restored
to.</p></td>
</tr>
<tr class="even">
<td><code
id="redshift_describe_table_restore_status_:_TableRestoreRequestId">TableRestoreRequestId</code></td>
<td><p>The identifier of the table restore request to return status for.
If you don't specify a <code>TableRestoreRequestId</code> value, then
<code>describe_table_restore_status</code> returns the status of all
in-progress table restore requests.</p></td>
</tr>
<tr class="odd">
<td><code
id="redshift_describe_table_restore_status_:_MaxRecords">MaxRecords</code></td>
<td><p>The maximum number of records to include in the response. If more
records exist than the specified <code>MaxRecords</code> value, a
pagination token called a marker is included in the response so that the
remaining results can be retrieved.</p></td>
</tr>
<tr class="even">
<td><code
id="redshift_describe_table_restore_status_:_Marker">Marker</code></td>
<td><p>An optional pagination token provided by a previous
<code>describe_table_restore_status</code> request. If this parameter is
specified, the response includes only records beyond the marker, up to
the value specified by the <code>MaxRecords</code> parameter.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      TableRestoreStatusDetails = list(
        list(
          TableRestoreRequestId = "string",
          Status = "PENDING"|"IN_PROGRESS"|"SUCCEEDED"|"FAILED"|"CANCELED",
          Message = "string",
          RequestTime = as.POSIXct(
            "2015-01-01"
          ),
          ProgressInMegaBytes = 123,
          TotalDataInMegaBytes = 123,
          ClusterIdentifier = "string",
          SnapshotIdentifier = "string",
          SourceDatabaseName = "string",
          SourceSchemaName = "string",
          SourceTableName = "string",
          TargetDatabaseName = "string",
          TargetSchemaName = "string",
          NewTableName = "string"
        )
      ),
      Marker = "string"
    )

### Request syntax

    svc$describe_table_restore_status(
      ClusterIdentifier = "string",
      TableRestoreRequestId = "string",
      MaxRecords = 123,
      Marker = "string"
    )
