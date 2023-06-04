<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>storagegateway_cancel_archival</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Cancels archiving of a virtual tape to the virtual tape shelf (VTS) after the archiving process is initiated

### Description

Cancels archiving of a virtual tape to the virtual tape shelf (VTS)
after the archiving process is initiated. This operation is only
supported in the tape gateway type.

### Usage

    storagegateway_cancel_archival(GatewayARN, TapeARN)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="storagegateway_cancel_archival_:_GatewayARN">GatewayARN</code></td>
<td><p>[required]</p></td>
</tr>
<tr class="even">
<td><code
id="storagegateway_cancel_archival_:_TapeARN">TapeARN</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the virtual tape you
want to cancel archiving for.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      TapeARN = "string"
    )

### Request syntax

    svc$cancel_archival(
      GatewayARN = "string",
      TapeARN = "string"
    )

### Examples

    ## Not run: 
    # Cancels archiving of a virtual tape to the virtual tape shelf (VTS)
    # after the archiving process is initiated.
    svc$cancel_archival(
      GatewayARN = "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B",
      TapeARN = "arn:aws:storagegateway:us-east-1:999999999999:tape/AMZN01A2A4"
    )

    ## End(Not run)
