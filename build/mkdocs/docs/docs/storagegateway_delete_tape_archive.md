<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>storagegateway_delete_tape_archive</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the specified virtual tape from the virtual tape shelf (VTS)

### Description

Deletes the specified virtual tape from the virtual tape shelf (VTS).
This operation is only supported in the tape gateway type.

### Usage

    storagegateway_delete_tape_archive(TapeARN, BypassGovernanceRetention)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="storagegateway_delete_tape_archive_:_TapeARN">TapeARN</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the virtual tape to
delete from the virtual tape shelf (VTS).</p></td>
</tr>
<tr class="even">
<td><code
id="storagegateway_delete_tape_archive_:_BypassGovernanceRetention">BypassGovernanceRetention</code></td>
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

    svc$delete_tape_archive(
      TapeARN = "string",
      BypassGovernanceRetention = TRUE|FALSE
    )

### Examples

    ## Not run: 
    # Deletes the specified virtual tape from the virtual tape shelf (VTS).
    svc$delete_tape_archive(
      TapeARN = "arn:aws:storagegateway:us-east-1:204469490176:tape/TEST05A2A0"
    )

    ## End(Not run)
