<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lightsail_update_bucket</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates an existing Amazon Lightsail bucket

### Description

Updates an existing Amazon Lightsail bucket.

Use this action to update the configuration of an existing bucket, such
as versioning, public accessibility, and the Amazon Web Services
accounts that can access the bucket.

### Usage

    lightsail_update_bucket(bucketName, accessRules, versioning,
      readonlyAccessAccounts, accessLogConfig)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lightsail_update_bucket_:_bucketName">bucketName</code></td>
<td><p>[required] The name of the bucket to update.</p></td>
</tr>
<tr class="even">
<td><code
id="lightsail_update_bucket_:_accessRules">accessRules</code></td>
<td><p>An object that sets the public accessibility of objects in the
specified bucket.</p></td>
</tr>
<tr class="odd">
<td><code
id="lightsail_update_bucket_:_versioning">versioning</code></td>
<td><p>Specifies whether to enable or suspend versioning of objects in
the bucket.</p>
<p>The following options can be specified:</p>
<ul>
<li><p><code>Enabled</code> - Enables versioning of objects in the
specified bucket.</p></li>
<li><p><code>Suspended</code> - Suspends versioning of objects in the
specified bucket. Existing object versions are retained.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="lightsail_update_bucket_:_readonlyAccessAccounts">readonlyAccessAccounts</code></td>
<td><p>An array of strings to specify the Amazon Web Services account
IDs that can access the bucket.</p>
<p>You can give a maximum of 10 Amazon Web Services accounts access to a
bucket.</p></td>
</tr>
<tr class="odd">
<td><code
id="lightsail_update_bucket_:_accessLogConfig">accessLogConfig</code></td>
<td><p>An object that describes the access log configuration for the
bucket.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      bucket = list(
        resourceType = "string",
        accessRules = list(
          getObject = "public"|"private",
          allowPublicOverrides = TRUE|FALSE
        ),
        arn = "string",
        bundleId = "string",
        createdAt = as.POSIXct(
          "2015-01-01"
        ),
        url = "string",
        location = list(
          availabilityZone = "string",
          regionName = "us-east-1"|"us-east-2"|"us-west-1"|"us-west-2"|"eu-west-1"|"eu-west-2"|"eu-west-3"|"eu-central-1"|"ca-central-1"|"ap-south-1"|"ap-southeast-1"|"ap-southeast-2"|"ap-northeast-1"|"ap-northeast-2"|"eu-north-1"
        ),
        name = "string",
        supportCode = "string",
        tags = list(
          list(
            key = "string",
            value = "string"
          )
        ),
        objectVersioning = "string",
        ableToUpdateBundle = TRUE|FALSE,
        readonlyAccessAccounts = list(
          "string"
        ),
        resourcesReceivingAccess = list(
          list(
            name = "string",
            resourceType = "string"
          )
        ),
        state = list(
          code = "string",
          message = "string"
        ),
        accessLogConfig = list(
          enabled = TRUE|FALSE,
          destination = "string",
          prefix = "string"
        )
      ),
      operations = list(
        list(
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
    )

### Request syntax

    svc$update_bucket(
      bucketName = "string",
      accessRules = list(
        getObject = "public"|"private",
        allowPublicOverrides = TRUE|FALSE
      ),
      versioning = "string",
      readonlyAccessAccounts = list(
        "string"
      ),
      accessLogConfig = list(
        enabled = TRUE|FALSE,
        destination = "string",
        prefix = "string"
      )
    )
