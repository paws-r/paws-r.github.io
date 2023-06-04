<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>storagegateway_describe_cache</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns information about the cache of a gateway

### Description

Returns information about the cache of a gateway. This operation is only
supported in the cached volume, tape, and file gateway types.

The response includes disk IDs that are configured as cache, and it
includes the amount of cache allocated and used.

### Usage

    storagegateway_describe_cache(GatewayARN)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="storagegateway_describe_cache_:_GatewayARN">GatewayARN</code></td>
<td><p>[required]</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      GatewayARN = "string",
      DiskIds = list(
        "string"
      ),
      CacheAllocatedInBytes = 123,
      CacheUsedPercentage = 123.0,
      CacheDirtyPercentage = 123.0,
      CacheHitPercentage = 123.0,
      CacheMissPercentage = 123.0
    )

### Request syntax

    svc$describe_cache(
      GatewayARN = "string"
    )

### Examples

    ## Not run: 
    # Returns information about the cache of a gateway.
    svc$describe_cache(
      GatewayARN = "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B"
    )

    ## End(Not run)
