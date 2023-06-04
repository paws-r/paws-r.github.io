<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>storagegateway_retrieve_tape_recovery_point</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves the recovery point for the specified virtual tape

### Description

Retrieves the recovery point for the specified virtual tape. This
operation is only supported in the tape gateway type.

A recovery point is a point in time view of a virtual tape at which all
the data on the tape is consistent. If your gateway crashes, virtual
tapes that have recovery points can be recovered to a new gateway.

The virtual tape can be retrieved to only one gateway. The retrieved
tape is read-only. The virtual tape can be retrieved to only a tape
gateway. There is no charge for retrieving recovery points.

### Usage

    storagegateway_retrieve_tape_recovery_point(TapeARN, GatewayARN)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="storagegateway_retrieve_tape_recovery_point_:_TapeARN">TapeARN</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the virtual tape for
which you want to retrieve the recovery point.</p></td>
</tr>
<tr class="even">
<td><code
id="storagegateway_retrieve_tape_recovery_point_:_GatewayARN">GatewayARN</code></td>
<td><p>[required]</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      TapeARN = "string"
    )

### Request syntax

    svc$retrieve_tape_recovery_point(
      TapeARN = "string",
      GatewayARN = "string"
    )

### Examples

    ## Not run: 
    # Retrieves the recovery point for the specified virtual tape.
    svc$retrieve_tape_recovery_point(
      GatewayARN = "arn:aws:storagegateway:us-east-1:999999999999:gateway/sgw-12A3456B",
      TapeARN = "arn:aws:storagegateway:us-east-1:999999999999:tape/TEST0AA2AF"
    )

    ## End(Not run)
