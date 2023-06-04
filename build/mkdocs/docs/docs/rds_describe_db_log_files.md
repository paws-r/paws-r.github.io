<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>rds_describe_db_log_files</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of DB log files for the DB instance

### Description

Returns a list of DB log files for the DB instance.

This command doesn't apply to RDS Custom.

### Usage

    rds_describe_db_log_files(DBInstanceIdentifier, FilenameContains,
      FileLastWritten, FileSize, Filters, MaxRecords, Marker)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="rds_describe_db_log_files_:_DBInstanceIdentifier">DBInstanceIdentifier</code></td>
<td><p>[required] The customer-assigned name of the DB instance that
contains the log files you want to list.</p>
<p>Constraints:</p>
<ul>
<li><p>Must match the identifier of an existing DBInstance.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="rds_describe_db_log_files_:_FilenameContains">FilenameContains</code></td>
<td><p>Filters the available log files for log file names that contain
the specified string.</p></td>
</tr>
<tr class="odd">
<td><code
id="rds_describe_db_log_files_:_FileLastWritten">FileLastWritten</code></td>
<td><p>Filters the available log files for files written since the
specified date, in POSIX timestamp format with milliseconds.</p></td>
</tr>
<tr class="even">
<td><code id="rds_describe_db_log_files_:_FileSize">FileSize</code></td>
<td><p>Filters the available log files for files larger than the
specified size.</p></td>
</tr>
<tr class="odd">
<td><code id="rds_describe_db_log_files_:_Filters">Filters</code></td>
<td><p>This parameter isn't currently supported.</p></td>
</tr>
<tr class="even">
<td><code
id="rds_describe_db_log_files_:_MaxRecords">MaxRecords</code></td>
<td><p>The maximum number of records to include in the response. If more
records exist than the specified MaxRecords value, a pagination token
called a marker is included in the response so you can retrieve the
remaining results.</p></td>
</tr>
<tr class="odd">
<td><code id="rds_describe_db_log_files_:_Marker">Marker</code></td>
<td><p>The pagination token provided in the previous request. If this
parameter is specified the response includes only records beyond the
marker, up to MaxRecords.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      DescribeDBLogFiles = list(
        list(
          LogFileName = "string",
          LastWritten = 123,
          Size = 123
        )
      ),
      Marker = "string"
    )

### Request syntax

    svc$describe_db_log_files(
      DBInstanceIdentifier = "string",
      FilenameContains = "string",
      FileLastWritten = 123,
      FileSize = 123,
      Filters = list(
        list(
          Name = "string",
          Values = list(
            "string"
          )
        )
      ),
      MaxRecords = 123,
      Marker = "string"
    )
