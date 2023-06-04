<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>route53_update_traffic_policy_instance</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the resource record sets in a specified hosted zone that were created based on the settings in a specified traffic policy version

### Description

Updates the resource record sets in a specified hosted zone that were
created based on the settings in a specified traffic policy version.

When you update a traffic policy instance, Amazon Route 53 continues to
respond to DNS queries for the root resource record set name (such as
example.com) while it replaces one group of resource record sets with
another. Route 53 performs the following operations:

1.  Route 53 creates a new group of resource record sets based on the
    specified traffic policy. This is true regardless of how significant
    the differences are between the existing resource record sets and
    the new resource record sets.

2.  When all of the new resource record sets have been created, Route 53
    starts to respond to DNS queries for the root resource record set
    name (such as example.com) by using the new resource record sets.

3.  Route 53 deletes the old group of resource record sets that are
    associated with the root resource record set name.

### Usage

    route53_update_traffic_policy_instance(Id, TTL, TrafficPolicyId,
      TrafficPolicyVersion)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="route53_update_traffic_policy_instance_:_Id">Id</code></td>
<td><p>[required] The ID of the traffic policy instance that you want to
update.</p></td>
</tr>
<tr class="even">
<td><code
id="route53_update_traffic_policy_instance_:_TTL">TTL</code></td>
<td><p>[required] The TTL that you want Amazon Route 53 to assign to all
of the updated resource record sets.</p></td>
</tr>
<tr class="odd">
<td><code
id="route53_update_traffic_policy_instance_:_TrafficPolicyId">TrafficPolicyId</code></td>
<td><p>[required] The ID of the traffic policy that you want Amazon
Route 53 to use to update resource record sets for the specified traffic
policy instance.</p></td>
</tr>
<tr class="even">
<td><code
id="route53_update_traffic_policy_instance_:_TrafficPolicyVersion">TrafficPolicyVersion</code></td>
<td><p>[required] The version of the traffic policy that you want Amazon
Route 53 to use to update resource record sets for the specified traffic
policy instance.</p></td>
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
      )
    )

### Request syntax

    svc$update_traffic_policy_instance(
      Id = "string",
      TTL = 123,
      TrafficPolicyId = "string",
      TrafficPolicyVersion = 123
    )
