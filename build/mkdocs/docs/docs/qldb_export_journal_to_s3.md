<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>qldb_export_journal_to_s3</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Exports journal contents within a date and time range from a ledger into a specified Amazon Simple Storage Service (Amazon S3) bucket

### Description

Exports journal contents within a date and time range from a ledger into
a specified Amazon Simple Storage Service (Amazon S3) bucket. A journal
export job can write the data objects in either the text or binary
representation of Amazon Ion format, or in *JSON Lines* text format.

If the ledger with the given `Name` doesn't exist, then throws
`ResourceNotFoundException`.

If the ledger with the given `Name` is in `CREATING` status, then throws
`ResourcePreconditionNotMetException`.

You can initiate up to two concurrent journal export requests for each
ledger. Beyond this limit, journal export requests throw
`LimitExceededException`.

### Usage

    qldb_export_journal_to_s3(Name, InclusiveStartTime, ExclusiveEndTime,
      S3ExportConfiguration, RoleArn, OutputFormat)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="qldb_export_journal_to_s3_:_Name">Name</code></td>
<td><p>[required] The name of the ledger.</p></td>
</tr>
<tr class="even">
<td><code
id="qldb_export_journal_to_s3_:_InclusiveStartTime">InclusiveStartTime</code></td>
<td><p>[required] The inclusive start date and time for the range of
journal contents to export.</p>
<p>The <code>InclusiveStartTime</code> must be in <code
style="white-space: pre;">⁠ISO 8601⁠</code> date and time format and in
Universal Coordinated Time (UTC). For example: <code
style="white-space: pre;">⁠2019-06-13T21:36:34Z⁠</code>.</p>
<p>The <code>InclusiveStartTime</code> must be before
<code>ExclusiveEndTime</code>.</p>
<p>If you provide an <code>InclusiveStartTime</code> that is before the
ledger's <code>CreationDateTime</code>, Amazon QLDB defaults it to the
ledger's <code>CreationDateTime</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="qldb_export_journal_to_s3_:_ExclusiveEndTime">ExclusiveEndTime</code></td>
<td><p>[required] The exclusive end date and time for the range of
journal contents to export.</p>
<p>The <code>ExclusiveEndTime</code> must be in <code
style="white-space: pre;">⁠ISO 8601⁠</code> date and time format and in
Universal Coordinated Time (UTC). For example: <code
style="white-space: pre;">⁠2019-06-13T21:36:34Z⁠</code>.</p>
<p>The <code>ExclusiveEndTime</code> must be less than or equal to the
current UTC date and time.</p></td>
</tr>
<tr class="even">
<td><code
id="qldb_export_journal_to_s3_:_S3ExportConfiguration">S3ExportConfiguration</code></td>
<td><p>[required] The configuration settings of the Amazon S3 bucket
destination for your export request.</p></td>
</tr>
<tr class="odd">
<td><code id="qldb_export_journal_to_s3_:_RoleArn">RoleArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the IAM role that
grants QLDB permissions for a journal export job to do the
following:</p>
<ul>
<li><p>Write objects into your Amazon S3 bucket.</p></li>
<li><p>(Optional) Use your customer managed key in Key Management
Service (KMS) for server-side encryption of your exported data.</p></li>
</ul>
<p>To pass a role to QLDB when requesting a journal export, you must
have permissions to perform the <code>iam:PassRole</code> action on the
IAM role resource. This is required for all journal export
requests.</p></td>
</tr>
<tr class="even">
<td><code
id="qldb_export_journal_to_s3_:_OutputFormat">OutputFormat</code></td>
<td><p>The output format of your exported journal data. A journal export
job can write the data objects in either the text or binary
representation of <a
href="https://docs.aws.amazon.com/qldb/latest/developerguide/ion.html">Amazon
Ion</a> format, or in <a href="https://jsonlines.org/">JSON Lines</a>
text format.</p>
<p>Default: <code>ION_TEXT</code></p>
<p>In JSON Lines format, each journal block in an exported data object
is a valid JSON object that is delimited by a newline. You can use this
format to directly integrate JSON exports with analytics tools such as
Amazon Athena and Glue because these services can parse
newline-delimited JSON automatically.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ExportId = "string"
    )

### Request syntax

    svc$export_journal_to_s3(
      Name = "string",
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
