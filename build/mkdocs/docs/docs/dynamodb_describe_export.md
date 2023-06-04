<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>dynamodb_describe_export</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes an existing table export

### Description

Describes an existing table export.

### Usage

    dynamodb_describe_export(ExportArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="dynamodb_describe_export_:_ExportArn">ExportArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) associated with the
export.</p></td>
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

    svc$describe_export(
      ExportArn = "string"
    )
