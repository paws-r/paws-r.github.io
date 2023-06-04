<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>storagegateway_describe_smb_settings</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets a description of a Server Message Block (SMB) file share settings from a file gateway

### Description

Gets a description of a Server Message Block (SMB) file share settings
from a file gateway. This operation is only supported for file gateways.

### Usage

    storagegateway_describe_smb_settings(GatewayARN)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="storagegateway_describe_smb_settings_:_GatewayARN">GatewayARN</code></td>
<td><p>[required]</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      GatewayARN = "string",
      DomainName = "string",
      ActiveDirectoryStatus = "ACCESS_DENIED"|"DETACHED"|"JOINED"|"JOINING"|"NETWORK_ERROR"|"TIMEOUT"|"UNKNOWN_ERROR",
      SMBGuestPasswordSet = TRUE|FALSE,
      SMBSecurityStrategy = "ClientSpecified"|"MandatorySigning"|"MandatoryEncryption",
      FileSharesVisible = TRUE|FALSE,
      SMBLocalGroups = list(
        GatewayAdmins = list(
          "string"
        )
      )
    )

### Request syntax

    svc$describe_smb_settings(
      GatewayARN = "string"
    )
