<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>storagegateway_set_smb_guest_password</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Sets the password for the guest user smbguest

### Description

Sets the password for the guest user `smbguest`. The `smbguest` user is
the user when the authentication method for the file share is set to
`GuestAccess`. This operation only supported for S3 File Gateways

### Usage

    storagegateway_set_smb_guest_password(GatewayARN, Password)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="storagegateway_set_smb_guest_password_:_GatewayARN">GatewayARN</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the S3 File Gateway
the SMB file share is associated with.</p></td>
</tr>
<tr class="even">
<td><code
id="storagegateway_set_smb_guest_password_:_Password">Password</code></td>
<td><p>[required] The password that you want to set for your SMB
server.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      GatewayARN = "string"
    )

### Request syntax

    svc$set_smb_guest_password(
      GatewayARN = "string",
      Password = "string"
    )
