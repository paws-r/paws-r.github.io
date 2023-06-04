<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>qldb_describe_journal_s3_export</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns information about a journal export job, including the ledger name, export ID, creation time, current status, and the parameters of the original export creation request

### Description

Returns information about a journal export job, including the ledger
name, export ID, creation time, current status, and the parameters of
the original export creation request.

This action does not return any expired export jobs. For more
information, see [Export job
expiration](https://docs.aws.amazon.com/qldb/latest/developerguide/export-journal.request.html#export-journal.request.expiration)
in the *Amazon QLDB Developer Guide*.

If the export job with the given `ExportId` doesn't exist, then throws
`ResourceNotFoundException`.

If the ledger with the given `Name` doesn't exist, then throws
`ResourceNotFoundException`.

### Usage

    qldb_describe_journal_s3_export(Name, ExportId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="qldb_describe_journal_s3_export_:_Name">Name</code></td>
<td><p>[required] The name of the ledger.</p></td>
</tr>
<tr class="even">
<td><code
id="qldb_describe_journal_s3_export_:_ExportId">ExportId</code></td>
<td><p>[required] The UUID (represented in Base62-encoded text) of the
journal export job to describe.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ExportDescription = list(
        LedgerName = "string",
        ExportId = "string",
        ExportCreationTime = as.POSIXct(
          "2015-01-01"
        ),
        Status = "IN_PROGRESS"|"COMPLETED"|"CANCELLED",
        InclusiveStartTime = as.POSIXct(
          "2015-01-01"
        ),
        ExclusiveEndTime = as.POSIXct(
          "2015-01-01"
        ),
        S3ExportConfiguration = list(
          Bucket = "string",
          Prefix = "string",
          EncryptionConfiguration = list(
            ObjectEncryptionType = "SSE_KMS"|"SSE_S3"|"NO_ENCRYPTION",
            KmsKeyArn = "string"
          )
        ),
        RoleArn = "string",
        OutputFormat = "ION_BINARY"|"ION_TEXT"|"JSON"
      )
    )

### Request syntax

    svc$describe_journal_s3_export(
      Name = "string",
      ExportId = "string"
    )
