<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudfront_update_origin_request_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates an origin request policy configuration

### Description

Updates an origin request policy configuration.

When you update an origin request policy configuration, all the fields
are updated with the values provided in the request. You cannot update
some fields independent of others. To update an origin request policy
configuration:

1.  Use `get_origin_request_policy_config` to get the current
    configuration.

2.  Locally modify the fields in the origin request policy configuration
    that you want to update.

3.  Call `update_origin_request_policy` by providing the entire origin
    request policy configuration, including the fields that you modified
    and those that you didn't.

### Usage

    cloudfront_update_origin_request_policy(OriginRequestPolicyConfig, Id,
      IfMatch)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudfront_update_origin_request_policy_:_OriginRequestPolicyConfig">OriginRequestPolicyConfig</code></td>
<td><p>[required] An origin request policy configuration.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudfront_update_origin_request_policy_:_Id">Id</code></td>
<td><p>[required] The unique identifier for the origin request policy
that you are updating. The identifier is returned in a cache behavior's
<code>OriginRequestPolicyId</code> field in the response to
<code>get_distribution_config</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudfront_update_origin_request_policy_:_IfMatch">IfMatch</code></td>
<td><p>The version of the origin request policy that you are updating.
The version is returned in the origin request policy's <code>ETag</code>
field in the response to
<code>get_origin_request_policy_config</code>.</p></td>
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

    svc$update_origin_request_policy(
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
      ),
      Id = "string",
      IfMatch = "string"
    )
