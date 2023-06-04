<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudfront_update_response_headers_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates a response headers policy

### Description

Updates a response headers policy.

When you update a response headers policy, the entire policy is
replaced. You cannot update some policy fields independent of others. To
update a response headers policy configuration:

1.  Use `get_response_headers_policy_config` to get the current policy's
    configuration.

2.  Modify the fields in the response headers policy configuration that
    you want to update.

3.  Call `update_response_headers_policy`, providing the entire response
    headers policy configuration, including the fields that you modified
    and those that you didn't.

### Usage

    cloudfront_update_response_headers_policy(ResponseHeadersPolicyConfig,
      Id, IfMatch)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudfront_update_response_headers_policy_:_ResponseHeadersPolicyConfig">ResponseHeadersPolicyConfig</code></td>
<td><p>[required] A response headers policy configuration.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudfront_update_response_headers_policy_:_Id">Id</code></td>
<td><p>[required] The identifier for the response headers policy that
you are updating.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudfront_update_response_headers_policy_:_IfMatch">IfMatch</code></td>
<td><p>The version of the response headers policy that you are
updating.</p>
<p>The version is returned in the cache policy's <code>ETag</code> field
in the response to
<code>get_response_headers_policy_config</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ResponseHeadersPolicy = list(
        Id = "string",
        LastModifiedTime = as.POSIXct(
          "2015-01-01"
        ),
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
        )
      ),
      ETag = "string"
    )

### Request syntax

    svc$update_response_headers_policy(
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
      Id = "string",
      IfMatch = "string"
    )
