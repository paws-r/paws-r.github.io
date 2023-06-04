<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codebuild_update_report_group</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates a report group

### Description

Updates a report group.

### Usage

    codebuild_update_report_group(arn, exportConfig, tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="codebuild_update_report_group_:_arn">arn</code></td>
<td><p>[required] The ARN of the report group to update.</p></td>
</tr>
<tr class="even">
<td><code
id="codebuild_update_report_group_:_exportConfig">exportConfig</code></td>
<td><p>Used to specify an updated export type. Valid values are:</p>
<ul>
<li><p><code>S3</code>: The report results are exported to an S3
bucket.</p></li>
<li><p><code>NO_EXPORT</code>: The report results are not
exported.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code id="codebuild_update_report_group_:_tags">tags</code></td>
<td><p>An updated list of tag key and value pairs associated with this
report group.</p>
<p>These tags are available for use by Amazon Web Services services that
support CodeBuild report group tags.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      reportGroup = list(
        arn = "string",
        name = "string",
        type = "TEST"|"CODE_COVERAGE",
        exportConfig = list(
          exportConfigType = "S3"|"NO_EXPORT",
          s3Destination = list(
            bucket = "string",
            bucketOwner = "string",
            path = "string",
            packaging = "ZIP"|"NONE",
            encryptionKey = "string",
            encryptionDisabled = TRUE|FALSE
          )
        ),
        created = as.POSIXct(
          "2015-01-01"
        ),
        lastModified = as.POSIXct(
          "2015-01-01"
        ),
        tags = list(
          list(
            key = "string",
            value = "string"
          )
        ),
        status = "ACTIVE"|"DELETING"
      )
    )

### Request syntax

    svc$update_report_group(
      arn = "string",
      exportConfig = list(
        exportConfigType = "S3"|"NO_EXPORT",
        s3Destination = list(
          bucket = "string",
          bucketOwner = "string",
          path = "string",
          packaging = "ZIP"|"NONE",
          encryptionKey = "string",
          encryptionDisabled = TRUE|FALSE
        )
      ),
      tags = list(
        list(
          key = "string",
          value = "string"
        )
      )
    )
