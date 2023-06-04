<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>storagegateway_update_smb_file_share_visibility</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Controls whether the shares on an S3 File Gateway are visible in a net view or browse list

### Description

Controls whether the shares on an S3 File Gateway are visible in a net
view or browse list. The operation is only supported for S3 File
Gateways.

### Usage

    storagegateway_update_smb_file_share_visibility(GatewayARN,
      FileSharesVisible)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="storagegateway_update_smb_file_share_visibility_:_GatewayARN">GatewayARN</code></td>
<td><p>[required]</p></td>
</tr>
<tr class="even">
<td><code
id="storagegateway_update_smb_file_share_visibility_:_FileSharesVisible">FileSharesVisible</code></td>
<td><p>[required] The shares on this gateway appear when listing
shares.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      GatewayARN = "string"
    )

### Request syntax

    svc$update_smb_file_share_visibility(
      GatewayARN = "string",
      FileSharesVisible = TRUE|FALSE
    )
