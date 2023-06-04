<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lightsail_get_distributions</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns information about one or more of your Amazon Lightsail content delivery network (CDN) distributions

### Description

Returns information about one or more of your Amazon Lightsail content
delivery network (CDN) distributions.

### Usage

    lightsail_get_distributions(distributionName, pageToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lightsail_get_distributions_:_distributionName">distributionName</code></td>
<td><p>The name of the distribution for which to return information.</p>
<p>When omitted, the response includes all of your distributions in the
Amazon Web Services Region where the request is made.</p></td>
</tr>
<tr class="even">
<td><code
id="lightsail_get_distributions_:_pageToken">pageToken</code></td>
<td><p>The token to advance to the next page of results from your
request.</p>
<p>To get a page token, perform an initial
<code>get_distributions</code> request. If your results are paginated,
the response will return a next page token that you can specify as the
page token in a subsequent request.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      distributions = list(
        list(
          name = "string",
          arn = "string",
          supportCode = "string",
          createdAt = as.POSIXct(
            "2015-01-01"
          ),
          location = list(
            availabilityZone = "string",
            regionName = "us-east-1"|"us-east-2"|"us-west-1"|"us-west-2"|"eu-west-1"|"eu-west-2"|"eu-west-3"|"eu-central-1"|"ca-central-1"|"ap-south-1"|"ap-southeast-1"|"ap-southeast-2"|"ap-northeast-1"|"ap-northeast-2"|"eu-north-1"
          ),
          resourceType = "ContainerService"|"Instance"|"StaticIp"|"KeyPair"|"InstanceSnapshot"|"Domain"|"PeeredVpc"|"LoadBalancer"|"LoadBalancerTlsCertificate"|"Disk"|"DiskSnapshot"|"RelationalDatabase"|"RelationalDatabaseSnapshot"|"ExportSnapshotRecord"|"CloudFormationStackRecord"|"Alarm"|"ContactMethod"|"Distribution"|"Certificate"|"Bucket",
          alternativeDomainNames = list(
            "string"
          ),
          status = "string",
          isEnabled = TRUE|FALSE,
          domainName = "string",
          bundleId = "string",
          certificateName = "string",
          origin = list(
            name = "string",
            resourceType = "ContainerService"|"Instance"|"StaticIp"|"KeyPair"|"InstanceSnapshot"|"Domain"|"PeeredVpc"|"LoadBalancer"|"LoadBalancerTlsCertificate"|"Disk"|"DiskSnapshot"|"RelationalDatabase"|"RelationalDatabaseSnapshot"|"ExportSnapshotRecord"|"CloudFormationStackRecord"|"Alarm"|"ContactMethod"|"Distribution"|"Certificate"|"Bucket",
            regionName = "us-east-1"|"us-east-2"|"us-west-1"|"us-west-2"|"eu-west-1"|"eu-west-2"|"eu-west-3"|"eu-central-1"|"ca-central-1"|"ap-south-1"|"ap-southeast-1"|"ap-southeast-2"|"ap-northeast-1"|"ap-northeast-2"|"eu-north-1",
            protocolPolicy = "http-only"|"https-only"
          ),
          originPublicDNS = "string",
          defaultCacheBehavior = list(
            behavior = "dont-cache"|"cache"
          ),
          cacheBehaviorSettings = list(
            defaultTTL = 123,
            minimumTTL = 123,
            maximumTTL = 123,
            allowedHTTPMethods = "string",
            cachedHTTPMethods = "string",
            forwardedCookies = list(
              option = "none"|"allow-list"|"all",
              cookiesAllowList = list(
                "string"
              )
            ),
            forwardedHeaders = list(
              option = "none"|"allow-list"|"all",
              headersAllowList = list(
                "Accept"|"Accept-Charset"|"Accept-Datetime"|"Accept-Encoding"|"Accept-Language"|"Authorization"|"CloudFront-Forwarded-Proto"|"CloudFront-Is-Desktop-Viewer"|"CloudFront-Is-Mobile-Viewer"|"CloudFront-Is-SmartTV-Viewer"|"CloudFront-Is-Tablet-Viewer"|"CloudFront-Viewer-Country"|"Host"|"Origin"|"Referer"
              )
            ),
            forwardedQueryStrings = list(
              option = TRUE|FALSE,
              queryStringsAllowList = list(
                "string"
              )
            )
          ),
          cacheBehaviors = list(
            list(
              path = "string",
              behavior = "dont-cache"|"cache"
            )
          ),
          ableToUpdateBundle = TRUE|FALSE,
          ipAddressType = "dualstack"|"ipv4",
          tags = list(
            list(
              key = "string",
              value = "string"
            )
          )
        )
      ),
      nextPageToken = "string"
    )

### Request syntax

    svc$get_distributions(
      distributionName = "string",
      pageToken = "string"
    )
