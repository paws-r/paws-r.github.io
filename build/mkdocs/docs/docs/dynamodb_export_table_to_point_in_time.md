<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>dynamodb_export_table_to_point_in_time</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Exports table data to an S3 bucket

### Description

Exports table data to an S3 bucket. The table must have point in time
recovery enabled, and you can export data from any time within the point
in time recovery window.

### Usage

    dynamodb_export_table_to_point_in_time(TableArn, ExportTime,
      ClientToken, S3Bucket, S3BucketOwner, S3Prefix, S3SseAlgorithm,
      S3SseKmsKeyId, ExportFormat)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="dynamodb_export_table_to_point_in_time_:_TableArn">TableArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) associated with the
table to export.</p></td>
</tr>
<tr class="even">
<td><code
id="dynamodb_export_table_to_point_in_time_:_ExportTime">ExportTime</code></td>
<td><p>Time in the past from which to export table data, counted in
seconds from the start of the Unix epoch. The table export will be a
snapshot of the table's state at this point in time.</p></td>
</tr>
<tr class="odd">
<td><code
id="dynamodb_export_table_to_point_in_time_:_ClientToken">ClientToken</code></td>
<td><p>Providing a <code>ClientToken</code> makes the call to
<code>ExportTableToPointInTimeInput</code> idempotent, meaning that
multiple identical calls have the same effect as one single call.</p>
<p>A client token is valid for 8 hours after the first request that uses
it is completed. After 8 hours, any request with the same client token
is treated as a new request. Do not resubmit the same request with the
same client token for more than 8 hours, or the result might not be
idempotent.</p>
<p>If you submit a request with the same client token but a change in
other parameters within the 8-hour idempotency window, DynamoDB returns
an <code>ImportConflictException</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="dynamodb_export_table_to_point_in_time_:_S3Bucket">S3Bucket</code></td>
<td><p>[required] The name of the Amazon S3 bucket to export the
snapshot to.</p></td>
</tr>
<tr class="odd">
<td><code
id="dynamodb_export_table_to_point_in_time_:_S3BucketOwner">S3BucketOwner</code></td>
<td><p>The ID of the Amazon Web Services account that owns the bucket
the export will be stored in.</p></td>
</tr>
<tr class="even">
<td><code
id="dynamodb_export_table_to_point_in_time_:_S3Prefix">S3Prefix</code></td>
<td><p>The Amazon S3 bucket prefix to use as the file name and path of
the exported snapshot.</p></td>
</tr>
<tr class="odd">
<td><code
id="dynamodb_export_table_to_point_in_time_:_S3SseAlgorithm">S3SseAlgorithm</code></td>
<td><p>Type of encryption used on the bucket where export data will be
stored. Valid values for <code>S3SseAlgorithm</code> are:</p>
<ul>
<li><p><code>AES256</code> - server-side encryption with Amazon S3
managed keys</p></li>
<li><p><code>KMS</code> - server-side encryption with KMS managed
keys</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="dynamodb_export_table_to_point_in_time_:_S3SseKmsKeyId">S3SseKmsKeyId</code></td>
<td><p>The ID of the KMS managed key used to encrypt the S3 bucket where
export data will be stored (if applicable).</p></td>
</tr>
<tr class="odd">
<td><code
id="dynamodb_export_table_to_point_in_time_:_ExportFormat">ExportFormat</code></td>
<td><p>The format for the exported data. Valid values for
<code>ExportFormat</code> are <code>DYNAMODB_JSON</code> or
<code>ION</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ExportDescription = list(
        ExportArn = "string",
        ExportStatus = "IN_PROGRESS"|"COMPLETED"|"FAILED",
        StartTime = as.POSIXct(
          "2015-01-01"
        ),
        EndTime = as.POSIXct(
          "2015-01-01"
        ),
        ExportManifest = "string",
        TableArn = "string",
        TableId = "string",
        ExportTime = as.POSIXct(
          "2015-01-01"
        ),
        ClientToken = "string",
        S3Bucket = "string",
        S3BucketOwner = "string",
        S3Prefix = "string",
        S3SseAlgorithm = "AES256"|"KMS",
        S3SseKmsKeyId = "string",
        FailureCode = "string",
        FailureMessage = "string",
        ExportFormat = "DYNAMODB_JSON"|"ION",
        BilledSizeBytes = 123,
        ItemCount = 123
      )
    )

### Request syntax

    svc$export_table_to_point_in_time(
      TableArn = "string",
      ExportTime = as.POSIXct(
        "2015-01-01"
      ),
      ClientToken = "string",
      S3Bucket = "string",
      S3BucketOwner = "string",
      S3Prefix = "string",
      S3SseAlgorithm = "AES256"|"KMS",
      S3SseKmsKeyId = "string",
      ExportFormat = "DYNAMODB_JSON"|"ION"
    )
