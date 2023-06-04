<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudfront_list_distributions_by_web_acl_id</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## List the distributions that are associated with a specified WAF web ACL

### Description

List the distributions that are associated with a specified WAF web ACL.

### Usage

    cloudfront_list_distributions_by_web_acl_id(Marker, MaxItems, WebACLId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudfront_list_distributions_by_web_acl_id_:_Marker">Marker</code></td>
<td><p>Use <code>Marker</code> and <code>MaxItems</code> to control
pagination of results. If you have more than <code>MaxItems</code>
distributions that satisfy the request, the response includes a
<code>NextMarker</code> element. To get the next page of results, submit
another request. For the value of <code>Marker</code>, specify the value
of <code>NextMarker</code> from the last response. (For the first
request, omit <code>Marker</code>.)</p></td>
</tr>
<tr class="even">
<td><code
id="cloudfront_list_distributions_by_web_acl_id_:_MaxItems">MaxItems</code></td>
<td><p>The maximum number of distributions that you want CloudFront to
return in the response body. The maximum and default values are both
100.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudfront_list_distributions_by_web_acl_id_:_WebACLId">WebACLId</code></td>
<td><p>[required] The ID of the WAF web ACL that you want to list the
associated distributions. If you specify "null" for the ID, the request
returns a list of the distributions that aren't associated with a web
ACL.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      DistributionList = list(
        Marker = "string",
        NextMarker = "string",
        MaxItems = 123,
        IsTruncated = TRUE|FALSE,
        Quantity = 123,
        Items = list(
          list(
            Id = "string",
            ARN = "string",
            Status = "string",
            LastModifiedTime = as.POSIXct(
              "2015-01-01"
            ),
            DomainName = "string",
            Aliases = list(
              Quantity = 123,
              Items = list(
                "string"
              )
            ),
            Origins = list(
              Quantity = 123,
              Items = list(
                list(
                  Id = "string",
                  DomainName = "string",
                  OriginPath = "string",
                  CustomHeaders = list(
                    Quantity = 123,
                    Items = list(
                      list(
                        HeaderName = "string",
                        HeaderValue = "string"
                      )
                    )
                  ),
                  S3OriginConfig = list(
                    OriginAccessIdentity = "string"
                  ),
                  CustomOriginConfig = list(
                    HTTPPort = 123,
                    HTTPSPort = 123,
                    OriginProtocolPolicy = "http-only"|"match-viewer"|"https-only",
                    OriginSslProtocols = list(
                      Quantity = 123,
                      Items = list(
                        "SSLv3"|"TLSv1"|"TLSv1.1"|"TLSv1.2"
                      )
                    ),
                    OriginReadTimeout = 123,
                    OriginKeepaliveTimeout = 123
                  ),
                  ConnectionAttempts = 123,
                  ConnectionTimeout = 123,
                  OriginShield = list(
                    Enabled = TRUE|FALSE,
                    OriginShieldRegion = "string"
                  ),
                  OriginAccessControlId = "string"
                )
              )
            ),
            OriginGroups = list(
              Quantity = 123,
              Items = list(
                list(
                  Id = "string",
                  FailoverCriteria = list(
                    StatusCodes = list(
                      Quantity = 123,
                      Items = list(
                        123
                      )
                    )
                  ),
                  Members = list(
                    Quantity = 123,
                    Items = list(
                      list(
                        OriginId = "string"
                      )
                    )
                  )
                )
              )
            ),
            DefaultCacheBehavior = list(
              TargetOriginId = "string",
              TrustedSigners = list(
                Enabled = TRUE|FALSE,
                Quantity = 123,
                Items = list(
                  "string"
                )
              ),
              TrustedKeyGroups = list(
                Enabled = TRUE|FALSE,
                Quantity = 123,
                Items = list(
                  "string"
                )
              ),
              ViewerProtocolPolicy = "allow-all"|"https-only"|"redirect-to-https",
              AllowedMethods = list(
                Quantity = 123,
                Items = list(
                  "GET"|"HEAD"|"POST"|"PUT"|"PATCH"|"OPTIONS"|"DELETE"
                ),
                CachedMethods = list(
                  Quantity = 123,
                  Items = list(
                    "GET"|"HEAD"|"POST"|"PUT"|"PATCH"|"OPTIONS"|"DELETE"
                  )
                )
              ),
              SmoothStreaming = TRUE|FALSE,
              Compress = TRUE|FALSE,
              LambdaFunctionAssociations = list(
                Quantity = 123,
                Items = list(
                  list(
                    LambdaFunctionARN = "string",
                    EventType = "viewer-request"|"viewer-response"|"origin-request"|"origin-response",
                    IncludeBody = TRUE|FALSE
                  )
                )
              ),
              FunctionAssociations = list(
                Quantity = 123,
                Items = list(
                  list(
                    FunctionARN = "string",
                    EventType = "viewer-request"|"viewer-response"|"origin-request"|"origin-response"
                  )
                )
              ),
              FieldLevelEncryptionId = "string",
              RealtimeLogConfigArn = "string",
              CachePolicyId = "string",
              OriginRequestPolicyId = "string",
              ResponseHeadersPolicyId = "string",
              ForwardedValues = list(
                QueryString = TRUE|FALSE,
                Cookies = list(
                  Forward = "none"|"whitelist"|"all",
                  WhitelistedNames = list(
                    Quantity = 123,
                    Items = list(
                      "string"
                    )
                  )
                ),
                Headers = list(
                  Quantity = 123,
                  Items = list(
                    "string"
                  )
                ),
                QueryStringCacheKeys = list(
                  Quantity = 123,
                  Items = list(
                    "string"
                  )
                )
              ),
              MinTTL = 123,
              DefaultTTL = 123,
              MaxTTL = 123
            ),
            CacheBehaviors = list(
              Quantity = 123,
              Items = list(
                list(
                  PathPattern = "string",
                  TargetOriginId = "string",
                  TrustedSigners = list(
                    Enabled = TRUE|FALSE,
                    Quantity = 123,
                    Items = list(
                      "string"
                    )
                  ),
                  TrustedKeyGroups = list(
                    Enabled = TRUE|FALSE,
                    Quantity = 123,
                    Items = list(
                      "string"
                    )
                  ),
                  ViewerProtocolPolicy = "allow-all"|"https-only"|"redirect-to-https",
                  AllowedMethods = list(
                    Quantity = 123,
                    Items = list(
                      "GET"|"HEAD"|"POST"|"PUT"|"PATCH"|"OPTIONS"|"DELETE"
                    ),
                    CachedMethods = list(
                      Quantity = 123,
                      Items = list(
                        "GET"|"HEAD"|"POST"|"PUT"|"PATCH"|"OPTIONS"|"DELETE"
                      )
                    )
                  ),
                  SmoothStreaming = TRUE|FALSE,
                  Compress = TRUE|FALSE,
                  LambdaFunctionAssociations = list(
                    Quantity = 123,
                    Items = list(
                      list(
                        LambdaFunctionARN = "string",
                        EventType = "viewer-request"|"viewer-response"|"origin-request"|"origin-response",
                        IncludeBody = TRUE|FALSE
                      )
                    )
                  ),
                  FunctionAssociations = list(
                    Quantity = 123,
                    Items = list(
                      list(
                        FunctionARN = "string",
                        EventType = "viewer-request"|"viewer-response"|"origin-request"|"origin-response"
                      )
                    )
                  ),
                  FieldLevelEncryptionId = "string",
                  RealtimeLogConfigArn = "string",
                  CachePolicyId = "string",
                  OriginRequestPolicyId = "string",
                  ResponseHeadersPolicyId = "string",
                  ForwardedValues = list(
                    QueryString = TRUE|FALSE,
                    Cookies = list(
                      Forward = "none"|"whitelist"|"all",
                      WhitelistedNames = list(
                        Quantity = 123,
                        Items = list(
                          "string"
                        )
                      )
                    ),
                    Headers = list(
                      Quantity = 123,
                      Items = list(
                        "string"
                      )
                    ),
                    QueryStringCacheKeys = list(
                      Quantity = 123,
                      Items = list(
                        "string"
                      )
                    )
                  ),
                  MinTTL = 123,
                  DefaultTTL = 123,
                  MaxTTL = 123
                )
              )
            ),
            CustomErrorResponses = list(
              Quantity = 123,
              Items = list(
                list(
                  ErrorCode = 123,
                  ResponsePagePath = "string",
                  ResponseCode = "string",
                  ErrorCachingMinTTL = 123
                )
              )
            ),
            Comment = "string",
            PriceClass = "PriceClass_100"|"PriceClass_200"|"PriceClass_All",
            Enabled = TRUE|FALSE,
            ViewerCertificate = list(
              CloudFrontDefaultCertificate = TRUE|FALSE,
              IAMCertificateId = "string",
              ACMCertificateArn = "string",
              SSLSupportMethod = "sni-only"|"vip"|"static-ip",
              MinimumProtocolVersion = "SSLv3"|"TLSv1"|"TLSv1_2016"|"TLSv1.1_2016"|"TLSv1.2_2018"|"TLSv1.2_2019"|"TLSv1.2_2021",
              Certificate = "string",
              CertificateSource = "cloudfront"|"iam"|"acm"
            ),
            Restrictions = list(
              GeoRestriction = list(
                RestrictionType = "blacklist"|"whitelist"|"none",
                Quantity = 123,
                Items = list(
                  "string"
                )
              )
            ),
            WebACLId = "string",
            HttpVersion = "http1.1"|"http2"|"http3"|"http2and3",
            IsIPV6Enabled = TRUE|FALSE,
            AliasICPRecordals = list(
              list(
                CNAME = "string",
                ICPRecordalStatus = "APPROVED"|"SUSPENDED"|"PENDING"
              )
            ),
            Staging = TRUE|FALSE
          )
        )
      )
    )

### Request syntax

    svc$list_distributions_by_web_acl_id(
      Marker = "string",
      MaxItems = "string",
      WebACLId = "string"
    )
