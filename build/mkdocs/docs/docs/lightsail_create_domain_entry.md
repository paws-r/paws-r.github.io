<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lightsail_create_domain_entry</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates one of the following domain name system (DNS) records in a domain DNS zone: Address (A), canonical name (CNAME), mail exchanger (MX), name server (NS), start of authority (SOA), service locator (SRV), or text (TXT)

### Description

Creates one of the following domain name system (DNS) records in a
domain DNS zone: Address (A), canonical name (CNAME), mail exchanger
(MX), name server (NS), start of authority (SOA), service locator (SRV),
or text (TXT).

The `⁠create domain entry⁠` operation supports tag-based access control
via resource tags applied to the resource identified by `⁠domain name⁠`.
For more information, see the Amazon Lightsail Developer Guide.

### Usage

    lightsail_create_domain_entry(domainName, domainEntry)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lightsail_create_domain_entry_:_domainName">domainName</code></td>
<td><p>[required] The domain name (e.g., <code>example.com</code>) for
which you want to create the domain entry.</p></td>
</tr>
<tr class="even">
<td><code
id="lightsail_create_domain_entry_:_domainEntry">domainEntry</code></td>
<td><p>[required] An array of key-value pairs containing information
about the domain entry request.</p></td>
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

    svc$create_domain_entry(
      domainName = "string",
      domainEntry = list(
        id = "string",
        name = "string",
        target = "string",
        isAlias = TRUE|FALSE,
        type = "string",
        options = list(
          "string"
        )
      )
    )
