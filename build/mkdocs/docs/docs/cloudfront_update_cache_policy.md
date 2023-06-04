<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudfront_update_cache_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates a cache policy configuration

### Description

Updates a cache policy configuration.

When you update a cache policy configuration, all the fields are updated
with the values provided in the request. You cannot update some fields
independent of others. To update a cache policy configuration:

1.  Use `get_cache_policy_config` to get the current configuration.

2.  Locally modify the fields in the cache policy configuration that you
    want to update.

3.  Call `update_cache_policy` by providing the entire cache policy
    configuration, including the fields that you modified and those that
    you didn't.

### Usage

    cloudfront_update_cache_policy(CachePolicyConfig, Id, IfMatch)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudfront_update_cache_policy_:_CachePolicyConfig">CachePolicyConfig</code></td>
<td><p>[required] A cache policy configuration.</p></td>
</tr>
<tr class="even">
<td><code id="cloudfront_update_cache_policy_:_Id">Id</code></td>
<td><p>[required] The unique identifier for the cache policy that you
are updating. The identifier is returned in a cache behavior's
<code>CachePolicyId</code> field in the response to
<code>get_distribution_config</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudfront_update_cache_policy_:_IfMatch">IfMatch</code></td>
<td><p>The version of the cache policy that you are updating. The
version is returned in the cache policy's <code>ETag</code> field in the
response to <code>get_cache_policy_config</code>.</p></td>
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
      ETag = "string"
    )

### Request syntax

    svc$update_cache_policy(
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
      Id = "string",
      IfMatch = "string"
    )
