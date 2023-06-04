<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lightsail_create_disk_snapshot</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a snapshot of a block storage disk

### Description

Creates a snapshot of a block storage disk. You can use snapshots for
backups, to make copies of disks, and to save data before shutting down
a Lightsail instance.

You can take a snapshot of an attached disk that is in use; however,
snapshots only capture data that has been written to your disk at the
time the snapshot command is issued. This may exclude any data that has
been cached by any applications or the operating system. If you can
pause any file systems on the disk long enough to take a snapshot, your
snapshot should be complete. Nevertheless, if you cannot pause all file
writes to the disk, you should unmount the disk from within the
Lightsail instance, issue the create disk snapshot command, and then
remount the disk to ensure a consistent and complete snapshot. You may
remount and use your disk while the snapshot status is pending.

You can also use this operation to create a snapshot of an instance's
system volume. You might want to do this, for example, to recover data
from the system volume of a botched instance or to create a backup of
the system volume like you would for a block storage disk. To create a
snapshot of a system volume, just define the `⁠instance name⁠` parameter
when issuing the snapshot command, and a snapshot of the defined
instance's system volume will be created. After the snapshot is
available, you can create a block storage disk from the snapshot and
attach it to a running instance to access the data on the disk.

The `⁠create disk snapshot⁠` operation supports tag-based access control
via request tags. For more information, see the Amazon Lightsail
Developer Guide.

### Usage

    lightsail_create_disk_snapshot(diskName, diskSnapshotName, instanceName,
      tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lightsail_create_disk_snapshot_:_diskName">diskName</code></td>
<td><p>The unique name of the source disk (e.g.,
<code>Disk-Virginia-1</code>).</p>
<p>This parameter cannot be defined together with the <code
style="white-space: pre;">⁠instance name⁠</code> parameter. The <code
style="white-space: pre;">⁠disk name⁠</code> and <code
style="white-space: pre;">⁠instance name⁠</code> parameters are mutually
exclusive.</p></td>
</tr>
<tr class="even">
<td><code
id="lightsail_create_disk_snapshot_:_diskSnapshotName">diskSnapshotName</code></td>
<td><p>[required] The name of the destination disk snapshot (e.g.,
<code>my-disk-snapshot</code>) based on the source disk.</p></td>
</tr>
<tr class="odd">
<td><code
id="lightsail_create_disk_snapshot_:_instanceName">instanceName</code></td>
<td><p>The unique name of the source instance (e.g., <code
style="white-space: pre;">⁠Amazon_Linux-512MB-Virginia-1⁠</code>). When
this is defined, a snapshot of the instance's system volume is
created.</p>
<p>This parameter cannot be defined together with the <code
style="white-space: pre;">⁠disk name⁠</code> parameter. The <code
style="white-space: pre;">⁠instance name⁠</code> and <code
style="white-space: pre;">⁠disk name⁠</code> parameters are mutually
exclusive.</p></td>
</tr>
<tr class="even">
<td><code id="lightsail_create_disk_snapshot_:_tags">tags</code></td>
<td><p>The tag keys and optional values to add to the resource during
create.</p>
<p>Use the <code>tag_resource</code> action to tag a resource after it's
created.</p></td>
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

    svc$create_disk_snapshot(
      diskName = "string",
      diskSnapshotName = "string",
      instanceName = "string",
      tags = list(
        list(
          key = "string",
          value = "string"
        )
      )
    )
