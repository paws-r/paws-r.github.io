<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lightsail_get_contact_methods</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns information about the configured contact methods

### Description

Returns information about the configured contact methods. Specify a
protocol in your request to return information about a specific contact
method.

A contact method is used to send you notifications about your Amazon
Lightsail resources. You can add one email address and one mobile phone
number contact method in each Amazon Web Services Region. However, SMS
text messaging is not supported in some Amazon Web Services Regions, and
SMS text messages cannot be sent to some countries/regions. For more
information, see Notifications in Amazon Lightsail.

### Usage

    lightsail_get_contact_methods(protocols)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lightsail_get_contact_methods_:_protocols">protocols</code></td>
<td><p>The protocols used to send notifications, such as
<code>Email</code>, or <code>SMS</code> (text messaging).</p>
<p>Specify a protocol in your request to return information about a
specific contact method protocol.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      contactMethods = list(
        list(
          contactEndpoint = "string",
          status = "PendingVerification"|"Valid"|"Invalid",
          protocol = "Email"|"SMS",
          name = "string",
          arn = "string",
          createdAt = as.POSIXct(
            "2015-01-01"
          ),
          location = list(
            availabilityZone = "string",
            regionName = "us-east-1"|"us-east-2"|"us-west-1"|"us-west-2"|"eu-west-1"|"eu-west-2"|"eu-west-3"|"eu-central-1"|"ca-central-1"|"ap-south-1"|"ap-southeast-1"|"ap-southeast-2"|"ap-northeast-1"|"ap-northeast-2"|"eu-north-1"
          ),
          resourceType = "ContainerService"|"Instance"|"StaticIp"|"KeyPair"|"InstanceSnapshot"|"Domain"|"PeeredVpc"|"LoadBalancer"|"LoadBalancerTlsCertificate"|"Disk"|"DiskSnapshot"|"RelationalDatabase"|"RelationalDatabaseSnapshot"|"ExportSnapshotRecord"|"CloudFormationStackRecord"|"Alarm"|"ContactMethod"|"Distribution"|"Certificate"|"Bucket",
          supportCode = "string"
        )
      )
    )

### Request syntax

    svc$get_contact_methods(
      protocols = list(
        "Email"|"SMS"
      )
    )
