<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lightsail_create_relational_database_from_snapshot</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a new database from an existing database snapshot in Amazon Lightsail

### Description

Creates a new database from an existing database snapshot in Amazon
Lightsail.

You can create a new database from a snapshot in if something goes wrong
with your original database, or to change it to a different plan, such
as a high availability or standard plan.

The `⁠create relational database from snapshot⁠` operation supports
tag-based access control via request tags and resource tags applied to
the resource identified by relationalDatabaseSnapshotName. For more
information, see the Amazon Lightsail Developer Guide.

### Usage

    lightsail_create_relational_database_from_snapshot(
      relationalDatabaseName, availabilityZone, publiclyAccessible,
      relationalDatabaseSnapshotName, relationalDatabaseBundleId,
      sourceRelationalDatabaseName, restoreTime, useLatestRestorableTime,
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
id="lightsail_create_relational_database_from_snapshot_:_relationalDatabaseName">relationalDatabaseName</code></td>
<td><p>[required] The name to use for your new Lightsail database
resource.</p>
<p>Constraints:</p>
<ul>
<li><p>Must contain from 2 to 255 alphanumeric characters, or
hyphens.</p></li>
<li><p>The first and last character must be a letter or number.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="lightsail_create_relational_database_from_snapshot_:_availabilityZone">availabilityZone</code></td>
<td><p>The Availability Zone in which to create your new database. Use
the <code style="white-space: pre;">⁠us-east-2a⁠</code> case-sensitive
format.</p>
<p>You can get a list of Availability Zones by using the <code
style="white-space: pre;">⁠get regions⁠</code> operation. Be sure to add
the <code
style="white-space: pre;">⁠include relational database Availability Zones⁠</code>
parameter to your request.</p></td>
</tr>
<tr class="odd">
<td><code
id="lightsail_create_relational_database_from_snapshot_:_publiclyAccessible">publiclyAccessible</code></td>
<td><p>Specifies the accessibility options for your new database. A
value of <code>true</code> specifies a database that is available to
resources outside of your Lightsail account. A value of
<code>false</code> specifies a database that is available only to your
Lightsail resources in the same region as your database.</p></td>
</tr>
<tr class="even">
<td><code
id="lightsail_create_relational_database_from_snapshot_:_relationalDatabaseSnapshotName">relationalDatabaseSnapshotName</code></td>
<td><p>The name of the database snapshot from which to create your new
database.</p></td>
</tr>
<tr class="odd">
<td><code
id="lightsail_create_relational_database_from_snapshot_:_relationalDatabaseBundleId">relationalDatabaseBundleId</code></td>
<td><p>The bundle ID for your new database. A bundle describes the
performance specifications for your database.</p>
<p>You can get a list of database bundle IDs by using the <code
style="white-space: pre;">⁠get relational database bundles⁠</code>
operation.</p>
<p>When creating a new database from a snapshot, you cannot choose a
bundle that is smaller than the bundle of the source database.</p></td>
</tr>
<tr class="even">
<td><code
id="lightsail_create_relational_database_from_snapshot_:_sourceRelationalDatabaseName">sourceRelationalDatabaseName</code></td>
<td><p>The name of the source database.</p></td>
</tr>
<tr class="odd">
<td><code
id="lightsail_create_relational_database_from_snapshot_:_restoreTime">restoreTime</code></td>
<td><p>The date and time to restore your database from.</p>
<p>Constraints:</p>
<ul>
<li><p>Must be before the latest restorable time for the
database.</p></li>
<li><p>Cannot be specified if the <code
style="white-space: pre;">⁠use latest restorable time⁠</code> parameter is
<code>true</code>.</p></li>
<li><p>Specified in Coordinated Universal Time (UTC).</p></li>
<li><p>Specified in the Unix time format.</p>
<p>For example, if you wish to use a restore time of October 1, 2018, at
8 PM UTC, then you input <code>1538424000</code> as the restore
time.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="lightsail_create_relational_database_from_snapshot_:_useLatestRestorableTime">useLatestRestorableTime</code></td>
<td><p>Specifies whether your database is restored from the latest
backup time. A value of <code>true</code> restores from the latest
backup time.</p>
<p>Default: <code>false</code></p>
<p>Constraints: Cannot be specified if the <code
style="white-space: pre;">⁠restore time⁠</code> parameter is
provided.</p></td>
</tr>
<tr class="odd">
<td><code
id="lightsail_create_relational_database_from_snapshot_:_tags">tags</code></td>
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

    svc$create_relational_database_from_snapshot(
      relationalDatabaseName = "string",
      availabilityZone = "string",
      publiclyAccessible = TRUE|FALSE,
      relationalDatabaseSnapshotName = "string",
      relationalDatabaseBundleId = "string",
      sourceRelationalDatabaseName = "string",
      restoreTime = as.POSIXct(
        "2015-01-01"
      ),
      useLatestRestorableTime = TRUE|FALSE,
      tags = list(
        list(
          key = "string",
          value = "string"
        )
      )
    )
