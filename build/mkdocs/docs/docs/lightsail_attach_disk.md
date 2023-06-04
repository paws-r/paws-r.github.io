<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lightsail_attach_disk</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Attaches a block storage disk to a running or stopped Lightsail instance and exposes it to the instance with the specified disk name

### Description

Attaches a block storage disk to a running or stopped Lightsail instance
and exposes it to the instance with the specified disk name.

The `⁠attach disk⁠` operation supports tag-based access control via
resource tags applied to the resource identified by `⁠disk name⁠`. For
more information, see the Amazon Lightsail Developer Guide.

### Usage

    lightsail_attach_disk(diskName, instanceName, diskPath, autoMounting)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="lightsail_attach_disk_:_diskName">diskName</code></td>
<td><p>[required] The unique Lightsail disk name (e.g.,
<code>my-disk</code>).</p></td>
</tr>
<tr class="even">
<td><code
id="lightsail_attach_disk_:_instanceName">instanceName</code></td>
<td><p>[required] The name of the Lightsail instance where you want to
utilize the storage disk.</p></td>
</tr>
<tr class="odd">
<td><code id="lightsail_attach_disk_:_diskPath">diskPath</code></td>
<td><p>[required] The disk path to expose to the instance (e.g., <code
style="white-space: pre;">⁠/dev/xvdf⁠</code>).</p></td>
</tr>
<tr class="even">
<td><code
id="lightsail_attach_disk_:_autoMounting">autoMounting</code></td>
<td><p>A Boolean value used to determine the automatic mounting of a
storage volume to a virtual computer. The default value is
<code>False</code>.</p>
<p>This value only applies to Lightsail for Research resources.</p></td>
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

    svc$attach_disk(
      diskName = "string",
      instanceName = "string",
      diskPath = "string",
      autoMounting = TRUE|FALSE
    )
