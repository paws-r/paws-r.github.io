<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>route53_create_traffic_policy_instance</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates resource record sets in a specified hosted zone based on the settings in a specified traffic policy version

### Description

Creates resource record sets in a specified hosted zone based on the
settings in a specified traffic policy version. In addition,
`create_traffic_policy_instance` associates the resource record sets
with a specified domain name (such as example.com) or subdomain name
(such as www.example.com). Amazon Route 53 responds to DNS queries for
the domain or subdomain name by using the resource record sets that
`create_traffic_policy_instance` created.

### Usage

    route53_create_traffic_policy_instance(HostedZoneId, Name, TTL,
      TrafficPolicyId, TrafficPolicyVersion)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="route53_create_traffic_policy_instance_:_HostedZoneId">HostedZoneId</code></td>
<td><p>[required] The ID of the hosted zone that you want Amazon Route
53 to create resource record sets in by using the configuration in a
traffic policy.</p></td>
</tr>
<tr class="even">
<td><code
id="route53_create_traffic_policy_instance_:_Name">Name</code></td>
<td><p>[required] The domain name (such as example.com) or subdomain
name (such as www.example.com) for which Amazon Route 53 responds to DNS
queries by using the resource record sets that Route 53 creates for this
traffic policy instance.</p></td>
</tr>
<tr class="odd">
<td><code
id="route53_create_traffic_policy_instance_:_TTL">TTL</code></td>
<td><p>[required] (Optional) The TTL that you want Amazon Route 53 to
assign to all of the resource record sets that it creates in the
specified hosted zone.</p></td>
</tr>
<tr class="even">
<td><code
id="route53_create_traffic_policy_instance_:_TrafficPolicyId">TrafficPolicyId</code></td>
<td><p>[required] The ID of the traffic policy that you want to use to
create resource record sets in the specified hosted zone.</p></td>
</tr>
<tr class="odd">
<td><code
id="route53_create_traffic_policy_instance_:_TrafficPolicyVersion">TrafficPolicyVersion</code></td>
<td><p>[required] The version of the traffic policy that you want to use
to create resource record sets in the specified hosted zone.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      TrafficPolicyInstance = list(
        Id = "string",
        HostedZoneId = "string",
        Name = "string",
        TTL = 123,
        State = "string",
        Message = "string",
        TrafficPolicyId = "string",
        TrafficPolicyVersion = 123,
        TrafficPolicyType = "SOA"|"A"|"TXT"|"NS"|"CNAME"|"MX"|"NAPTR"|"PTR"|"SRV"|"SPF"|"AAAA"|"CAA"|"DS"
      ),
      Location = "string"
    )

### Request syntax

    svc$create_traffic_policy_instance(
      HostedZoneId = "string",
      Name = "string",
      TTL = 123,
      TrafficPolicyId = "string",
      TrafficPolicyVersion = 123
    )
