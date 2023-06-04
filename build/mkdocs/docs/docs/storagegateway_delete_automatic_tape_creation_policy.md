<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>storagegateway_delete_automatic_tape_creation_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the automatic tape creation policy of a gateway

### Description

Deletes the automatic tape creation policy of a gateway. If you delete
this policy, new virtual tapes must be created manually. Use the Amazon
Resource Name (ARN) of the gateway in your request to remove the policy.

### Usage

    storagegateway_delete_automatic_tape_creation_policy(GatewayARN)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="storagegateway_delete_automatic_tape_creation_policy_:_GatewayARN">GatewayARN</code></td>
<td><p>[required]</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      GatewayARN = "string"
    )

### Request syntax

    svc$delete_automatic_tape_creation_policy(
      GatewayARN = "string"
    )
