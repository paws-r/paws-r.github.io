<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lightsail_create_load_balancer_tls_certificate</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates an SSL/TLS certificate for an Amazon Lightsail load balancer

### Description

Creates an SSL/TLS certificate for an Amazon Lightsail load balancer.

TLS is just an updated, more secure version of Secure Socket Layer
(SSL).

The `create_load_balancer_tls_certificate` operation supports tag-based
access control via resource tags applied to the resource identified by
`⁠load balancer name⁠`. For more information, see the Amazon Lightsail
Developer Guide.

### Usage

    lightsail_create_load_balancer_tls_certificate(loadBalancerName,
      certificateName, certificateDomainName, certificateAlternativeNames,
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
id="lightsail_create_load_balancer_tls_certificate_:_loadBalancerName">loadBalancerName</code></td>
<td><p>[required] The load balancer name where you want to create the
SSL/TLS certificate.</p></td>
</tr>
<tr class="even">
<td><code
id="lightsail_create_load_balancer_tls_certificate_:_certificateName">certificateName</code></td>
<td><p>[required] The SSL/TLS certificate name.</p>
<p>You can have up to 10 certificates in your account at one time. Each
Lightsail load balancer can have up to 2 certificates associated with it
at one time. There is also an overall limit to the number of
certificates that can be issue in a 365-day period. For more
information, see <a
href="https://docs.aws.amazon.com/acm/latest/userguide/acm-limits.html">Limits</a>.</p></td>
</tr>
<tr class="odd">
<td><code
id="lightsail_create_load_balancer_tls_certificate_:_certificateDomainName">certificateDomainName</code></td>
<td><p>[required] The domain name (e.g., <code>example.com</code>) for
your SSL/TLS certificate.</p></td>
</tr>
<tr class="even">
<td><code
id="lightsail_create_load_balancer_tls_certificate_:_certificateAlternativeNames">certificateAlternativeNames</code></td>
<td><p>An array of strings listing alternative domains and subdomains
for your SSL/TLS certificate. Lightsail will de-dupe the names for you.
You can have a maximum of 9 alternative names (in addition to the 1
primary domain). We do not support wildcards (e.g., <code
style="white-space: pre;">⁠*.example.com⁠</code>).</p></td>
</tr>
<tr class="odd">
<td><code
id="lightsail_create_load_balancer_tls_certificate_:_tags">tags</code></td>
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

    svc$create_load_balancer_tls_certificate(
      loadBalancerName = "string",
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
      )
    )
