<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lightsail_update_instance_metadata_options</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Modifies the Amazon Lightsail instance metadata parameters on a running or stopped instance

### Description

Modifies the Amazon Lightsail instance metadata parameters on a running
or stopped instance. When you modify the parameters on a running
instance, the `get_instance` or `get_instances` API operation initially
responds with a state of `pending`. After the parameter modifications
are successfully applied, the state changes to `applied` in subsequent
`get_instance` or `get_instances` API calls. For more information, see
Use IMDSv2 with an Amazon Lightsail instance in the *Amazon Lightsail
Developer Guide*.

### Usage

    lightsail_update_instance_metadata_options(instanceName, httpTokens,
      httpEndpoint, httpPutResponseHopLimit, httpProtocolIpv6)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lightsail_update_instance_metadata_options_:_instanceName">instanceName</code></td>
<td><p>[required] The name of the instance for which to update metadata
parameters.</p></td>
</tr>
<tr class="even">
<td><code
id="lightsail_update_instance_metadata_options_:_httpTokens">httpTokens</code></td>
<td><p>The state of token usage for your instance metadata requests. If
the parameter is not specified in the request, the default state is
<code>optional</code>.</p>
<p>If the state is <code>optional</code>, you can choose whether to
retrieve instance metadata with a signed token header on your request.
If you retrieve the IAM role credentials without a token, the version
1.0 role credentials are returned. If you retrieve the IAM role
credentials by using a valid signed token, the version 2.0 role
credentials are returned.</p>
<p>If the state is <code>required</code>, you must send a signed token
header with all instance metadata retrieval requests. In this state,
retrieving the IAM role credential always returns the version 2.0
credentials. The version 1.0 credentials are not available.</p></td>
</tr>
<tr class="odd">
<td><code
id="lightsail_update_instance_metadata_options_:_httpEndpoint">httpEndpoint</code></td>
<td><p>Enables or disables the HTTP metadata endpoint on your instances.
If this parameter is not specified, the existing state is
maintained.</p>
<p>If you specify a value of <code>disabled</code>, you cannot access
your instance metadata.</p></td>
</tr>
<tr class="even">
<td><code
id="lightsail_update_instance_metadata_options_:_httpPutResponseHopLimit">httpPutResponseHopLimit</code></td>
<td><p>The desired HTTP PUT response hop limit for instance metadata
requests. A larger number means that the instance metadata requests can
travel farther. If no parameter is specified, the existing state is
maintained.</p></td>
</tr>
<tr class="odd">
<td><code
id="lightsail_update_instance_metadata_options_:_httpProtocolIpv6">httpProtocolIpv6</code></td>
<td><p>Enables or disables the IPv6 endpoint for the instance metadata
service. This setting applies only when the HTTP metadata endpoint is
enabled.</p>
<p>This parameter is available only for instances in the Europe
(Stockholm) Amazon Web Services Region
(<code>eu-north-1</code>).</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      operation = list(
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

### Request syntax

    svc$update_instance_metadata_options(
      instanceName = "string",
      httpTokens = "optional"|"required",
      httpEndpoint = "disabled"|"enabled",
      httpPutResponseHopLimit = 123,
      httpProtocolIpv6 = "disabled"|"enabled"
    )
