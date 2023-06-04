<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>storagegateway_list_file_shares</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets a list of the file shares for a specific S3 File Gateway, or the list of file shares that belong to the calling user account

### Description

Gets a list of the file shares for a specific S3 File Gateway, or the
list of file shares that belong to the calling user account. This
operation is only supported for S3 File Gateways.

### Usage

    storagegateway_list_file_shares(GatewayARN, Limit, Marker)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="storagegateway_list_file_shares_:_GatewayARN">GatewayARN</code></td>
<td><p>The Amazon Resource Name (ARN) of the gateway whose file shares
you want to list. If this field is not present, all file shares under
your account are listed.</p></td>
</tr>
<tr class="even">
<td><code id="storagegateway_list_file_shares_:_Limit">Limit</code></td>
<td><p>The maximum number of file shares to return in the response. The
value must be an integer with a value greater than zero.
Optional.</p></td>
</tr>
<tr class="odd">
<td><code
id="storagegateway_list_file_shares_:_Marker">Marker</code></td>
<td><p>Opaque pagination token returned from a previous ListFileShares
operation. If present, <code>Marker</code> specifies where to continue
the list from after a previous call to ListFileShares.
Optional.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Marker = "string",
      NextMarker = "string",
      FileShareInfoList = list(
        list(
          FileShareType = "NFS"|"SMB",
          FileShareARN = "string",
          FileShareId = "string",
          FileShareStatus = "string",
          GatewayARN = "string"
        )
      )
    )

### Request syntax

    svc$list_file_shares(
      GatewayARN = "string",
      Limit = 123,
      Marker = "string"
    )
