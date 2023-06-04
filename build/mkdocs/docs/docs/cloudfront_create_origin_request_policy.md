<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudfront_create_origin_request_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates an origin request policy

### Description

Creates an origin request policy.

After you create an origin request policy, you can attach it to one or
more cache behaviors. When it's attached to a cache behavior, the origin
request policy determines the values that CloudFront includes in
requests that it sends to the origin. Each request that CloudFront sends
to the origin includes the following:

-   The request body and the URL path (without the domain name) from the
    viewer request.

-   The headers that CloudFront automatically includes in every origin
    request, including `Host`, `User-Agent`, and `X-Amz-Cf-Id`.

-   All HTTP headers, cookies, and URL query strings that are specified
    in the cache policy or the origin request policy. These can include
    items from the viewer request and, in the case of headers,
    additional ones that are added by CloudFront.

CloudFront sends a request when it can't find a valid object in its
cache that matches the request. If you want to send values to the origin
and also include them in the cache key, use `CachePolicy`.

For more information about origin request policies, see [Controlling
origin
requests](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-origin-requests.html)
in the *Amazon CloudFront Developer Guide*.

### Usage

    cloudfront_create_origin_request_policy(OriginRequestPolicyConfig)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudfront_create_origin_request_policy_:_OriginRequestPolicyConfig">OriginRequestPolicyConfig</code></td>
<td><p>[required] An origin request policy configuration.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      OriginRequestPolicy = list(
        Id = "string",
        LastModifiedTime = as.POSIXct(
          "2015-01-01"
        ),
        OriginRequestPolicyConfig = list(
          Comment = "string",
          Name = "string",
          HeadersConfig = list(
            HeaderBehavior = "none"|"whitelist"|"allViewer"|"allViewerAndWhitelistCloudFront"|"allExcept",
            Headers = list(
              Quantity = 123,
              Items = list(
                "string"
              )
            )
          ),
          CookiesConfig = list(
            CookieBehavior = "none"|"whitelist"|"all"|"allExcept",
            Cookies = list(
              Quantity = 123,
              Items = list(
                "string"
              )
            )
          ),
          QueryStringsConfig = list(
            QueryStringBehavior = "none"|"whitelist"|"all"|"allExcept",
            QueryStrings = list(
              Quantity = 123,
              Items = list(
                "string"
              )
            )
          )
        )
      ),
      Location = "string",
      ETag = "string"
    )

### Request syntax

    svc$create_origin_request_policy(
      OriginRequestPolicyConfig = list(
        Comment = "string",
        Name = "string",
        HeadersConfig = list(
          HeaderBehavior = "none"|"whitelist"|"allViewer"|"allViewerAndWhitelistCloudFront"|"allExcept",
          Headers = list(
            Quantity = 123,
            Items = list(
              "string"
            )
          )
        ),
        CookiesConfig = list(
          CookieBehavior = "none"|"whitelist"|"all"|"allExcept",
          Cookies = list(
            Quantity = 123,
            Items = list(
              "string"
            )
          )
        ),
        QueryStringsConfig = list(
          QueryStringBehavior = "none"|"whitelist"|"all"|"allExcept",
          QueryStrings = list(
            Quantity = 123,
            Items = list(
              "string"
            )
          )
        )
      )
    )
