<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lightsail_delete_key_pair</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the specified key pair by removing the public key from Amazon Lightsail

### Description

Deletes the specified key pair by removing the public key from Amazon
Lightsail.

You can delete key pairs that were created using the `import_key_pair`
and `create_key_pair` actions, as well as the Lightsail default key
pair. A new default key pair will not be created unless you launch an
instance without specifying a custom key pair, or you call the
`download_default_key_pair` API.

The `⁠delete key pair⁠` operation supports tag-based access control via
resource tags applied to the resource identified by `⁠key pair name⁠`. For
more information, see the Amazon Lightsail Developer Guide.

### Usage

    lightsail_delete_key_pair(keyPairName, expectedFingerprint)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lightsail_delete_key_pair_:_keyPairName">keyPairName</code></td>
<td><p>[required] The name of the key pair to delete.</p></td>
</tr>
<tr class="even">
<td><code
id="lightsail_delete_key_pair_:_expectedFingerprint">expectedFingerprint</code></td>
<td><p>The RSA fingerprint of the Lightsail default key pair to
delete.</p>
<p>The <code>expectedFingerprint</code> parameter is required only when
specifying to delete a Lightsail default key pair.</p></td>
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

    svc$delete_key_pair(
      keyPairName = "string",
      expectedFingerprint = "string"
    )
