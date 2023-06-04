<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>fsx_delete_file_cache</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes an Amazon File Cache resource

### Description

Deletes an Amazon File Cache resource. After deletion, the cache no
longer exists, and its data is gone.

The `delete_file_cache` operation returns while the cache has the
`DELETING` status. You can check the cache deletion status by calling
the `describe_file_caches` operation, which returns a list of caches in
your account. If you pass the cache ID for a deleted cache, the
`describe_file_caches` operation returns a `FileCacheNotFound` error.

The data in a deleted cache is also deleted and can't be recovered by
any means.

### Usage

    fsx_delete_file_cache(FileCacheId, ClientRequestToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="fsx_delete_file_cache_:_FileCacheId">FileCacheId</code></td>
<td><p>[required] The ID of the cache that's being deleted.</p></td>
</tr>
<tr class="even">
<td><code
id="fsx_delete_file_cache_:_ClientRequestToken">ClientRequestToken</code></td>
<td></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      FileCacheId = "string",
      Lifecycle = "AVAILABLE"|"CREATING"|"DELETING"|"UPDATING"|"FAILED"
    )

### Request syntax

    svc$delete_file_cache(
      FileCacheId = "string",
      ClientRequestToken = "string"
    )
