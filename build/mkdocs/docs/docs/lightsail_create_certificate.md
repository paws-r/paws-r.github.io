<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lightsail_create_certificate</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates an SSL/TLS certificate for an Amazon Lightsail content delivery network (CDN) distribution and a container service

### Description

Creates an SSL/TLS certificate for an Amazon Lightsail content delivery
network (CDN) distribution and a container service.

After the certificate is valid, use the
`attach_certificate_to_distribution` action to use the certificate and
its domains with your distribution. Or use the
`update_container_service` action to use the certificate and its domains
with your container service.

Only certificates created in the `us-east-1` Amazon Web Services Region
can be attached to Lightsail distributions. Lightsail distributions are
global resources that can reference an origin in any Amazon Web Services
Region, and distribute its content globally. However, all distributions
are located in the `us-east-1` Region.

### Usage

    lightsail_create_certificate(certificateName, domainName,
      subjectAlternativeNames, tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lightsail_create_certificate_:_certificateName">certificateName</code></td>
<td><p>[required] The name for the certificate.</p></td>
</tr>
<tr class="even">
<td><code
id="lightsail_create_certificate_:_domainName">domainName</code></td>
<td><p>[required] The domain name (e.g., <code>example.com</code>) for
the certificate.</p></td>
</tr>
<tr class="odd">
<td><code
id="lightsail_create_certificate_:_subjectAlternativeNames">subjectAlternativeNames</code></td>
<td><p>An array of strings that specify the alternate domains (e.g.,
<code>example2.com</code>) and subdomains (e.g.,
<code>blog.example.com</code>) for the certificate.</p>
<p>You can specify a maximum of nine alternate domains (in addition to
the primary domain name).</p>
<p>Wildcard domain entries (e.g., <code
style="white-space: pre;">⁠*.example.com⁠</code>) are not
supported.</p></td>
</tr>
<tr class="even">
<td><code id="lightsail_create_certificate_:_tags">tags</code></td>
<td><p>The tag keys and optional values to add to the certificate during
create.</p>
<p>Use the <code>tag_resource</code> action to tag a resource after it's
created.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      certificate = list(
        certificateArn = "string",
        certificateName = "string",
        domainName = "string",
        certificateDetail = list(
          arn = "string",
          name = "string",
          domainName = "string",
          status = "PENDING_VALIDATION"|"ISSUED"|"INACTIVE"|"EXPIRED"|"VALIDATION_TIMED_OUT"|"REVOKED"|"FAILED",
          serialNumber = "string",
          subjectAlternativeNames = list(
            "string"
          ),
          domainValidationRecords = list(
            list(
              domainName = "string",
              resourceRecord = list(
                name = "string",
                type = "string",
                value = "string"
              ),
              dnsRecordCreationState = list(
                code = "SUCCEEDED"|"STARTED"|"FAILED",
                message = "string"
              ),
              validationStatus = "PENDING_VALIDATION"|"FAILED"|"SUCCESS"
            )
          ),
          requestFailureReason = "string",
          inUseResourceCount = 123,
          keyAlgorithm = "string",
          createdAt = as.POSIXct(
            "2015-01-01"
          ),
          issuedAt = as.POSIXct(
            "2015-01-01"
          ),
          issuerCA = "string",
          notBefore = as.POSIXct(
            "2015-01-01"
          ),
          notAfter = as.POSIXct(
            "2015-01-01"
          ),
          eligibleToRenew = "string",
          renewalSummary = list(
            domainValidationRecords = list(
              list(
                domainName = "string",
                resourceRecord = list(
                  name = "string",
                  type = "string",
                  value = "string"
                ),
                dnsRecordCreationState = list(
                  code = "SUCCEEDED"|"STARTED"|"FAILED",
                  message = "string"
                ),
                validationStatus = "PENDING_VALIDATION"|"FAILED"|"SUCCESS"
              )
            ),
            renewalStatus = "PendingAutoRenewal"|"PendingValidation"|"Success"|"Failed",
            renewalStatusReason = "string",
            updatedAt = as.POSIXct(
              "2015-01-01"
            )
          ),
          revokedAt = as.POSIXct(
            "2015-01-01"
          ),
          revocationReason = "string",
          tags = list(
            list(
              key = "string",
              value = "string"
            )
          ),
          supportCode = "string"
        ),
        tags = list(
          list(
            key = "string",
            value = "string"
          )
        )
      ),
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

    svc$create_certificate(
      certificateName = "string",
      domainName = "string",
      subjectAlternativeNames = list(
        "string"
      ),
      tags = list(
        list(
          key = "string",
          value = "string"
        )
      )
    )
