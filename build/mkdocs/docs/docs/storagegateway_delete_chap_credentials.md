<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>storagegateway_delete_chap_credentials</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes Challenge-Handshake Authentication Protocol (CHAP) credentials for a specified iSCSI target and initiator pair

### Description

Deletes Challenge-Handshake Authentication Protocol (CHAP) credentials
for a specified iSCSI target and initiator pair. This operation is
supported in volume and tape gateway types.

### Usage

    storagegateway_delete_chap_credentials(TargetARN, InitiatorName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="storagegateway_delete_chap_credentials_:_TargetARN">TargetARN</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the iSCSI volume
target. Use the <code>describe_storedi_scsi_volumes</code> operation to
return to retrieve the TargetARN for specified VolumeARN.</p></td>
</tr>
<tr class="even">
<td><code
id="storagegateway_delete_chap_credentials_:_InitiatorName">InitiatorName</code></td>
<td><p>[required] The iSCSI initiator that connects to the
target.</p></td>
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

    svc$delete_chap_credentials(
      TargetARN = "string",
      InitiatorName = "string"
    )

### Examples

    ## Not run: 
    # Deletes Challenge-Handshake Authentication Protocol (CHAP) credentials
    # for a specified iSCSI target and initiator pair.
    svc$delete_chap_credentials(
      InitiatorName = "iqn.1991-05.com.microsoft:computername.domain.example.com",
      TargetARN = "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12..."
    )

    ## End(Not run)
