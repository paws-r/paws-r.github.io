<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>storagegateway_delete_tape_pool</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Delete a custom tape pool

### Description

Delete a custom tape pool. A custom tape pool can only be deleted if
there are no tapes in the pool and if there are no automatic tape
creation policies that reference the custom tape pool.

### Usage

    storagegateway_delete_tape_pool(PoolARN)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="storagegateway_delete_tape_pool_:_PoolARN">PoolARN</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the custom tape pool
to delete.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      PoolARN = "string"
    )

### Request syntax

    svc$delete_tape_pool(
      PoolARN = "string"
    )
