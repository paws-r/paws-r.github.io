<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>storagegateway_delete_file_share</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a file share from an S3 File Gateway

### Description

Deletes a file share from an S3 File Gateway. This operation is only
supported for S3 File Gateways.

### Usage

    storagegateway_delete_file_share(FileShareARN, ForceDelete)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="storagegateway_delete_file_share_:_FileShareARN">FileShareARN</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the file share to be
deleted.</p></td>
</tr>
<tr class="even">
<td><code
id="storagegateway_delete_file_share_:_ForceDelete">ForceDelete</code></td>
<td><p>If this value is set to <code>true</code>, the operation deletes
a file share immediately and aborts all data uploads to Amazon Web
Services. Otherwise, the file share is not deleted until all data is
uploaded to Amazon Web Services. This process aborts the data upload
process, and the file share enters the <code>FORCE_DELETING</code>
status.</p>
<p>Valid Values: <code>true</code> | <code>false</code></p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      FileShareARN = "string"
    )

### Request syntax

    svc$delete_file_share(
      FileShareARN = "string",
      ForceDelete = TRUE|FALSE
    )
