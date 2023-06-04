<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lightsail_create_contact_method</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates an email or SMS text message contact method

### Description

Creates an email or SMS text message contact method.

A contact method is used to send you notifications about your Amazon
Lightsail resources. You can add one email address and one mobile phone
number contact method in each Amazon Web Services Region. However, SMS
text messaging is not supported in some Amazon Web Services Regions, and
SMS text messages cannot be sent to some countries/regions. For more
information, see Notifications in Amazon Lightsail.

### Usage

    lightsail_create_contact_method(protocol, contactEndpoint)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lightsail_create_contact_method_:_protocol">protocol</code></td>
<td><p>[required] The protocol of the contact method, such as
<code>Email</code> or <code>SMS</code> (text messaging).</p>
<p>The <code>SMS</code> protocol is supported only in the following
Amazon Web Services Regions.</p>
<ul>
<li><p>US East (N. Virginia) (<code>us-east-1</code>)</p></li>
<li><p>US West (Oregon) (<code>us-west-2</code>)</p></li>
<li><p>Europe (Ireland) (<code>eu-west-1</code>)</p></li>
<li><p>Asia Pacific (Tokyo) (<code>ap-northeast-1</code>)</p></li>
<li><p>Asia Pacific (Singapore) (<code>ap-southeast-1</code>)</p></li>
<li><p>Asia Pacific (Sydney) (<code>ap-southeast-2</code>)</p></li>
</ul>
<p>For a list of countries/regions where SMS text messages can be sent,
and the latest Amazon Web Services Regions where SMS text messaging is
supported, see <a
href="https://docs.aws.amazon.com/sns/latest/dg/sns-supported-regions-countries.html">Supported
Regions and Countries</a> in the <em>Amazon SNS Developer
Guide</em>.</p>
<p>For more information about notifications in Amazon Lightsail, see
Notifications in Amazon Lightsail.</p></td>
</tr>
<tr class="even">
<td><code
id="lightsail_create_contact_method_:_contactEndpoint">contactEndpoint</code></td>
<td><p>[required] The destination of the contact method, such as an
email address or a mobile phone number.</p>
<p>Use the E.164 format when specifying a mobile phone number. E.164 is
a standard for the phone number structure used for international
telecommunication. Phone numbers that follow this format can have a
maximum of 15 digits, and they are prefixed with the plus character (+)
and the country code. For example, a U.S. phone number in E.164 format
would be specified as +1XXX5550100. For more information, see <a
href="https://en.wikipedia.org/wiki/E.164">E.164</a> on
<em>Wikipedia</em>.</p></td>
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

    svc$create_contact_method(
      protocol = "Email"|"SMS",
      contactEndpoint = "string"
    )
