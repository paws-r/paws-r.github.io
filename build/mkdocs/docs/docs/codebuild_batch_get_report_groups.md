<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codebuild_batch_get_report_groups</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns an array of report groups

### Description

Returns an array of report groups.

### Usage

    codebuild_batch_get_report_groups(reportGroupArns)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codebuild_batch_get_report_groups_:_reportGroupArns">reportGroupArns</code></td>
<td><p>[required] An array of report group ARNs that identify the report
groups to return.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      reportGroups = list(
        list(
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
      ),
      reportGroupsNotFound = list(
        "string"
      )
    )

### Request syntax

    svc$batch_get_report_groups(
      reportGroupArns = list(
        "string"
      )
    )
