<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lightsail_open_instance_public_ports</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Opens ports for a specific Amazon Lightsail instance, and specifies the IP addresses allowed to connect to the instance through the ports, and the protocol

### Description

Opens ports for a specific Amazon Lightsail instance, and specifies the
IP addresses allowed to connect to the instance through the ports, and
the protocol.

The `open_instance_public_ports` action supports tag-based access
control via resource tags applied to the resource identified by
`instanceName`. For more information, see the Amazon Lightsail Developer
Guide.

### Usage

    lightsail_open_instance_public_ports(portInfo, instanceName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lightsail_open_instance_public_ports_:_portInfo">portInfo</code></td>
<td><p>[required] An object to describe the ports to open for the
specified instance.</p></td>
</tr>
<tr class="even">
<td><code
id="lightsail_open_instance_public_ports_:_instanceName">instanceName</code></td>
<td><p>[required] The name of the instance for which to open
ports.</p></td>
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

    svc$open_instance_public_ports(
      portInfo = list(
        fromPort = 123,
        toPort = 123,
        protocol = "tcp"|"all"|"udp"|"icmp",
        cidrs = list(
          "string"
        ),
        ipv6Cidrs = list(
          "string"
        ),
        cidrListAliases = list(
          "string"
        )
      ),
      instanceName = "string"
    )
