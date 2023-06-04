<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lightsail_create_load_balancer</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a Lightsail load balancer

### Description

Creates a Lightsail load balancer. To learn more about deciding whether
to load balance your application, see Configure your Lightsail instances
for load balancing. You can create up to 5 load balancers per AWS Region
in your account.

When you create a load balancer, you can specify a unique name and port
settings. To change additional load balancer settings, use the
`update_load_balancer_attribute` operation.

The `⁠create load balancer⁠` operation supports tag-based access control
via request tags. For more information, see the Amazon Lightsail
Developer Guide.

### Usage

    lightsail_create_load_balancer(loadBalancerName, instancePort,
      healthCheckPath, certificateName, certificateDomainName,
      certificateAlternativeNames, tags, ipAddressType, tlsPolicyName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lightsail_create_load_balancer_:_loadBalancerName">loadBalancerName</code></td>
<td><p>[required] The name of your load balancer.</p></td>
</tr>
<tr class="even">
<td><code
id="lightsail_create_load_balancer_:_instancePort">instancePort</code></td>
<td><p>[required] The instance port where you're creating your load
balancer.</p></td>
</tr>
<tr class="odd">
<td><code
id="lightsail_create_load_balancer_:_healthCheckPath">healthCheckPath</code></td>
<td><p>The path you provided to perform the load balancer health check.
If you didn't specify a health check path, Lightsail uses the root path
of your website (e.g., <code>"/"</code>).</p>
<p>You may want to specify a custom health check path other than the
root of your application if your home page loads slowly or has a lot of
media or scripting on it.</p></td>
</tr>
<tr class="even">
<td><code
id="lightsail_create_load_balancer_:_certificateName">certificateName</code></td>
<td><p>The name of the SSL/TLS certificate.</p>
<p>If you specify <code>certificateName</code>, then
<code>certificateDomainName</code> is required (and
vice-versa).</p></td>
</tr>
<tr class="odd">
<td><code
id="lightsail_create_load_balancer_:_certificateDomainName">certificateDomainName</code></td>
<td><p>The domain name with which your certificate is associated (e.g.,
<code>example.com</code>).</p>
<p>If you specify <code>certificateDomainName</code>, then
<code>certificateName</code> is required (and vice-versa).</p></td>
</tr>
<tr class="even">
<td><code
id="lightsail_create_load_balancer_:_certificateAlternativeNames">certificateAlternativeNames</code></td>
<td><p>The optional alternative domains and subdomains to use with your
SSL/TLS certificate (e.g., <code>www.example.com</code>,
<code>example.com</code>, <code>m.example.com</code>,
<code>blog.example.com</code>).</p></td>
</tr>
<tr class="odd">
<td><code id="lightsail_create_load_balancer_:_tags">tags</code></td>
<td><p>The tag keys and optional values to add to the resource during
create.</p>
<p>Use the <code>tag_resource</code> action to tag a resource after it's
created.</p></td>
</tr>
<tr class="even">
<td><code
id="lightsail_create_load_balancer_:_ipAddressType">ipAddressType</code></td>
<td><p>The IP address type for the load balancer.</p>
<p>The possible values are <code>ipv4</code> for IPv4 only, and
<code>dualstack</code> for IPv4 and IPv6.</p>
<p>The default value is <code>dualstack</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="lightsail_create_load_balancer_:_tlsPolicyName">tlsPolicyName</code></td>
<td><p>The name of the TLS policy to apply to the load balancer.</p>
<p>Use the <code>get_load_balancer_tls_policies</code> action to get a
list of TLS policy names that you can specify.</p>
<p>For more information about load balancer TLS policies, see
Configuring TLS security policies on your Amazon Lightsail load
balancers in the <em>Amazon Lightsail Developer Guide</em>.</p></td>
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

    svc$create_load_balancer(
      loadBalancerName = "string",
      instancePort = 123,
      healthCheckPath = "string",
      certificateName = "string",
      certificateDomainName = "string",
      certificateAlternativeNames = list(
        "string"
      ),
      tags = list(
        list(
          key = "string",
          value = "string"
        )
      ),
      ipAddressType = "dualstack"|"ipv4",
      tlsPolicyName = "string"
    )
