<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>storagegateway_retrieve_tape_archive</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves an archived virtual tape from the virtual tape shelf (VTS) to a tape gateway

### Description

Retrieves an archived virtual tape from the virtual tape shelf (VTS) to
a tape gateway. Virtual tapes archived in the VTS are not associated
with any gateway. However after a tape is retrieved, it is associated
with a gateway, even though it is also listed in the VTS, that is,
archive. This operation is only supported in the tape gateway type.

Once a tape is successfully retrieved to a gateway, it cannot be
retrieved again to another gateway. You must archive the tape again
before you can retrieve it to another gateway. This operation is only
supported in the tape gateway type.

### Usage

    storagegateway_retrieve_tape_archive(TapeARN, GatewayARN)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="storagegateway_retrieve_tape_archive_:_TapeARN">TapeARN</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the virtual tape you
want to retrieve from the virtual tape shelf (VTS).</p></td>
</tr>
<tr class="even">
<td><code
id="storagegateway_retrieve_tape_archive_:_GatewayARN">GatewayARN</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the gateway you want
to retrieve the virtual tape to. Use the <code>list_gateways</code>
operation to return a list of gateways for your account and Amazon Web
Services Region.</p>
<p>You retrieve archived virtual tapes to only one gateway and the
gateway must be a tape gateway.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      TapeARN = "string"
    )

### Request syntax

    svc$retrieve_tape_archive(
      TapeARN = "string",
      GatewayARN = "string"
    )

### Examples

    ## Not run: 
    # Retrieves an archived virtual tape from the virtual tape shelf (VTS) to
    # a gateway-VTL. Virtual tapes archived in the VTS are not associated with
    # any gateway.
    svc$retrieve_tape_archive(
      GatewayARN = "arn:aws:storagegateway:us-east-1:999999999999:gateway/sgw-12A3456B",
      TapeARN = "arn:aws:storagegateway:us-east-1:999999999999:tape/TEST0AA2AF"
    )

    ## End(Not run)
