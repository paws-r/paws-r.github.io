<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>route53_create_traffic_policy_version</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a new version of an existing traffic policy

### Description

Creates a new version of an existing traffic policy. When you create a
new version of a traffic policy, you specify the ID of the traffic
policy that you want to update and a JSON-formatted document that
describes the new version. You use traffic policies to create multiple
DNS resource record sets for one domain name (such as example.com) or
one subdomain name (such as www.example.com). You can create a maximum
of 1000 versions of a traffic policy. If you reach the limit and need to
create another version, you'll need to start a new traffic policy.

### Usage

    route53_create_traffic_policy_version(Id, Document, Comment)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="route53_create_traffic_policy_version_:_Id">Id</code></td>
<td><p>[required] The ID of the traffic policy for which you want to
create a new version.</p></td>
</tr>
<tr class="even">
<td><code
id="route53_create_traffic_policy_version_:_Document">Document</code></td>
<td><p>[required] The definition of this version of the traffic policy,
in JSON format. You specified the JSON in the
<code>create_traffic_policy_version</code> request. For more information
about the JSON format, see <code>create_traffic_policy</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="route53_create_traffic_policy_version_:_Comment">Comment</code></td>
<td><p>The comment that you specified in the
<code>create_traffic_policy_version</code> request, if any.</p></td>
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

    svc$create_traffic_policy_version(
      Id = "string",
      Document = "string",
      Comment = "string"
    )
