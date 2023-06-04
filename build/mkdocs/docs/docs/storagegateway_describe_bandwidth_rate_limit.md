<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>storagegateway_describe_bandwidth_rate_limit</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the bandwidth rate limits of a gateway

### Description

Returns the bandwidth rate limits of a gateway. By default, these limits
are not set, which means no bandwidth rate limiting is in effect. This
operation is supported only for the stored volume, cached volume, and
tape gateway types. To describe bandwidth rate limits for S3 file
gateways, use `describe_bandwidth_rate_limit_schedule`.

This operation returns a value for a bandwidth rate limit only if the
limit is set. If no limits are set for the gateway, then this operation
returns only the gateway ARN in the response body. To specify which
gateway to describe, use the Amazon Resource Name (ARN) of the gateway
in your request.

### Usage

    storagegateway_describe_bandwidth_rate_limit(GatewayARN)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="storagegateway_describe_bandwidth_rate_limit_:_GatewayARN">GatewayARN</code></td>
<td><p>[required]</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      GatewayARN = "string",
      AverageUploadRateLimitInBitsPerSec = 123,
      AverageDownloadRateLimitInBitsPerSec = 123
    )

### Request syntax

    svc$describe_bandwidth_rate_limit(
      GatewayARN = "string"
    )

### Examples

    ## Not run: 
    # Returns a value for a bandwidth rate limit if set. If not set, then only
    # the gateway ARN is returned.
    svc$describe_bandwidth_rate_limit(
      GatewayARN = "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B"
    )

    ## End(Not run)
