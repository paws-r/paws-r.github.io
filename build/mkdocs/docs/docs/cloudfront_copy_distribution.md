<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudfront_copy_distribution</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a staging distribution using the configuration of the provided primary distribution

### Description

Creates a staging distribution using the configuration of the provided
primary distribution. A staging distribution is a copy of an existing
distribution (called the primary distribution) that you can use in a
continuous deployment workflow.

After you create a staging distribution, you can use
`update_distribution` to modify the staging distribution's
configuration. Then you can use `create_continuous_deployment_policy` to
incrementally move traffic to the staging distribution.

### Usage

    cloudfront_copy_distribution(PrimaryDistributionId, Staging, IfMatch,
      CallerReference)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudfront_copy_distribution_:_PrimaryDistributionId">PrimaryDistributionId</code></td>
<td><p>[required] The identifier of the primary distribution whose
configuration you are copying. To get a distribution ID, use
<code>list_distributions</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudfront_copy_distribution_:_Staging">Staging</code></td>
<td><p>The type of distribution that your primary distribution will be
copied to. The only valid value is <code>True</code>, indicating that
you are copying to a staging distribution.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudfront_copy_distribution_:_IfMatch">IfMatch</code></td>
<td><p>The version identifier of the primary distribution whose
configuration you are copying. This is the <code>ETag</code> value
returned in the response to <code>get_distribution</code> and
<code>get_distribution_config</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudfront_copy_distribution_:_CallerReference">CallerReference</code></td>
<td><p>[required] A value that uniquely identifies a request to create a
resource. This helps to prevent CloudFront from creating a duplicate
resource if you accidentally resubmit an identical request.</p></td>
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

    svc$copy_distribution(
      PrimaryDistributionId = "string",
      Staging = TRUE|FALSE,
      IfMatch = "string",
      CallerReference = "string"
    )
