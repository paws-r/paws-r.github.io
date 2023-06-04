<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudfront_get_response_headers_policy_config</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets a response headers policy configuration

### Description

Gets a response headers policy configuration.

To get a response headers policy configuration, you must provide the
policy's identifier. If the response headers policy is attached to a
distribution's cache behavior, you can get the policy's identifier using
`list_distributions` or `get_distribution`. If the response headers
policy is not attached to a cache behavior, you can get the identifier
using `list_response_headers_policies`.

### Usage

    cloudfront_get_response_headers_policy_config(Id)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudfront_get_response_headers_policy_config_:_Id">Id</code></td>
<td><p>[required] The identifier for the response headers policy.</p>
<p>If the response headers policy is attached to a distribution's cache
behavior, you can get the policy's identifier using
<code>list_distributions</code> or <code>get_distribution</code>. If the
response headers policy is not attached to a cache behavior, you can get
the identifier using
<code>list_response_headers_policies</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ResponseHeadersPolicyConfig = list(
        Comment = "string",
        Name = "string",
        CorsConfig = list(
          AccessControlAllowOrigins = list(
            Quantity = 123,
            Items = list(
              "string"
            )
          ),
          AccessControlAllowHeaders = list(
            Quantity = 123,
            Items = list(
              "string"
            )
          ),
          AccessControlAllowMethods = list(
            Quantity = 123,
            Items = list(
              "GET"|"POST"|"OPTIONS"|"PUT"|"DELETE"|"PATCH"|"HEAD"|"ALL"
            )
          ),
          AccessControlAllowCredentials = TRUE|FALSE,
          AccessControlExposeHeaders = list(
            Quantity = 123,
            Items = list(
              "string"
            )
          ),
          AccessControlMaxAgeSec = 123,
          OriginOverride = TRUE|FALSE
        ),
        SecurityHeadersConfig = list(
          XSSProtection = list(
            Override = TRUE|FALSE,
            Protection = TRUE|FALSE,
            ModeBlock = TRUE|FALSE,
            ReportUri = "string"
          ),
          FrameOptions = list(
            Override = TRUE|FALSE,
            FrameOption = "DENY"|"SAMEORIGIN"
          ),
          ReferrerPolicy = list(
            Override = TRUE|FALSE,
            ReferrerPolicy = "no-referrer"|"no-referrer-when-downgrade"|"origin"|"origin-when-cross-origin"|"same-origin"|"strict-origin"|"strict-origin-when-cross-origin"|"unsafe-url"
          ),
          ContentSecurityPolicy = list(
            Override = TRUE|FALSE,
            ContentSecurityPolicy = "string"
          ),
          ContentTypeOptions = list(
            Override = TRUE|FALSE
          ),
          StrictTransportSecurity = list(
            Override = TRUE|FALSE,
            IncludeSubdomains = TRUE|FALSE,
            Preload = TRUE|FALSE,
            AccessControlMaxAgeSec = 123
          )
        ),
        ServerTimingHeadersConfig = list(
          Enabled = TRUE|FALSE,
          SamplingRate = 123.0
        ),
        CustomHeadersConfig = list(
          Quantity = 123,
          Items = list(
            list(
              Header = "string",
              Value = "string",
              Override = TRUE|FALSE
            )
          )
        ),
        RemoveHeadersConfig = list(
          Quantity = 123,
          Items = list(
            list(
              Header = "string"
            )
          )
        )
      ),
      ETag = "string"
    )

### Request syntax

    svc$get_response_headers_policy_config(
      Id = "string"
    )
