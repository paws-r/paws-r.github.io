<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lightsail_update_distribution</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates an existing Amazon Lightsail content delivery network (CDN) distribution

### Description

Updates an existing Amazon Lightsail content delivery network (CDN)
distribution.

Use this action to update the configuration of your existing
distribution.

### Usage

    lightsail_update_distribution(distributionName, origin,
      defaultCacheBehavior, cacheBehaviorSettings, cacheBehaviors, isEnabled)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lightsail_update_distribution_:_distributionName">distributionName</code></td>
<td><p>[required] The name of the distribution to update.</p>
<p>Use the <code>get_distributions</code> action to get a list of
distribution names that you can specify.</p></td>
</tr>
<tr class="even">
<td><code id="lightsail_update_distribution_:_origin">origin</code></td>
<td><p>An object that describes the origin resource for the
distribution, such as a Lightsail instance, bucket, or load
balancer.</p>
<p>The distribution pulls, caches, and serves content from the
origin.</p></td>
</tr>
<tr class="odd">
<td><code
id="lightsail_update_distribution_:_defaultCacheBehavior">defaultCacheBehavior</code></td>
<td><p>An object that describes the default cache behavior for the
distribution.</p></td>
</tr>
<tr class="even">
<td><code
id="lightsail_update_distribution_:_cacheBehaviorSettings">cacheBehaviorSettings</code></td>
<td><p>An object that describes the cache behavior settings for the
distribution.</p>
<p>The <code>cacheBehaviorSettings</code> specified in your
<code>UpdateDistributionRequest</code> will replace your distribution's
existing settings.</p></td>
</tr>
<tr class="odd">
<td><code
id="lightsail_update_distribution_:_cacheBehaviors">cacheBehaviors</code></td>
<td><p>An array of objects that describe the per-path cache behavior for
the distribution.</p></td>
</tr>
<tr class="even">
<td><code
id="lightsail_update_distribution_:_isEnabled">isEnabled</code></td>
<td><p>Indicates whether to enable the distribution.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      operation = list(
        id = "string",
        resourceName = "string",
        resourceType = "ContainerService"|"Instance"|"StaticIp"|"KeyPair"|"InstanceSnapshot"|"Domain"|"PeeredVpc"|"LoadBalancer"|"LoadBalancerTlsCertificate"|"Disk"|"DiskSnapshot"|"RelationalDatabase"|"RelationalDatabaseSnapshot"|"ExportSnapshotRecord"|"CloudFormationStackRecord"|"Alarm"|"ContactMethod"|"Distribution"|"Certificate"|"Bucket",
        createdAt = as.POSIXct(
          "2015-01-01"
        ),
        location = list(
          availabilityZone = "string",
          regionName = "us-east-1"|"us-east-2"|"us-west-1"|"us-west-2"|"eu-west-1"|"eu-west-2"|"eu-west-3"|"eu-central-1"|"ca-central-1"|"ap-south-1"|"ap-southeast-1"|"ap-southeast-2"|"ap-northeast-1"|"ap-northeast-2"|"eu-north-1"
        ),
        isTerminal = TRUE|FALSE,
        operationDetails = "string",
        operationType = "DeleteKnownHostKeys"|"DeleteInstance"|"CreateInstance"|"StopInstance"|"StartInstance"|"RebootInstance"|"OpenInstancePublicPorts"|"PutInstancePublicPorts"|"CloseInstancePublicPorts"|"AllocateStaticIp"|"ReleaseStaticIp"|"AttachStaticIp"|"DetachStaticIp"|"UpdateDomainEntry"|"DeleteDomainEntry"|"CreateDomain"|"DeleteDomain"|"CreateInstanceSnapshot"|"DeleteInstanceSnapshot"|"CreateInstancesFromSnapshot"|"CreateLoadBalancer"|"DeleteLoadBalancer"|"AttachInstancesToLoadBalancer"|"DetachInstancesFromLoadBalancer"|"UpdateLoadBalancerAttribute"|"CreateLoadBalancerTlsCertificate"|"DeleteLoadBalancerTlsCertificate"|"AttachLoadBalancerTlsCertificate"|"CreateDisk"|"DeleteDisk"|"AttachDisk"|"DetachDisk"|"CreateDiskSnapshot"|"DeleteDiskSnapshot"|"CreateDiskFromSnapshot"|"CreateRelationalDatabase"|"UpdateRelationalDatabase"|"DeleteRelationalDatabase"|"CreateRelationalDatabaseFromSnapshot"|"CreateRelationalDatabaseSnapshot"|"DeleteRelationalDatabaseSnapshot"|"UpdateRelationalDatabaseParameters"|"StartRelationalDatabase"|"RebootRelationalDatabase"|"StopRelationalDatabase"|"EnableAddOn"|"DisableAddOn"|"PutAlarm"|"GetAlarms"|"DeleteAlarm"|"TestAlarm"|"CreateContactMethod"|"GetContactMethods"|"SendContactMethodVerification"|"DeleteContactMethod"|"CreateDistribution"|"UpdateDistribution"|"DeleteDistribution"|"ResetDistributionCache"|"AttachCertificateToDistribution"|"DetachCertificateFromDistribution"|"UpdateDistributionBundle"|"SetIpAddressType"|"CreateCertificate"|"DeleteCertificate"|"CreateContainerService"|"UpdateContainerService"|"DeleteContainerService"|"CreateContainerServiceDeployment"|"CreateContainerServiceRegistryLogin"|"RegisterContainerImage"|"DeleteContainerImage"|"CreateBucket"|"DeleteBucket"|"CreateBucketAccessKey"|"DeleteBucketAccessKey"|"UpdateBucketBundle"|"UpdateBucket"|"SetResourceAccessForBucket"|"UpdateInstanceMetadataOptions"|"StartGUISession"|"StopGUISession",
        status = "NotStarted"|"Started"|"Failed"|"Completed"|"Succeeded",
        statusChangedAt = as.POSIXct(
          "2015-01-01"
        ),
        errorCode = "string",
        errorDetails = "string"
      )
    )

### Request syntax

    svc$update_distribution(
      distributionName = "string",
      origin = list(
        name = "string",
        regionName = "us-east-1"|"us-east-2"|"us-west-1"|"us-west-2"|"eu-west-1"|"eu-west-2"|"eu-west-3"|"eu-central-1"|"ca-central-1"|"ap-south-1"|"ap-southeast-1"|"ap-southeast-2"|"ap-northeast-1"|"ap-northeast-2"|"eu-north-1",
        protocolPolicy = "http-only"|"https-only"
      ),
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
      isEnabled = TRUE|FALSE
    )
