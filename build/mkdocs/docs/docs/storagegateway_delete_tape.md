<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>storagegateway_delete_tape</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the specified virtual tape

### Description

Deletes the specified virtual tape. This operation is only supported in
the tape gateway type.

### Usage

    storagegateway_delete_tape(GatewayARN, TapeARN,
      BypassGovernanceRetention)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="storagegateway_delete_tape_:_GatewayARN">GatewayARN</code></td>
<td><p>[required] The unique Amazon Resource Name (ARN) of the gateway
that the virtual tape to delete is associated with. Use the
<code>list_gateways</code> operation to return a list of gateways for
your account and Amazon Web Services Region.</p></td>
</tr>
<tr class="even">
<td><code id="storagegateway_delete_tape_:_TapeARN">TapeARN</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the virtual tape to
delete.</p></td>
</tr>
<tr class="odd">
<td><code
id="storagegateway_delete_tape_:_BypassGovernanceRetention">BypassGovernanceRetention</code></td>
<td><p>Set to <code>TRUE</code> to delete an archived tape that belongs
to a custom pool with tape retention lock. Only archived tapes with tape
retention lock set to <code>governance</code> can be deleted. Archived
tapes with tape retention lock set to <code>compliance</code> can't be
deleted.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      TapeARN = "string"
    )

### Request syntax

    svc$delete_tape(
      GatewayARN = "string",
      TapeARN = "string",
      BypassGovernanceRetention = TRUE|FALSE
    )

### Examples

    ## Not run: 
    # This example deletes the specified virtual tape.
    svc$delete_tape(
      GatewayARN = "arn:aws:storagegateway:us-east-1:204469490176:gateway/sgw-12A3456B",
      TapeARN = "arn:aws:storagegateway:us-east-1:204469490176:tape/TEST05A2A0"
    )

    ## End(Not run)
