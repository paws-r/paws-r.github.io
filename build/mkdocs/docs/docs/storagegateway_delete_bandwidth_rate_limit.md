<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>storagegateway_delete_bandwidth_rate_limit</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the bandwidth rate limits of a gateway

### Description

Deletes the bandwidth rate limits of a gateway. You can delete either
the upload and download bandwidth rate limit, or you can delete both. If
you delete only one of the limits, the other limit remains unchanged. To
specify which gateway to work with, use the Amazon Resource Name (ARN)
of the gateway in your request. This operation is supported only for the
stored volume, cached volume, and tape gateway types.

### Usage

    storagegateway_delete_bandwidth_rate_limit(GatewayARN, BandwidthType)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="storagegateway_delete_bandwidth_rate_limit_:_GatewayARN">GatewayARN</code></td>
<td><p>[required]</p></td>
</tr>
<tr class="even">
<td><code
id="storagegateway_delete_bandwidth_rate_limit_:_BandwidthType">BandwidthType</code></td>
<td><p>[required] One of the BandwidthType values that indicates the
gateway bandwidth rate limit to delete.</p>
<p>Valid Values: <code>UPLOAD</code> | <code>DOWNLOAD</code> |
<code>ALL</code></p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      GatewayARN = "string"
    )

### Request syntax

    svc$delete_bandwidth_rate_limit(
      GatewayARN = "string",
      BandwidthType = "string"
    )

### Examples

    ## Not run: 
    # Deletes the bandwidth rate limits of a gateway; either the upload or
    # download limit, or both.
    svc$delete_bandwidth_rate_limit(
      BandwidthType = "All",
      GatewayARN = "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B"
    )

    ## End(Not run)
