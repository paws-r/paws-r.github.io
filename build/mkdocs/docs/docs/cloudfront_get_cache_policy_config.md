<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudfront_get_cache_policy_config</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets a cache policy configuration

### Description

Gets a cache policy configuration.

To get a cache policy configuration, you must provide the policy's
identifier. If the cache policy is attached to a distribution's cache
behavior, you can get the policy's identifier using `list_distributions`
or `get_distribution`. If the cache policy is not attached to a cache
behavior, you can get the identifier using `list_cache_policies`.

### Usage

    cloudfront_get_cache_policy_config(Id)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="cloudfront_get_cache_policy_config_:_Id">Id</code></td>
<td><p>[required] The unique identifier for the cache policy. If the
cache policy is attached to a distribution's cache behavior, you can get
the policy's identifier using <code>list_distributions</code> or
<code>get_distribution</code>. If the cache policy is not attached to a
cache behavior, you can get the identifier using
<code>list_cache_policies</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
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
      ),
      ETag = "string"
    )

### Request syntax

    svc$get_cache_policy_config(
      Id = "string"
    )
