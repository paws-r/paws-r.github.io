<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>storagegateway_list_automatic_tape_creation_policies</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the automatic tape creation policies for a gateway

### Description

Lists the automatic tape creation policies for a gateway. If there are
no automatic tape creation policies for the gateway, it returns an empty
list.

This operation is only supported for tape gateways.

### Usage

    storagegateway_list_automatic_tape_creation_policies(GatewayARN)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="storagegateway_list_automatic_tape_creation_policies_:_GatewayARN">GatewayARN</code></td>
<td></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      AutomaticTapeCreationPolicyInfos = list(
        list(
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
      )
    )

### Request syntax

    svc$list_automatic_tape_creation_policies(
      GatewayARN = "string"
    )
