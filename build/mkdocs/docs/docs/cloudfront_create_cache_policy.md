<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudfront_create_cache_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a cache policy

### Description

Creates a cache policy.

After you create a cache policy, you can attach it to one or more cache
behaviors. When it's attached to a cache behavior, the cache policy
determines the following:

-   The values that CloudFront includes in the *cache key*. These values
    can include HTTP headers, cookies, and URL query strings. CloudFront
    uses the cache key to find an object in its cache that it can return
    to the viewer.

-   The default, minimum, and maximum time to live (TTL) values that you
    want objects to stay in the CloudFront cache.

The headers, cookies, and query strings that are included in the cache
key are also included in requests that CloudFront sends to the origin.
CloudFront sends a request when it can't find an object in its cache
that matches the request's cache key. If you want to send values to the
origin but *not* include them in the cache key, use
`OriginRequestPolicy`.

For more information about cache policies, see [Controlling the cache
key](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-the-cache-key.html)
in the *Amazon CloudFront Developer Guide*.

### Usage

    cloudfront_create_cache_policy(CachePolicyConfig)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudfront_create_cache_policy_:_CachePolicyConfig">CachePolicyConfig</code></td>
<td><p>[required] A cache policy configuration.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      CachePolicy = list(
        Id = "string",
        LastModifiedTime = as.POSIXct(
          "2015-01-01"
        ),
        CachePolicyConfig = list(
          Comment = "string",
          Name = "string",
          DefaultTTL = 123,
          MaxTTL = 123,
          MinTTL = 123,
          ParametersInCacheKeyAndForwardedToOrigin = list(
            EnableAcceptEncodingGzip = TRUE|FALSE,
            EnableAcceptEncodingBrotli = TRUE|FALSE,
            HeadersConfig = list(
              HeaderBehavior = "none"|"whitelist",
              Headers = list(
                Quantity = 123,
                Items = list(
                  "string"
                )
              )
            ),
            CookiesConfig = list(
              CookieBehavior = "none"|"whitelist"|"allExcept"|"all",
              Cookies = list(
                Quantity = 123,
                Items = list(
                  "string"
                )
              )
            ),
            QueryStringsConfig = list(
              QueryStringBehavior = "none"|"whitelist"|"allExcept"|"all",
              QueryStrings = list(
                Quantity = 123,
                Items = list(
                  "string"
                )
              )
            )
          )
        )
      ),
      Location = "string",
      ETag = "string"
    )

### Request syntax

    svc$create_cache_policy(
      CachePolicyConfig = list(
        Comment = "string",
        Name = "string",
        DefaultTTL = 123,
        MaxTTL = 123,
        MinTTL = 123,
        ParametersInCacheKeyAndForwardedToOrigin = list(
          EnableAcceptEncodingGzip = TRUE|FALSE,
          EnableAcceptEncodingBrotli = TRUE|FALSE,
          HeadersConfig = list(
            HeaderBehavior = "none"|"whitelist",
            Headers = list(
              Quantity = 123,
              Items = list(
                "string"
              )
            )
          ),
          CookiesConfig = list(
            CookieBehavior = "none"|"whitelist"|"allExcept"|"all",
            Cookies = list(
              Quantity = 123,
              Items = list(
                "string"
              )
            )
          ),
          QueryStringsConfig = list(
            QueryStringBehavior = "none"|"whitelist"|"allExcept"|"all",
            QueryStrings = list(
              Quantity = 123,
              Items = list(
                "string"
              )
            )
          )
        )
      )
    )
