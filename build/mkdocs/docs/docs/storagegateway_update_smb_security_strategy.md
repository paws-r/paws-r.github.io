<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>storagegateway_update_smb_security_strategy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the SMB security strategy on a file gateway

### Description

Updates the SMB security strategy on a file gateway. This action is only
supported in file gateways.

This API is called Security level in the User Guide.

A higher security level can affect performance of the gateway.

### Usage

    storagegateway_update_smb_security_strategy(GatewayARN,
      SMBSecurityStrategy)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="storagegateway_update_smb_security_strategy_:_GatewayARN">GatewayARN</code></td>
<td><p>[required]</p></td>
</tr>
<tr class="even">
<td><code
id="storagegateway_update_smb_security_strategy_:_SMBSecurityStrategy">SMBSecurityStrategy</code></td>
<td><p>[required] Specifies the type of security strategy.</p>
<p>ClientSpecified: if you use this option, requests are established
based on what is negotiated by the client. This option is recommended
when you want to maximize compatibility across different clients in your
environment. Supported only in S3 File Gateway.</p>
<p>MandatorySigning: if you use this option, file gateway only allows
connections from SMBv2 or SMBv3 clients that have signing enabled. This
option works with SMB clients on Microsoft Windows Vista, Windows Server
2008 or newer.</p>
<p>MandatoryEncryption: if you use this option, file gateway only allows
connections from SMBv3 clients that have encryption enabled. This option
is highly recommended for environments that handle sensitive data. This
option works with SMB clients on Microsoft Windows 8, Windows Server
2012 or newer.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      GatewayARN = "string"
    )

### Request syntax

    svc$update_smb_security_strategy(
      GatewayARN = "string",
      SMBSecurityStrategy = "ClientSpecified"|"MandatorySigning"|"MandatoryEncryption"
    )
