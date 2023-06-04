<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>storagegateway_update_chap_credentials</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the Challenge-Handshake Authentication Protocol (CHAP) credentials for a specified iSCSI target

### Description

Updates the Challenge-Handshake Authentication Protocol (CHAP)
credentials for a specified iSCSI target. By default, a gateway does not
have CHAP enabled; however, for added security, you might use it. This
operation is supported in the volume and tape gateway types.

When you update CHAP credentials, all existing connections on the target
are closed and initiators must reconnect with the new credentials.

### Usage

    storagegateway_update_chap_credentials(TargetARN,
      SecretToAuthenticateInitiator, InitiatorName,
      SecretToAuthenticateTarget)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="storagegateway_update_chap_credentials_:_TargetARN">TargetARN</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the iSCSI volume
target. Use the <code>describe_storedi_scsi_volumes</code> operation to
return the TargetARN for specified VolumeARN.</p></td>
</tr>
<tr class="even">
<td><code
id="storagegateway_update_chap_credentials_:_SecretToAuthenticateInitiator">SecretToAuthenticateInitiator</code></td>
<td><p>[required] The secret key that the initiator (for example, the
Windows client) must provide to participate in mutual CHAP with the
target.</p>
<p>The secret key must be between 12 and 16 bytes when encoded in
UTF-8.</p></td>
</tr>
<tr class="odd">
<td><code
id="storagegateway_update_chap_credentials_:_InitiatorName">InitiatorName</code></td>
<td><p>[required] The iSCSI initiator that connects to the
target.</p></td>
</tr>
<tr class="even">
<td><code
id="storagegateway_update_chap_credentials_:_SecretToAuthenticateTarget">SecretToAuthenticateTarget</code></td>
<td><p>The secret key that the target must provide to participate in
mutual CHAP with the initiator (e.g. Windows client).</p>
<p>Byte constraints: Minimum bytes of 12. Maximum bytes of 16.</p>
<p>The secret key must be between 12 and 16 bytes when encoded in
UTF-8.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      TargetARN = "string",
      InitiatorName = "string"
    )

### Request syntax

    svc$update_chap_credentials(
      TargetARN = "string",
      SecretToAuthenticateInitiator = "string",
      InitiatorName = "string",
      SecretToAuthenticateTarget = "string"
    )

### Examples

    ## Not run: 
    # Updates the Challenge-Handshake Authentication Protocol (CHAP)
    # credentials for a specified iSCSI target.
    svc$update_chap_credentials(
      InitiatorName = "iqn.1991-05.com.microsoft:computername.domain.example.com",
      SecretToAuthenticateInitiator = "111111111111",
      SecretToAuthenticateTarget = "222222222222",
      TargetARN = "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12..."
    )

    ## End(Not run)
