<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lightsail_create_instances_from_snapshot</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates one or more new instances from a manual or automatic snapshot of an instance

### Description

Creates one or more new instances from a manual or automatic snapshot of
an instance.

The `⁠create instances from snapshot⁠` operation supports tag-based access
control via request tags and resource tags applied to the resource
identified by `⁠instance snapshot name⁠`. For more information, see the
Amazon Lightsail Developer Guide.

### Usage

    lightsail_create_instances_from_snapshot(instanceNames,
      attachedDiskMapping, availabilityZone, instanceSnapshotName, bundleId,
      userData, keyPairName, tags, addOns, ipAddressType, sourceInstanceName,
      restoreDate, useLatestRestorableAutoSnapshot)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lightsail_create_instances_from_snapshot_:_instanceNames">instanceNames</code></td>
<td><p>[required] The names for your new instances.</p></td>
</tr>
<tr class="even">
<td><code
id="lightsail_create_instances_from_snapshot_:_attachedDiskMapping">attachedDiskMapping</code></td>
<td><p>An object containing information about one or more disk
mappings.</p></td>
</tr>
<tr class="odd">
<td><code
id="lightsail_create_instances_from_snapshot_:_availabilityZone">availabilityZone</code></td>
<td><p>[required] The Availability Zone where you want to create your
instances. Use the following formatting: <code
style="white-space: pre;">⁠us-east-2a⁠</code> (case sensitive). You can
get a list of Availability Zones by using the <a
href="https://docs.aws.amazon.com/lightsail/2016-11-28/api-reference/API_GetRegions.html">get
regions</a> operation. Be sure to add the <code
style="white-space: pre;">⁠include Availability Zones⁠</code> parameter to
your request.</p></td>
</tr>
<tr class="even">
<td><code
id="lightsail_create_instances_from_snapshot_:_instanceSnapshotName">instanceSnapshotName</code></td>
<td><p>The name of the instance snapshot on which you are basing your
new instances. Use the get instance snapshots operation to return
information about your existing snapshots.</p>
<p>Constraint:</p>
<ul>
<li><p>This parameter cannot be defined together with the <code
style="white-space: pre;">⁠source instance name⁠</code> parameter. The
<code style="white-space: pre;">⁠instance snapshot name⁠</code> and <code
style="white-space: pre;">⁠source instance name⁠</code> parameters are
mutually exclusive.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="lightsail_create_instances_from_snapshot_:_bundleId">bundleId</code></td>
<td><p>[required] The bundle of specification information for your
virtual private server (or <em>instance</em>), including the pricing
plan (e.g., <code>micro_1_0</code>).</p></td>
</tr>
<tr class="even">
<td><code
id="lightsail_create_instances_from_snapshot_:_userData">userData</code></td>
<td><p>You can create a launch script that configures a server with
additional user data. For example, <code
style="white-space: pre;">⁠apt-get -y update⁠</code>.</p>
<p>Depending on the machine image you choose, the command to get
software on your instance varies. Amazon Linux and CentOS use
<code>yum</code>, Debian and Ubuntu use <code>apt-get</code>, and
FreeBSD uses <code>pkg</code>. For a complete list, see the Amazon
Lightsail Developer Guide.</p></td>
</tr>
<tr class="odd">
<td><code
id="lightsail_create_instances_from_snapshot_:_keyPairName">keyPairName</code></td>
<td><p>The name for your key pair.</p></td>
</tr>
<tr class="even">
<td><code
id="lightsail_create_instances_from_snapshot_:_tags">tags</code></td>
<td><p>The tag keys and optional values to add to the resource during
create.</p>
<p>Use the <code>tag_resource</code> action to tag a resource after it's
created.</p></td>
</tr>
<tr class="odd">
<td><code
id="lightsail_create_instances_from_snapshot_:_addOns">addOns</code></td>
<td><p>An array of objects representing the add-ons to enable for the
new instance.</p></td>
</tr>
<tr class="even">
<td><code
id="lightsail_create_instances_from_snapshot_:_ipAddressType">ipAddressType</code></td>
<td><p>The IP address type for the instance.</p>
<p>The possible values are <code>ipv4</code> for IPv4 only, and
<code>dualstack</code> for IPv4 and IPv6.</p>
<p>The default value is <code>dualstack</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="lightsail_create_instances_from_snapshot_:_sourceInstanceName">sourceInstanceName</code></td>
<td><p>The name of the source instance from which the source automatic
snapshot was created.</p>
<p>Constraints:</p>
<ul>
<li><p>This parameter cannot be defined together with the <code
style="white-space: pre;">⁠instance snapshot name⁠</code> parameter. The
<code style="white-space: pre;">⁠source instance name⁠</code> and <code
style="white-space: pre;">⁠instance snapshot name⁠</code> parameters are
mutually exclusive.</p></li>
<li><p>Define this parameter only when creating a new instance from an
automatic snapshot. For more information, see the Amazon Lightsail
Developer Guide.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="lightsail_create_instances_from_snapshot_:_restoreDate">restoreDate</code></td>
<td><p>The date of the automatic snapshot to use for the new instance.
Use the <code style="white-space: pre;">⁠get auto snapshots⁠</code>
operation to identify the dates of the available automatic
snapshots.</p>
<p>Constraints:</p>
<ul>
<li><p>Must be specified in <code>YYYY-MM-DD</code> format.</p></li>
<li><p>This parameter cannot be defined together with the <code
style="white-space: pre;">⁠use latest restorable auto snapshot⁠</code>
parameter. The <code style="white-space: pre;">⁠restore date⁠</code> and
<code
style="white-space: pre;">⁠use latest restorable auto snapshot⁠</code>
parameters are mutually exclusive.</p></li>
<li><p>Define this parameter only when creating a new instance from an
automatic snapshot. For more information, see the Amazon Lightsail
Developer Guide.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="lightsail_create_instances_from_snapshot_:_useLatestRestorableAutoSnapshot">useLatestRestorableAutoSnapshot</code></td>
<td><p>A Boolean value to indicate whether to use the latest available
automatic snapshot.</p>
<p>Constraints:</p>
<ul>
<li><p>This parameter cannot be defined together with the <code
style="white-space: pre;">⁠restore date⁠</code> parameter. The <code
style="white-space: pre;">⁠use latest restorable auto snapshot⁠</code> and
<code style="white-space: pre;">⁠restore date⁠</code> parameters are
mutually exclusive.</p></li>
<li><p>Define this parameter only when creating a new instance from an
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

    svc$create_instances_from_snapshot(
      instanceNames = list(
        "string"
      ),
      attachedDiskMapping = list(
        list(
          list(
            originalDiskPath = "string",
            newDiskName = "string"
          )
        )
      ),
      availabilityZone = "string",
      instanceSnapshotName = "string",
      bundleId = "string",
      userData = "string",
      keyPairName = "string",
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
      ipAddressType = "dualstack"|"ipv4",
      sourceInstanceName = "string",
      restoreDate = "string",
      useLatestRestorableAutoSnapshot = TRUE|FALSE
    )
