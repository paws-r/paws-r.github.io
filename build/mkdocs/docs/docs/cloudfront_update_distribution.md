<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudfront_update_distribution</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the configuration for a CloudFront distribution

### Description

Updates the configuration for a CloudFront distribution.

The update process includes getting the current distribution
configuration, updating it to make your changes, and then submitting an
`update_distribution` request to make the updates.

**To update a web distribution using the CloudFront API**

1.  Use `get_distribution_config` to get the current configuration,
    including the version identifier (`ETag`).

2.  Update the distribution configuration that was returned in the
    response. Note the following important requirements and
    restrictions:

    -   You must rename the `ETag` field to `IfMatch`, leaving the value
        unchanged. (Set the value of `IfMatch` to the value of `ETag`,
        then remove the `ETag` field.)

    -   You can't change the value of `CallerReference`.

3.  Submit an `update_distribution` request, providing the distribution
    configuration. The new configuration replaces the existing
    configuration. The values that you specify in an
    `update_distribution` request are not merged into your existing
    configuration. Make sure to include all fields: the ones that you
    modified and also the ones that you didn't.

### Usage

    cloudfront_update_distribution(DistributionConfig, Id, IfMatch)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudfront_update_distribution_:_DistributionConfig">DistributionConfig</code></td>
<td><p>[required] The distribution's configuration information.</p></td>
</tr>
<tr class="even">
<td><code id="cloudfront_update_distribution_:_Id">Id</code></td>
<td><p>[required] The distribution's id.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudfront_update_distribution_:_IfMatch">IfMatch</code></td>
<td><p>The value of the <code>ETag</code> header that you received when
retrieving the distribution's configuration. For example:
<code>E2QWRUHAPOMQZL</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Distribution = list(
        Id = "string",
        ARN = "string",
        Status = "string",
        LastModifiedTime = as.POSIXct(
          "2015-01-01"
        ),
        InProgressInvalidationBatches = 123,
        DomainName = "string",
        ActiveTrustedSigners = list(
          Enabled = TRUE|FALSE,
          Quantity = 123,
          Items = list(
            list(
              AwsAccountNumber = "string",
              KeyPairIds = list(
                Quantity = 123,
                Items = list(
                  "string"
                )
              )
            )
          )
        ),
        ActiveTrustedKeyGroups = list(
          Enabled = TRUE|FALSE,
          Quantity = 123,
          Items = list(
            list(
              KeyGroupId = "string",
              KeyPairIds = list(
                Quantity = 123,
                Items = list(
                  "string"
                )
              )
            )
          )
        ),
        DistributionConfig = list(
          CallerReference = "string",
          Aliases = list(
            Quantity = 123,
            Items = list(
              "string"
            )
          ),
          DefaultRootObject = "string",
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
          Logging = list(
            Enabled = TRUE|FALSE,
            IncludeCookies = TRUE|FALSE,
            Bucket = "string",
            Prefix = "string"
          ),
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
          ContinuousDeploymentPolicyId = "string",
          Staging = TRUE|FALSE
        ),
        AliasICPRecordals = list(
          list(
            CNAME = "string",
            ICPRecordalStatus = "APPROVED"|"SUSPENDED"|"PENDING"
          )
        )
      ),
      ETag = "string"
    )

### Request syntax

    svc$update_distribution(
      DistributionConfig = list(
        CallerReference = "string",
        Aliases = list(
          Quantity = 123,
          Items = list(
            "string"
          )
        ),
        DefaultRootObject = "string",
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
        Logging = list(
          Enabled = TRUE|FALSE,
          IncludeCookies = TRUE|FALSE,
          Bucket = "string",
          Prefix = "string"
        ),
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
        ContinuousDeploymentPolicyId = "string",
        Staging = TRUE|FALSE
      ),
      Id = "string",
      IfMatch = "string"
    )
