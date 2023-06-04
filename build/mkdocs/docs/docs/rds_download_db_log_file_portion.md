<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>rds_download_db_log_file_portion</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Downloads all or a portion of the specified log file, up to 1 MB in size

### Description

Downloads all or a portion of the specified log file, up to 1 MB in
size.

This command doesn't apply to RDS Custom.

### Usage

    rds_download_db_log_file_portion(DBInstanceIdentifier, LogFileName,
      Marker, NumberOfLines)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="rds_download_db_log_file_portion_:_DBInstanceIdentifier">DBInstanceIdentifier</code></td>
<td><p>[required] The customer-assigned name of the DB instance that
contains the log files you want to list.</p>
<p>Constraints:</p>
<ul>
<li><p>Must match the identifier of an existing DBInstance.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="rds_download_db_log_file_portion_:_LogFileName">LogFileName</code></td>
<td><p>[required] The name of the log file to be downloaded.</p></td>
</tr>
<tr class="odd">
<td><code
id="rds_download_db_log_file_portion_:_Marker">Marker</code></td>
<td><p>The pagination token provided in the previous request or "0". If
the Marker parameter is specified the response includes only records
beyond the marker until the end of the file or up to
NumberOfLines.</p></td>
</tr>
<tr class="even">
<td><code
id="rds_download_db_log_file_portion_:_NumberOfLines">NumberOfLines</code></td>
<td><p>The number of lines to download. If the number of lines specified
results in a file over 1 MB in size, the file is truncated at 1 MB in
size.</p>
<p>If the NumberOfLines parameter is specified, then the block of lines
returned can be from the beginning or the end of the log file, depending
on the value of the Marker parameter.</p>
<ul>
<li><p>If neither Marker or NumberOfLines are specified, the entire log
file is returned up to a maximum of 10000 lines, starting with the most
recent log entries first.</p></li>
<li><p>If NumberOfLines is specified and Marker isn't specified, then
the most recent lines from the end of the log file are
returned.</p></li>
<li><p>If Marker is specified as "0", then the specified number of lines
from the beginning of the log file are returned.</p></li>
<li><p>You can download the log file in blocks of lines by specifying
the size of the block using the NumberOfLines parameter, and by
specifying a value of "0" for the Marker parameter in your first
request. Include the Marker value returned in the response as the Marker
value for the next request, continuing until the AdditionalDataPending
response element returns false.</p></li>
</ul></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      LogFileData = "string",
      Marker = "string",
      AdditionalDataPending = TRUE|FALSE
    )

### Request syntax

    svc$download_db_log_file_portion(
      DBInstanceIdentifier = "string",
      LogFileName = "string",
      Marker = "string",
      NumberOfLines = 123
    )
