<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>rds_describe_export_tasks</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns information about a snapshot or cluster export to Amazon S3

### Description

Returns information about a snapshot or cluster export to Amazon S3.
This API operation supports pagination.

### Usage

    rds_describe_export_tasks(ExportTaskIdentifier, SourceArn, Filters,
      Marker, MaxRecords, SourceType)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="rds_describe_export_tasks_:_ExportTaskIdentifier">ExportTaskIdentifier</code></td>
<td><p>The identifier of the snapshot or cluster export task to be
described.</p></td>
</tr>
<tr class="even">
<td><code
id="rds_describe_export_tasks_:_SourceArn">SourceArn</code></td>
<td><p>The Amazon Resource Name (ARN) of the snapshot or cluster
exported to Amazon S3.</p></td>
</tr>
<tr class="odd">
<td><code id="rds_describe_export_tasks_:_Filters">Filters</code></td>
<td><p>Filters specify one or more snapshot or cluster exports to
describe. The filters are specified as name-value pairs that define what
to include in the output. Filter names and values are
case-sensitive.</p>
<p>Supported filters include the following:</p>
<ul>
<li><p><code>export-task-identifier</code> - An identifier for the
snapshot or cluster export task.</p></li>
<li><p><code>s3-bucket</code> - The Amazon S3 bucket the data is
exported to.</p></li>
<li><p><code>source-arn</code> - The Amazon Resource Name (ARN) of the
snapshot or cluster exported to Amazon S3.</p></li>
<li><p><code>status</code> - The status of the export task. Must be
lowercase. Valid statuses are the following:</p>
<ul>
<li><p><code>canceled</code></p></li>
<li><p><code>canceling</code></p></li>
<li><p><code>complete</code></p></li>
<li><p><code>failed</code></p></li>
<li><p><code>in_progress</code></p></li>
<li><p><code>starting</code></p></li>
</ul></li>
</ul></td>
</tr>
<tr class="even">
<td><code id="rds_describe_export_tasks_:_Marker">Marker</code></td>
<td><p>An optional pagination token provided by a previous
<code>describe_export_tasks</code> request. If you specify this
parameter, the response includes only records beyond the marker, up to
the value specified by the <code>MaxRecords</code> parameter.</p></td>
</tr>
<tr class="odd">
<td><code
id="rds_describe_export_tasks_:_MaxRecords">MaxRecords</code></td>
<td><p>The maximum number of records to include in the response. If more
records exist than the specified value, a pagination token called a
marker is included in the response. You can use the marker in a later
<code>describe_export_tasks</code> request to retrieve the remaining
results.</p>
<p>Default: 100</p>
<p>Constraints: Minimum 20, maximum 100.</p></td>
</tr>
<tr class="even">
<td><code
id="rds_describe_export_tasks_:_SourceType">SourceType</code></td>
<td><p>The type of source for the export.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Marker = "string",
      ExportTasks = list(
        list(
          ExportTaskIdentifier = "string",
          SourceArn = "string",
          ExportOnly = list(
            "string"
          ),
          SnapshotTime = as.POSIXct(
            "2015-01-01"
          ),
          TaskStartTime = as.POSIXct(
            "2015-01-01"
          ),
          TaskEndTime = as.POSIXct(
            "2015-01-01"
          ),
          S3Bucket = "string",
          S3Prefix = "string",
          IamRoleArn = "string",
          KmsKeyId = "string",
          Status = "string",
          PercentProgress = 123,
          TotalExtractedDataInGB = 123,
          FailureCause = "string",
          WarningMessage = "string",
          SourceType = "SNAPSHOT"|"CLUSTER"
        )
      )
    )

### Request syntax

    svc$describe_export_tasks(
      ExportTaskIdentifier = "string",
      SourceArn = "string",
      Filters = list(
        list(
          Name = "string",
          Values = list(
            "string"
          )
        )
      ),
      Marker = "string",
      MaxRecords = 123,
      SourceType = "SNAPSHOT"|"CLUSTER"
    )
