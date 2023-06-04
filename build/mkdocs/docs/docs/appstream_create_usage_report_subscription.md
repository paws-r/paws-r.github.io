<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>appstream_create_usage_report_subscription</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a usage report subscription

### Description

Creates a usage report subscription. Usage reports are generated daily.

### Usage

    appstream_create_usage_report_subscription()

### Value

A list with the following syntax:

    list(
      S3BucketName = "string",
      Schedule = "DAILY"
    )

### Request syntax

    svc$create_usage_report_subscription()
