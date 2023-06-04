<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lightsail_create_disk_from_snapshot</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a block storage disk from a manual or automatic snapshot of a disk

### Description

Creates a block storage disk from a manual or automatic snapshot of a
disk. The resulting disk can be attached to an Amazon Lightsail instance
in the same Availability Zone (e.g., `⁠us-east-2a⁠`).

The `⁠create disk from snapshot⁠` operation supports tag-based access
control via request tags and resource tags applied to the resource
identified by `⁠disk snapshot name⁠`. For more information, see the Amazon
Lightsail Developer Guide.

### Usage

    lightsail_create_disk_from_snapshot(diskName, diskSnapshotName,
      availabilityZone, sizeInGb, tags, addOns, sourceDiskName, restoreDate,
      useLatestRestorableAutoSnapshot)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lightsail_create_disk_from_snapshot_:_diskName">diskName</code></td>
<td><p>[required] The unique Lightsail disk name (e.g.,
<code>my-disk</code>).</p></td>
</tr>
<tr class="even">
<td><code
id="lightsail_create_disk_from_snapshot_:_diskSnapshotName">diskSnapshotName</code></td>
<td><p>The name of the disk snapshot (e.g., <code>my-snapshot</code>)
from which to create the new storage disk.</p>
<p>Constraint:</p>
<ul>
<li><p>This parameter cannot be defined together with the <code
style="white-space: pre;">⁠source disk name⁠</code> parameter. The <code
style="white-space: pre;">⁠disk snapshot name⁠</code> and <code
style="white-space: pre;">⁠source disk name⁠</code> parameters are
mutually exclusive.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="lightsail_create_disk_from_snapshot_:_availabilityZone">availabilityZone</code></td>
<td><p>[required] The Availability Zone where you want to create the
disk (e.g., <code style="white-space: pre;">⁠us-east-2a⁠</code>). Choose
the same Availability Zone as the Lightsail instance where you want to
create the disk.</p>
<p>Use the GetRegions operation to list the Availability Zones where
Lightsail is currently available.</p></td>
</tr>
<tr class="even">
<td><code
id="lightsail_create_disk_from_snapshot_:_sizeInGb">sizeInGb</code></td>
<td><p>[required] The size of the disk in GB (e.g.,
<code>32</code>).</p></td>
</tr>
<tr class="odd">
<td><code
id="lightsail_create_disk_from_snapshot_:_tags">tags</code></td>
<td><p>The tag keys and optional values to add to the resource during
create.</p>
<p>Use the <code>tag_resource</code> action to tag a resource after it's
created.</p></td>
</tr>
<tr class="even">
<td><code
id="lightsail_create_disk_from_snapshot_:_addOns">addOns</code></td>
<td><p>An array of objects that represent the add-ons to enable for the
new disk.</p></td>
</tr>
<tr class="odd">
<td><code
id="lightsail_create_disk_from_snapshot_:_sourceDiskName">sourceDiskName</code></td>
<td><p>The name of the source disk from which the source automatic
snapshot was created.</p>
<p>Constraints:</p>
<ul>
<li><p>This parameter cannot be defined together with the <code
style="white-space: pre;">⁠disk snapshot name⁠</code> parameter. The <code
style="white-space: pre;">⁠source disk name⁠</code> and <code
style="white-space: pre;">⁠disk snapshot name⁠</code> parameters are
mutually exclusive.</p></li>
<li><p>Define this parameter only when creating a new disk from an
automatic snapshot. For more information, see the Amazon Lightsail
Developer Guide.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="lightsail_create_disk_from_snapshot_:_restoreDate">restoreDate</code></td>
<td><p>The date of the automatic snapshot to use for the new disk. Use
the <code style="white-space: pre;">⁠get auto snapshots⁠</code> operation
to identify the dates of the available automatic snapshots.</p>
<p>Constraints:</p>
<ul>
<li><p>Must be specified in <code>YYYY-MM-DD</code> format.</p></li>
<li><p>This parameter cannot be defined together with the <code
style="white-space: pre;">⁠use latest restorable auto snapshot⁠</code>
parameter. The <code style="white-space: pre;">⁠restore date⁠</code> and
<code
style="white-space: pre;">⁠use latest restorable auto snapshot⁠</code>
parameters are mutually exclusive.</p></li>
<li><p>Define this parameter only when creating a new disk from an
automatic snapshot. For more information, see the Amazon Lightsail
Developer Guide.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="lightsail_create_disk_from_snapshot_:_useLatestRestorableAutoSnapshot">useLatestRestorableAutoSnapshot</code></td>
<td><p>A Boolean value to indicate whether to use the latest available
automatic snapshot.</p>
<p>Constraints:</p>
<ul>
<li><p>This parameter cannot be defined together with the <code
style="white-space: pre;">⁠restore date⁠</code> parameter. The <code
style="white-space: pre;">⁠use latest restorable auto snapshot⁠</code> and
<code style="white-space: pre;">⁠restore date⁠</code> parameters are
mutually exclusive.</p></li>
<li><p>Define this parameter only when creating a new disk from an
automatic snapshot. For more information, see the Amazon Lightsail
Developer Guide.</p></li>
</ul></td>
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

    svc$create_disk_from_snapshot(
      diskName = "string",
      diskSnapshotName = "string",
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
      ),
      sourceDiskName = "string",
      restoreDate = "string",
      useLatestRestorableAutoSnapshot = TRUE|FALSE
    )
