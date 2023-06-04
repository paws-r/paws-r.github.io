<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lightsail_copy_snapshot</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Copies a manual snapshot of an instance or disk as another manual snapshot, or copies an automatic snapshot of an instance or disk as a manual snapshot

### Description

Copies a manual snapshot of an instance or disk as another manual
snapshot, or copies an automatic snapshot of an instance or disk as a
manual snapshot. This operation can also be used to copy a manual or
automatic snapshot of an instance or a disk from one Amazon Web Services
Region to another in Amazon Lightsail.

When copying a *manual snapshot*, be sure to define the `⁠source region⁠`,
`⁠source snapshot name⁠`, and `⁠target snapshot name⁠` parameters.

When copying an *automatic snapshot*, be sure to define the
`⁠source region⁠`, `⁠source resource name⁠`, `⁠target snapshot name⁠`, and
either the `⁠restore date⁠` or the `⁠use latest restorable auto snapshot⁠`
parameters.

### Usage

    lightsail_copy_snapshot(sourceSnapshotName, sourceResourceName,
      restoreDate, useLatestRestorableAutoSnapshot, targetSnapshotName,
      sourceRegion)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lightsail_copy_snapshot_:_sourceSnapshotName">sourceSnapshotName</code></td>
<td><p>The name of the source manual snapshot to copy.</p>
<p>Constraint:</p>
<ul>
<li><p>Define this parameter only when copying a manual snapshot as
another manual snapshot.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="lightsail_copy_snapshot_:_sourceResourceName">sourceResourceName</code></td>
<td><p>The name of the source instance or disk from which the source
automatic snapshot was created.</p>
<p>Constraint:</p>
<ul>
<li><p>Define this parameter only when copying an automatic snapshot as
a manual snapshot. For more information, see the Amazon Lightsail
Developer Guide.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="lightsail_copy_snapshot_:_restoreDate">restoreDate</code></td>
<td><p>The date of the source automatic snapshot to copy. Use the <code
style="white-space: pre;">⁠get auto snapshots⁠</code> operation to
identify the dates of the available automatic snapshots.</p>
<p>Constraints:</p>
<ul>
<li><p>Must be specified in <code>YYYY-MM-DD</code> format.</p></li>
<li><p>This parameter cannot be defined together with the <code
style="white-space: pre;">⁠use latest restorable auto snapshot⁠</code>
parameter. The <code style="white-space: pre;">⁠restore date⁠</code> and
<code
style="white-space: pre;">⁠use latest restorable auto snapshot⁠</code>
parameters are mutually exclusive.</p></li>
<li><p>Define this parameter only when copying an automatic snapshot as
a manual snapshot. For more information, see the Amazon Lightsail
Developer Guide.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="lightsail_copy_snapshot_:_useLatestRestorableAutoSnapshot">useLatestRestorableAutoSnapshot</code></td>
<td><p>A Boolean value to indicate whether to use the latest available
automatic snapshot of the specified source instance or disk.</p>
<p>Constraints:</p>
<ul>
<li><p>This parameter cannot be defined together with the <code
style="white-space: pre;">⁠restore date⁠</code> parameter. The <code
style="white-space: pre;">⁠use latest restorable auto snapshot⁠</code> and
<code style="white-space: pre;">⁠restore date⁠</code> parameters are
mutually exclusive.</p></li>
<li><p>Define this parameter only when copying an automatic snapshot as
a manual snapshot. For more information, see the Amazon Lightsail
Developer Guide.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="lightsail_copy_snapshot_:_targetSnapshotName">targetSnapshotName</code></td>
<td><p>[required] The name of the new manual snapshot to be created as a
copy.</p></td>
</tr>
<tr class="even">
<td><code
id="lightsail_copy_snapshot_:_sourceRegion">sourceRegion</code></td>
<td><p>[required] The Amazon Web Services Region where the source manual
or automatic snapshot is located.</p></td>
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

    svc$copy_snapshot(
      sourceSnapshotName = "string",
      sourceResourceName = "string",
      restoreDate = "string",
      useLatestRestorableAutoSnapshot = TRUE|FALSE,
      targetSnapshotName = "string",
      sourceRegion = "us-east-1"|"us-east-2"|"us-west-1"|"us-west-2"|"eu-west-1"|"eu-west-2"|"eu-west-3"|"eu-central-1"|"ca-central-1"|"ap-south-1"|"ap-southeast-1"|"ap-southeast-2"|"ap-northeast-1"|"ap-northeast-2"|"eu-north-1"
    )
