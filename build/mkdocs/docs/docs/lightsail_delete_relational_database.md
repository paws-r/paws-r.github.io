<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lightsail_delete_relational_database</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a database in Amazon Lightsail

### Description

Deletes a database in Amazon Lightsail.

The `⁠delete relational database⁠` operation supports tag-based access
control via resource tags applied to the resource identified by
relationalDatabaseName. For more information, see the Amazon Lightsail
Developer Guide.

### Usage

    lightsail_delete_relational_database(relationalDatabaseName,
      skipFinalSnapshot, finalRelationalDatabaseSnapshotName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lightsail_delete_relational_database_:_relationalDatabaseName">relationalDatabaseName</code></td>
<td><p>[required] The name of the database that you are
deleting.</p></td>
</tr>
<tr class="even">
<td><code
id="lightsail_delete_relational_database_:_skipFinalSnapshot">skipFinalSnapshot</code></td>
<td><p>Determines whether a final database snapshot is created before
your database is deleted. If <code>true</code> is specified, no database
snapshot is created. If <code>false</code> is specified, a database
snapshot is created before your database is deleted.</p>
<p>You must specify the <code
style="white-space: pre;">⁠final relational database snapshot name⁠</code>
parameter if the <code
style="white-space: pre;">⁠skip final snapshot⁠</code> parameter is
<code>false</code>.</p>
<p>Default: <code>false</code></p></td>
</tr>
<tr class="odd">
<td><code
id="lightsail_delete_relational_database_:_finalRelationalDatabaseSnapshotName">finalRelationalDatabaseSnapshotName</code></td>
<td><p>The name of the database snapshot created if <code
style="white-space: pre;">⁠skip final snapshot⁠</code> is
<code>false</code>, which is the default value for that parameter.</p>
<p>Specifying this parameter and also specifying the <code
style="white-space: pre;">⁠skip final snapshot⁠</code> parameter to
<code>true</code> results in an error.</p>
<p>Constraints:</p>
<ul>
<li><p>Must contain from 2 to 255 alphanumeric characters, or
hyphens.</p></li>
<li><p>The first and last character must be a letter or number.</p></li>
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

    svc$delete_relational_database(
      relationalDatabaseName = "string",
      skipFinalSnapshot = TRUE|FALSE,
      finalRelationalDatabaseSnapshotName = "string"
    )
