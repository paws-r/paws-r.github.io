<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudfront_get_origin_request_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets an origin request policy, including the following metadata:

### Description

Gets an origin request policy, including the following metadata:

-   The policy's identifier.

-   The date and time when the policy was last modified.

To get an origin request policy, you must provide the policy's
identifier. If the origin request policy is attached to a distribution's
cache behavior, you can get the policy's identifier using
`list_distributions` or `get_distribution`. If the origin request policy
is not attached to a cache behavior, you can get the identifier using
`list_origin_request_policies`.

### Usage

    cloudfront_get_origin_request_policy(Id)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="cloudfront_get_origin_request_policy_:_Id">Id</code></td>
<td><p>[required] The unique identifier for the origin request policy.
If the origin request policy is attached to a distribution's cache
behavior, you can get the policy's identifier using
<code>list_distributions</code> or <code>get_distribution</code>. If the
origin request policy is not attached to a cache behavior, you can get
the identifier using <code>list_origin_request_policies</code>.</p></td>
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
      ETag = "string"
    )

### Request syntax

    svc$get_origin_request_policy(
      Id = "string"
    )
