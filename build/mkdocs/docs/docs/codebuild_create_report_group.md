<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codebuild_create_report_group</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a report group

### Description

Creates a report group. A report group contains a collection of reports.

### Usage

    codebuild_create_report_group(name, type, exportConfig, tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="codebuild_create_report_group_:_name">name</code></td>
<td><p>[required] The name of the report group.</p></td>
</tr>
<tr class="even">
<td><code id="codebuild_create_report_group_:_type">type</code></td>
<td><p>[required] The type of report group.</p></td>
</tr>
<tr class="odd">
<td><code
id="codebuild_create_report_group_:_exportConfig">exportConfig</code></td>
<td><p>[required] A <code>ReportExportConfig</code> object that contains
information about where the report group test results are
exported.</p></td>
</tr>
<tr class="even">
<td><code id="codebuild_create_report_group_:_tags">tags</code></td>
<td><p>A list of tag key and value pairs associated with this report
group.</p>
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

    svc$create_report_group(
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
      tags = list(
        list(
          key = "string",
          value = "string"
        )
      )
    )
