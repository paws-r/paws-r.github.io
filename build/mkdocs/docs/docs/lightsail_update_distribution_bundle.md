<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lightsail_update_distribution_bundle</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the bundle of your Amazon Lightsail content delivery network (CDN) distribution

### Description

Updates the bundle of your Amazon Lightsail content delivery network
(CDN) distribution.

A distribution bundle specifies the monthly network transfer quota and
monthly cost of your distribution.

Update your distribution's bundle if your distribution is going over its
monthly network transfer quota and is incurring an overage fee.

You can update your distribution's bundle only one time within your
monthly Amazon Web Services billing cycle. To determine if you can
update your distribution's bundle, use the `get_distributions` action.
The `ableToUpdateBundle` parameter in the result will indicate whether
you can currently update your distribution's bundle.

### Usage

    lightsail_update_distribution_bundle(distributionName, bundleId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lightsail_update_distribution_bundle_:_distributionName">distributionName</code></td>
<td><p>The name of the distribution for which to update the bundle.</p>
<p>Use the <code>get_distributions</code> action to get a list of
distribution names that you can specify.</p></td>
</tr>
<tr class="even">
<td><code
id="lightsail_update_distribution_bundle_:_bundleId">bundleId</code></td>
<td><p>The bundle ID of the new bundle to apply to your
distribution.</p>
<p>Use the <code>get_distribution_bundles</code> action to get a list of
distribution bundle IDs that you can specify.</p></td>
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

    svc$update_distribution_bundle(
      distributionName = "string",
      bundleId = "string"
    )
