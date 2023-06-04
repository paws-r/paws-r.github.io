<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workspacesweb_delete_trust_store</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the trust store

### Description

Deletes the trust store.

### Usage

    workspacesweb_delete_trust_store(trustStoreArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="workspacesweb_delete_trust_store_:_trustStoreArn">trustStoreArn</code></td>
<td><p>[required] The ARN of the trust store.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_trust_store(
      trustStoreArn = "string"
    )
