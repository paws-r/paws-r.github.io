<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lightsail_create_disk</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a block storage disk that can be attached to an Amazon Lightsail instance in the same Availability Zone (e

### Description

Creates a block storage disk that can be attached to an Amazon Lightsail
instance in the same Availability Zone (e.g., `⁠us-east-2a⁠`).

The `⁠create disk⁠` operation supports tag-based access control via
request tags. For more information, see the Amazon Lightsail Developer
Guide.

### Usage

    lightsail_create_disk(diskName, availabilityZone, sizeInGb, tags,
      addOns)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="lightsail_create_disk_:_diskName">diskName</code></td>
<td><p>[required] The unique Lightsail disk name (e.g.,
<code>my-disk</code>).</p></td>
</tr>
<tr class="even">
<td><code
id="lightsail_create_disk_:_availabilityZone">availabilityZone</code></td>
<td><p>[required] The Availability Zone where you want to create the
disk (e.g., <code style="white-space: pre;">⁠us-east-2a⁠</code>). Use the
same Availability Zone as the Lightsail instance to which you want to
attach the disk.</p>
<p>Use the <code style="white-space: pre;">⁠get regions⁠</code> operation
to list the Availability Zones where Lightsail is currently
available.</p></td>
</tr>
<tr class="odd">
<td><code id="lightsail_create_disk_:_sizeInGb">sizeInGb</code></td>
<td><p>[required] The size of the disk in GB (e.g.,
<code>32</code>).</p></td>
</tr>
<tr class="even">
<td><code id="lightsail_create_disk_:_tags">tags</code></td>
<td><p>The tag keys and optional values to add to the resource during
create.</p>
<p>Use the <code>tag_resource</code> action to tag a resource after it's
created.</p></td>
</tr>
<tr class="odd">
<td><code id="lightsail_create_disk_:_addOns">addOns</code></td>
<td><p>An array of objects that represent the add-ons to enable for the
new disk.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
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

    svc$create_disk(
      diskName = "string",
      availabilityZone = "string",
      sizeInGb = 123,
      tags = list(
        list(
          key = "string",
          value = "string"
        )
      ),
      addOns = list(
        list(
          addOnType = "AutoSnapshot"|"StopInstanceOnIdle",
          autoSnapshotAddOnRequest = list(
            snapshotTimeOfDay = "string"
          ),
          stopInstanceOnIdleRequest = list(
            threshold = "string",
            duration = "string"
          )
        )
      )
    )
