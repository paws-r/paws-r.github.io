<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>storagegateway_update_smb_local_groups</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the list of Active Directory users and groups that have special permissions for SMB file shares on the gateway

### Description

Updates the list of Active Directory users and groups that have special
permissions for SMB file shares on the gateway.

### Usage

    storagegateway_update_smb_local_groups(GatewayARN, SMBLocalGroups)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="storagegateway_update_smb_local_groups_:_GatewayARN">GatewayARN</code></td>
<td><p>[required]</p></td>
</tr>
<tr class="even">
<td><code
id="storagegateway_update_smb_local_groups_:_SMBLocalGroups">SMBLocalGroups</code></td>
<td><p>[required] A list of Active Directory users and groups that you
want to grant special permissions for SMB file shares on the
gateway.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      GatewayARN = "string"
    )

### Request syntax

    svc$update_smb_local_groups(
      GatewayARN = "string",
      SMBLocalGroups = list(
        GatewayAdmins = list(
          "string"
        )
      )
    )
