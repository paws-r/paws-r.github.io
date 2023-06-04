<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>storagegateway_update_bandwidth_rate_limit</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the bandwidth rate limits of a gateway

### Description

Updates the bandwidth rate limits of a gateway. You can update both the
upload and download bandwidth rate limit or specify only one of the two.
If you don't set a bandwidth rate limit, the existing rate limit
remains. This operation is supported only for the stored volume, cached
volume, and tape gateway types. To update bandwidth rate limits for S3
file gateways, use `update_bandwidth_rate_limit_schedule`.

By default, a gateway's bandwidth rate limits are not set. If you don't
set any limit, the gateway does not have any limitations on its
bandwidth usage and could potentially use the maximum available
bandwidth.

To specify which gateway to update, use the Amazon Resource Name (ARN)
of the gateway in your request.

### Usage

    storagegateway_update_bandwidth_rate_limit(GatewayARN,
      AverageUploadRateLimitInBitsPerSec,
      AverageDownloadRateLimitInBitsPerSec)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="storagegateway_update_bandwidth_rate_limit_:_GatewayARN">GatewayARN</code></td>
<td><p>[required]</p></td>
</tr>
<tr class="even">
<td><code
id="storagegateway_update_bandwidth_rate_limit_:_AverageUploadRateLimitInBitsPerSec">AverageUploadRateLimitInBitsPerSec</code></td>
<td><p>The average upload bandwidth rate limit in bits per
second.</p></td>
</tr>
<tr class="odd">
<td><code
id="storagegateway_update_bandwidth_rate_limit_:_AverageDownloadRateLimitInBitsPerSec">AverageDownloadRateLimitInBitsPerSec</code></td>
<td><p>The average download bandwidth rate limit in bits per
second.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      GatewayARN = "string"
    )

### Request syntax

    svc$update_bandwidth_rate_limit(
      GatewayARN = "string",
      AverageUploadRateLimitInBitsPerSec = 123,
      AverageDownloadRateLimitInBitsPerSec = 123
    )

### Examples

    ## Not run: 
    # Updates the bandwidth rate limits of a gateway. Both the upload and
    # download bandwidth rate limit can be set, or either one of the two. If a
    # new limit is not set, the existing rate limit remains.
    svc$update_bandwidth_rate_limit(
      AverageDownloadRateLimitInBitsPerSec = 102400L,
      AverageUploadRateLimitInBitsPerSec = 51200L,
      GatewayARN = "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B"
    )

    ## End(Not run)
