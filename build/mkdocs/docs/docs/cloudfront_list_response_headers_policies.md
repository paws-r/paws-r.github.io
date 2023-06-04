<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudfront_list_response_headers_policies</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets a list of response headers policies

### Description

Gets a list of response headers policies.

You can optionally apply a filter to get only the managed policies
created by Amazon Web Services, or only the custom policies created in
your Amazon Web Services account.

You can optionally specify the maximum number of items to receive in the
response. If the total number of items in the list exceeds the maximum
that you specify, or the default maximum, the response is paginated. To
get the next page of items, send a subsequent request that specifies the
`NextMarker` value from the current response as the `Marker` value in
the subsequent request.

### Usage

    cloudfront_list_response_headers_policies(Type, Marker, MaxItems)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudfront_list_response_headers_policies_:_Type">Type</code></td>
<td><p>A filter to get only the specified kind of response headers
policies. Valid values are:</p>
<ul>
<li><p><code>managed</code> – Gets only the managed policies created by
Amazon Web Services.</p></li>
<li><p><code>custom</code> – Gets only the custom policies created in
your Amazon Web Services account.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="cloudfront_list_response_headers_policies_:_Marker">Marker</code></td>
<td><p>Use this field when paginating results to indicate where to begin
in your list of response headers policies. The response includes
response headers policies in the list that occur after the marker. To
get the next page of the list, set this field's value to the value of
<code>NextMarker</code> from the current page's response.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudfront_list_response_headers_policies_:_MaxItems">MaxItems</code></td>
<td><p>The maximum number of response headers policies that you want to
get in the response.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ResponseHeadersPolicyList = list(
        NextMarker = "string",
        MaxItems = 123,
        Quantity = 123,
        Items = list(
          list(
            Type = "managed"|"custom",
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
            )
          )
        )
      )
    )

### Request syntax

    svc$list_response_headers_policies(
      Type = "managed"|"custom",
      Marker = "string",
      MaxItems = "string"
    )
