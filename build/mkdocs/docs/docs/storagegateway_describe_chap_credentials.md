<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>storagegateway_describe_chap_credentials</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns an array of Challenge-Handshake Authentication Protocol (CHAP) credentials information for a specified iSCSI target, one for each target-initiator pair

### Description

Returns an array of Challenge-Handshake Authentication Protocol (CHAP)
credentials information for a specified iSCSI target, one for each
target-initiator pair. This operation is supported in the volume and
tape gateway types.

### Usage

    storagegateway_describe_chap_credentials(TargetARN)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="storagegateway_describe_chap_credentials_:_TargetARN">TargetARN</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the iSCSI volume
target. Use the <code>describe_storedi_scsi_volumes</code> operation to
return to retrieve the TargetARN for specified VolumeARN.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ChapCredentials = list(
        list(
          TargetARN = "string",
          SecretToAuthenticateInitiator = "string",
          InitiatorName = "string",
          SecretToAuthenticateTarget = "string"
        )
      )
    )

### Request syntax

    svc$describe_chap_credentials(
      TargetARN = "string"
    )

### Examples

    ## Not run: 
    # Returns an array of Challenge-Handshake Authentication Protocol (CHAP)
    # credentials information for a specified iSCSI target, one for each
    # target-initiator pair.
    svc$describe_chap_credentials(
      TargetARN = "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12..."
    )

    ## End(Not run)
