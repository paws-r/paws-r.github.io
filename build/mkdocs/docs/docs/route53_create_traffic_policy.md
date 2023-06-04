<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>route53_create_traffic_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a traffic policy, which you use to create multiple DNS resource record sets for one domain name (such as example

### Description

Creates a traffic policy, which you use to create multiple DNS resource
record sets for one domain name (such as example.com) or one subdomain
name (such as www.example.com).

### Usage

    route53_create_traffic_policy(Name, Document, Comment)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="route53_create_traffic_policy_:_Name">Name</code></td>
<td><p>[required] The name of the traffic policy.</p></td>
</tr>
<tr class="even">
<td><code
id="route53_create_traffic_policy_:_Document">Document</code></td>
<td><p>[required] The definition of this traffic policy in JSON format.
For more information, see <a
href="https://docs.aws.amazon.com/Route53/latest/APIReference/api-policies-traffic-policy-document-format.html">Traffic
Policy Document Format</a>.</p></td>
</tr>
<tr class="odd">
<td><code
id="route53_create_traffic_policy_:_Comment">Comment</code></td>
<td><p>(Optional) Any comments that you want to include about the
traffic policy.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      TrafficPolicy = list(
        Id = "string",
        Version = 123,
        Name = "string",
        Type = "SOA"|"A"|"TXT"|"NS"|"CNAME"|"MX"|"NAPTR"|"PTR"|"SRV"|"SPF"|"AAAA"|"CAA"|"DS",
        Document = "string",
        Comment = "string"
      ),
      Location = "string"
    )

### Request syntax

    svc$create_traffic_policy(
      Name = "string",
      Document = "string",
      Comment = "string"
    )
