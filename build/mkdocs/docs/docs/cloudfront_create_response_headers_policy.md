<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudfront_create_response_headers_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a response headers policy

### Description

Creates a response headers policy.

A response headers policy contains information about a set of HTTP
headers. To create a response headers policy, you provide some metadata
about the policy and a set of configurations that specify the headers.

After you create a response headers policy, you can use its ID to attach
it to one or more cache behaviors in a CloudFront distribution. When
it's attached to a cache behavior, the response headers policy affects
the HTTP headers that CloudFront includes in HTTP responses to requests
that match the cache behavior. CloudFront adds or removes response
headers according to the configuration of the response headers policy.

For more information, see [Adding or removing HTTP headers in CloudFront
responses](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/modifying-response-headers.html)
in the *Amazon CloudFront Developer Guide*.

### Usage

    cloudfront_create_response_headers_policy(ResponseHeadersPolicyConfig)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudfront_create_response_headers_policy_:_ResponseHeadersPolicyConfig">ResponseHeadersPolicyConfig</code></td>
<td><p>[required] Contains metadata about the response headers policy,
and a set of configurations that specify the HTTP headers.</p></td>
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
      Location = "string",
      ETag = "string"
    )

### Request syntax

    svc$create_response_headers_policy(
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
    )
