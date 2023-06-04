<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>storagegateway_reset_cache</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Resets all cache disks that have encountered an error and makes the disks available for reconfiguration as cache storage

### Description

Resets all cache disks that have encountered an error and makes the
disks available for reconfiguration as cache storage. If your cache disk
encounters an error, the gateway prevents read and write operations on
virtual tapes in the gateway. For example, an error can occur when a
disk is corrupted or removed from the gateway. When a cache is reset,
the gateway loses its cache storage. At this point, you can reconfigure
the disks as cache disks. This operation is only supported in the cached
volume and tape types.

If the cache disk you are resetting contains data that has not been
uploaded to Amazon S3 yet, that data can be lost. After you reset cache
disks, there will be no configured cache disks left in the gateway, so
you must configure at least one new cache disk for your gateway to
function properly.

### Usage

    storagegateway_reset_cache(GatewayARN)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="storagegateway_reset_cache_:_GatewayARN">GatewayARN</code></td>
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

    svc$reset_cache(
      GatewayARN = "string"
    )

### Examples

    ## Not run: 
    # Resets all cache disks that have encountered a error and makes the disks
    # available for reconfiguration as cache storage.
    svc$reset_cache(
      GatewayARN = "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-13B4567C"
    )

    ## End(Not run)
