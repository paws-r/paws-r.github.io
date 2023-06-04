<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudfront_create_distribution_with_tags</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Create a new distribution with tags

### Description

Create a new distribution with tags.

### Usage

    cloudfront_create_distribution_with_tags(DistributionConfigWithTags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudfront_create_distribution_with_tags_:_DistributionConfigWithTags">DistributionConfigWithTags</code></td>
<td><p>[required] The distribution's configuration information.</p></td>
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
      Location = "string",
      ETag = "string"
    )

### Request syntax

    svc$create_distribution_with_tags(
      DistributionConfigWithTags = list(
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
        Tags = list(
          Items = list(
            list(
              Key = "string",
              Value = "string"
            )
          )
        )
      )
    )
