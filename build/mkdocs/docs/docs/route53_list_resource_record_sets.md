<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>route53_list_resource_record_sets</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the resource record sets in a specified hosted zone

### Description

Lists the resource record sets in a specified hosted zone.

`list_resource_record_sets` returns up to 300 resource record sets at a
time in ASCII order, beginning at a position specified by the `name` and
`type` elements.

**Sort order**

`list_resource_record_sets` sorts results first by DNS name with the
labels reversed, for example:

`com.example.www.`

Note the trailing dot, which can change the sort order when the record
name contains characters that appear before `.` (decimal 46) in the
ASCII table. These characters include the following:
`⁠! \" # $ % & \' ( ) * + , -⁠`

When multiple records have the same DNS name,
`list_resource_record_sets` sorts results by the record type.

**Specifying where to start listing records**

You can use the name and type elements to specify the resource record
set that the list begins with:

#### If you do not specify Name or Type

The results begin with the first resource record set that the hosted
zone contains.

#### If you specify Name but not Type

The results begin with the first resource record set in the list whose
name is greater than or equal to `Name`.

#### If you specify Type but not Name

Amazon Route 53 returns the `InvalidInput` error.

#### If you specify both Name and Type

The results begin with the first resource record set in the list whose
name is greater than or equal to `Name`, and whose type is greater than
or equal to `Type`.

**Resource record sets that are PENDING**

This action returns the most current version of the records. This
includes records that are `PENDING`, and that are not yet available on
all Route 53 DNS servers.

**Changing resource record sets**

To ensure that you get an accurate listing of the resource record sets
for a hosted zone at a point in time, do not submit a
`change_resource_record_sets` request while you're paging through the
results of a `list_resource_record_sets` request. If you do, some pages
may display results without the latest changes while other pages display
results with the latest changes.

**Displaying the next page of results**

If a `list_resource_record_sets` command returns more than one page of
results, the value of `IsTruncated` is `true`. To display the next page
of results, get the values of `NextRecordName`, `NextRecordType`, and
`NextRecordIdentifier` (if any) from the response. Then submit another
`list_resource_record_sets` request, and specify those values for
`StartRecordName`, `StartRecordType`, and `StartRecordIdentifier`.

### Usage

    route53_list_resource_record_sets(HostedZoneId, StartRecordName,
      StartRecordType, StartRecordIdentifier, MaxItems)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="route53_list_resource_record_sets_:_HostedZoneId">HostedZoneId</code></td>
<td><p>[required] The ID of the hosted zone that contains the resource
record sets that you want to list.</p></td>
</tr>
<tr class="even">
<td><code
id="route53_list_resource_record_sets_:_StartRecordName">StartRecordName</code></td>
<td><p>The first name in the lexicographic ordering of resource record
sets that you want to list. If the specified record name doesn't exist,
the results begin with the first resource record set that has a name
greater than the value of <code>name</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="route53_list_resource_record_sets_:_StartRecordType">StartRecordType</code></td>
<td><p>The type of resource record set to begin the record listing
from.</p>
<p>Valid values for basic resource record sets: <code>A</code> |
<code>AAAA</code> | <code>CAA</code> | <code>CNAME</code> |
<code>MX</code> | <code>NAPTR</code> | <code>NS</code> |
<code>PTR</code> | <code>SOA</code> | <code>SPF</code> |
<code>SRV</code> | <code>TXT</code></p>
<p>Values for weighted, latency, geolocation, and failover resource
record sets: <code>A</code> | <code>AAAA</code> | <code>CAA</code> |
<code>CNAME</code> | <code>MX</code> | <code>NAPTR</code> |
<code>PTR</code> | <code>SPF</code> | <code>SRV</code> |
<code>TXT</code></p>
<p>Values for alias resource record sets:</p>
<ul>
<li><p><strong>API Gateway custom regional API or edge-optimized
API</strong>: A</p></li>
<li><p><strong>CloudFront distribution</strong>: A or AAAA</p></li>
<li><p><strong>Elastic Beanstalk environment that has a regionalized
subdomain</strong>: A</p></li>
<li><p><strong>Elastic Load Balancing load balancer</strong>: A |
AAAA</p></li>
<li><p><strong>S3 bucket</strong>: A</p></li>
<li><p><strong>VPC interface VPC endpoint</strong>: A</p></li>
<li><p><strong>Another resource record set in this hosted zone:</strong>
The type of the resource record set that the alias references.</p></li>
</ul>
<p>Constraint: Specifying <code>type</code> without specifying
<code>name</code> returns an <code>InvalidInput</code> error.</p></td>
</tr>
<tr class="even">
<td><code
id="route53_list_resource_record_sets_:_StartRecordIdentifier">StartRecordIdentifier</code></td>
<td><p><em>Resource record sets that have a routing policy other than
simple:</em> If results were truncated for a given DNS name and type,
specify the value of <code>NextRecordIdentifier</code> from the previous
response to get the next resource record set that has the current DNS
name and type.</p></td>
</tr>
<tr class="odd">
<td><code
id="route53_list_resource_record_sets_:_MaxItems">MaxItems</code></td>
<td><p>(Optional) The maximum number of resource records sets to include
in the response body for this request. If the response includes more
than <code>maxitems</code> resource record sets, the value of the
<code>IsTruncated</code> element in the response is <code>true</code>,
and the values of the <code>NextRecordName</code> and
<code>NextRecordType</code> elements in the response identify the first
resource record set in the next group of <code>maxitems</code> resource
record sets.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ResourceRecordSets = list(
        list(
          Name = "string",
          Type = "SOA"|"A"|"TXT"|"NS"|"CNAME"|"MX"|"NAPTR"|"PTR"|"SRV"|"SPF"|"AAAA"|"CAA"|"DS",
          SetIdentifier = "string",
          Weight = 123,
          Region = "us-east-1"|"us-east-2"|"us-west-1"|"us-west-2"|"ca-central-1"|"eu-west-1"|"eu-west-2"|"eu-west-3"|"eu-central-1"|"eu-central-2"|"ap-southeast-1"|"ap-southeast-2"|"ap-southeast-3"|"ap-northeast-1"|"ap-northeast-2"|"ap-northeast-3"|"eu-north-1"|"sa-east-1"|"cn-north-1"|"cn-northwest-1"|"ap-east-1"|"me-south-1"|"me-central-1"|"ap-south-1"|"ap-south-2"|"af-south-1"|"eu-south-1"|"eu-south-2"|"ap-southeast-4",
          GeoLocation = list(
            ContinentCode = "string",
            CountryCode = "string",
            SubdivisionCode = "string"
          ),
          Failover = "PRIMARY"|"SECONDARY",
          MultiValueAnswer = TRUE|FALSE,
          TTL = 123,
          ResourceRecords = list(
            list(
              Value = "string"
            )
          ),
          AliasTarget = list(
            HostedZoneId = "string",
            DNSName = "string",
            EvaluateTargetHealth = TRUE|FALSE
          ),
          HealthCheckId = "string",
          TrafficPolicyInstanceId = "string",
          CidrRoutingConfig = list(
            CollectionId = "string",
            LocationName = "string"
          )
        )
      ),
      IsTruncated = TRUE|FALSE,
      NextRecordName = "string",
      NextRecordType = "SOA"|"A"|"TXT"|"NS"|"CNAME"|"MX"|"NAPTR"|"PTR"|"SRV"|"SPF"|"AAAA"|"CAA"|"DS",
      NextRecordIdentifier = "string",
      MaxItems = "string"
    )

### Request syntax

    svc$list_resource_record_sets(
      HostedZoneId = "string",
      StartRecordName = "string",
      StartRecordType = "SOA"|"A"|"TXT"|"NS"|"CNAME"|"MX"|"NAPTR"|"PTR"|"SRV"|"SPF"|"AAAA"|"CAA"|"DS",
      StartRecordIdentifier = "string",
      MaxItems = "string"
    )
