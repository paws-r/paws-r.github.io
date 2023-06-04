<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lightsail_create_instances</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates one or more Amazon Lightsail instances

### Description

Creates one or more Amazon Lightsail instances.

The `⁠create instances⁠` operation supports tag-based access control via
request tags. For more information, see the Lightsail Developer Guide.

### Usage

    lightsail_create_instances(instanceNames, availabilityZone,
      customImageName, blueprintId, bundleId, userData, keyPairName, tags,
      addOns, ipAddressType)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lightsail_create_instances_:_instanceNames">instanceNames</code></td>
<td><p>[required] The names to use for your new Lightsail instances.
Separate multiple values using quotation marks and commas, for example:
<code
style="white-space: pre;">⁠["MyFirstInstance","MySecondInstance"]⁠</code></p></td>
</tr>
<tr class="even">
<td><code
id="lightsail_create_instances_:_availabilityZone">availabilityZone</code></td>
<td><p>[required] The Availability Zone in which to create your
instance. Use the following format: <code
style="white-space: pre;">⁠us-east-2a⁠</code> (case sensitive). You can
get a list of Availability Zones by using the <a
href="https://docs.aws.amazon.com/lightsail/2016-11-28/api-reference/API_GetRegions.html">get
regions</a> operation. Be sure to add the <code
style="white-space: pre;">⁠include Availability Zones⁠</code> parameter to
your request.</p></td>
</tr>
<tr class="odd">
<td><code
id="lightsail_create_instances_:_customImageName">customImageName</code></td>
<td><p>(Deprecated) The name for your custom image.</p>
<p>In releases prior to June 12, 2017, this parameter was ignored by the
API. It is now deprecated.</p></td>
</tr>
<tr class="even">
<td><code
id="lightsail_create_instances_:_blueprintId">blueprintId</code></td>
<td><p>[required] The ID for a virtual private server image (e.g.,
<code>app_wordpress_4_4</code> or <code>app_lamp_7_0</code>). Use the
<code style="white-space: pre;">⁠get blueprints⁠</code> operation to
return a list of available images (or <em>blueprints</em>).</p>
<p>Use active blueprints when creating new instances. Inactive
blueprints are listed to support customers with existing instances and
are not necessarily available to create new instances. Blueprints are
marked inactive when they become outdated due to operating system
updates or new application releases.</p></td>
</tr>
<tr class="odd">
<td><code
id="lightsail_create_instances_:_bundleId">bundleId</code></td>
<td><p>[required] The bundle of specification information for your
virtual private server (or <em>instance</em>), including the pricing
plan (e.g., <code>micro_1_0</code>).</p></td>
</tr>
<tr class="even">
<td><code
id="lightsail_create_instances_:_userData">userData</code></td>
<td><p>A launch script you can create that configures a server with
additional user data. For example, you might want to run <code
style="white-space: pre;">⁠apt-get -y update⁠</code>.</p>
<p>Depending on the machine image you choose, the command to get
software on your instance varies. Amazon Linux and CentOS use
<code>yum</code>, Debian and Ubuntu use <code>apt-get</code>, and
FreeBSD uses <code>pkg</code>. For a complete list, see the Amazon
Lightsail Developer Guide.</p></td>
</tr>
<tr class="odd">
<td><code
id="lightsail_create_instances_:_keyPairName">keyPairName</code></td>
<td><p>The name of your key pair.</p></td>
</tr>
<tr class="even">
<td><code id="lightsail_create_instances_:_tags">tags</code></td>
<td><p>The tag keys and optional values to add to the resource during
create.</p>
<p>Use the <code>tag_resource</code> action to tag a resource after it's
created.</p></td>
</tr>
<tr class="odd">
<td><code id="lightsail_create_instances_:_addOns">addOns</code></td>
<td><p>An array of objects representing the add-ons to enable for the
new instance.</p></td>
</tr>
<tr class="even">
<td><code
id="lightsail_create_instances_:_ipAddressType">ipAddressType</code></td>
<td><p>The IP address type for the instance.</p>
<p>The possible values are <code>ipv4</code> for IPv4 only, and
<code>dualstack</code> for IPv4 and IPv6.</p>
<p>The default value is <code>dualstack</code>.</p></td>
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

    svc$create_instances(
      instanceNames = list(
        "string"
      ),
      availabilityZone = "string",
      customImageName = "string",
      blueprintId = "string",
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
      ipAddressType = "dualstack"|"ipv4"
    )
