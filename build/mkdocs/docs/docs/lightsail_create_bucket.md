<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lightsail_create_bucket</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates an Amazon Lightsail bucket

### Description

Creates an Amazon Lightsail bucket.

A bucket is a cloud storage resource available in the Lightsail object
storage service. Use buckets to store objects such as data and its
descriptive metadata. For more information about buckets, see Buckets in
Amazon Lightsail in the *Amazon Lightsail Developer Guide*.

### Usage

    lightsail_create_bucket(bucketName, bundleId, tags,
      enableObjectVersioning)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lightsail_create_bucket_:_bucketName">bucketName</code></td>
<td><p>[required] The name for the bucket.</p>
<p>For more information about bucket names, see Bucket naming rules in
Amazon Lightsail in the <em>Amazon Lightsail Developer
Guide</em>.</p></td>
</tr>
<tr class="even">
<td><code id="lightsail_create_bucket_:_bundleId">bundleId</code></td>
<td><p>[required] The ID of the bundle to use for the bucket.</p>
<p>A bucket bundle specifies the monthly cost, storage space, and data
transfer quota for a bucket.</p>
<p>Use the <code>get_bucket_bundles</code> action to get a list of
bundle IDs that you can specify.</p>
<p>Use the <code>update_bucket_bundle</code> action to change the bundle
after the bucket is created.</p></td>
</tr>
<tr class="odd">
<td><code id="lightsail_create_bucket_:_tags">tags</code></td>
<td><p>The tag keys and optional values to add to the bucket during
creation.</p>
<p>Use the <code>tag_resource</code> action to tag the bucket after it's
created.</p></td>
</tr>
<tr class="even">
<td><code
id="lightsail_create_bucket_:_enableObjectVersioning">enableObjectVersioning</code></td>
<td><p>A Boolean value that indicates whether to enable versioning of
objects in the bucket.</p>
<p>For more information about versioning, see Enabling and suspending
object versioning in a bucket in Amazon Lightsail in the <em>Amazon
Lightsail Developer Guide</em>.</p></td>
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

    svc$create_bucket(
      bucketName = "string",
      bundleId = "string",
      tags = list(
        list(
          key = "string",
          value = "string"
        )
      ),
      enableObjectVersioning = TRUE|FALSE
    )
