<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>storagegateway_update_automatic_tape_creation_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the automatic tape creation policy of a gateway

### Description

Updates the automatic tape creation policy of a gateway. Use this to
update the policy with a new set of automatic tape creation rules. This
is only supported for tape gateways.

By default, there is no automatic tape creation policy.

A gateway can have only one automatic tape creation policy.

### Usage

    storagegateway_update_automatic_tape_creation_policy(
      AutomaticTapeCreationRules, GatewayARN)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="storagegateway_update_automatic_tape_creation_policy_:_AutomaticTapeCreationRules">AutomaticTapeCreationRules</code></td>
<td><p>[required] An automatic tape creation policy consists of a list
of automatic tape creation rules. The rules determine when and how to
automatically create new tapes.</p></td>
</tr>
<tr class="even">
<td><code
id="storagegateway_update_automatic_tape_creation_policy_:_GatewayARN">GatewayARN</code></td>
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

    svc$update_automatic_tape_creation_policy(
      AutomaticTapeCreationRules = list(
        list(
          TapeBarcodePrefix = "string",
          PoolId = "string",
          TapeSizeInBytes = 123,
          MinimumNumTapes = 123,
          Worm = TRUE|FALSE
        )
      ),
      GatewayARN = "string"
    )
