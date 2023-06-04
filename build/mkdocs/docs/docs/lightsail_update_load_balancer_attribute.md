<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lightsail_update_load_balancer_attribute</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the specified attribute for a load balancer

### Description

Updates the specified attribute for a load balancer. You can only update
one attribute at a time.

The `⁠update load balancer attribute⁠` operation supports tag-based access
control via resource tags applied to the resource identified by
`⁠load balancer name⁠`. For more information, see the Amazon Lightsail
Developer Guide.

### Usage

    lightsail_update_load_balancer_attribute(loadBalancerName,
      attributeName, attributeValue)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lightsail_update_load_balancer_attribute_:_loadBalancerName">loadBalancerName</code></td>
<td><p>[required] The name of the load balancer that you want to modify
(e.g., <code>my-load-balancer</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="lightsail_update_load_balancer_attribute_:_attributeName">attributeName</code></td>
<td><p>[required] The name of the attribute you want to update.</p></td>
</tr>
<tr class="odd">
<td><code
id="lightsail_update_load_balancer_attribute_:_attributeValue">attributeValue</code></td>
<td><p>[required] The value that you want to specify for the attribute
name.</p>
<p>The following values are supported depending on what you specify for
the <code>attributeName</code> request parameter:</p>
<ul>
<li><p>If you specify <code>HealthCheckPath</code> for the
<code>attributeName</code> request parameter, then the
<code>attributeValue</code> request parameter must be the path to ping
on the target (for example, <code
style="white-space: pre;">⁠/weather/us/wa/seattle⁠</code>).</p></li>
<li><p>If you specify <code>SessionStickinessEnabled</code> for the
<code>attributeName</code> request parameter, then the
<code>attributeValue</code> request parameter must be <code>true</code>
to activate session stickiness or <code>false</code> to deactivate
session stickiness.</p></li>
<li><p>If you specify
<code>SessionStickiness_LB_CookieDurationSeconds</code> for the
<code>attributeName</code> request parameter, then the
<code>attributeValue</code> request parameter must be an interger that
represents the cookie duration in seconds.</p></li>
<li><p>If you specify <code>HttpsRedirectionEnabled</code> for the
<code>attributeName</code> request parameter, then the
<code>attributeValue</code> request parameter must be <code>true</code>
to activate HTTP to HTTPS redirection or <code>false</code> to
deactivate HTTP to HTTPS redirection.</p></li>
<li><p>If you specify <code>TlsPolicyName</code> for the
<code>attributeName</code> request parameter, then the
<code>attributeValue</code> request parameter must be the name of the
TLS policy.</p>
<p>Use the <code>get_load_balancer_tls_policies</code> action to get a
list of TLS policy names that you can specify.</p></li>
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

    svc$update_load_balancer_attribute(
      loadBalancerName = "string",
      attributeName = "HealthCheckPath"|"SessionStickinessEnabled"|"SessionStickiness_LB_CookieDurationSeconds"|"HttpsRedirectionEnabled"|"TlsPolicyName",
      attributeValue = "string"
    )
