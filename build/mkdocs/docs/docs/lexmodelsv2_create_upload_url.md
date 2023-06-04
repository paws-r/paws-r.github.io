<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lexmodelsv2_create_upload_url</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets a pre-signed S3 write URL that you use to upload the zip archive when importing a bot or a bot locale

### Description

Gets a pre-signed S3 write URL that you use to upload the zip archive
when importing a bot or a bot locale.

### Usage

    lexmodelsv2_create_upload_url()

### Value

A list with the following syntax:

    list(
      importId = "string",
      uploadUrl = "string"
    )

### Request syntax

    svc$create_upload_url()
