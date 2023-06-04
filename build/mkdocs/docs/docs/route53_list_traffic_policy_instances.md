<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>route53_list_traffic_policy_instances</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets information about the traffic policy instances that you created by using the current Amazon Web Services account

### Description

Gets information about the traffic policy instances that you created by
using the current Amazon Web Services account.

After you submit an `update_traffic_policy_instance` request, there's a
brief delay while Amazon Route 53 creates the resource record sets that
are specified in the traffic policy definition. For more information,
see the `State` response element.

Route 53 returns a maximum of 100 items in each response. If you have a
lot of traffic policy instances, you can use the `MaxItems` parameter to
list them in groups of up to 100.

### Usage

    route53_list_traffic_policy_instances(HostedZoneIdMarker,
      TrafficPolicyInstanceNameMarker, TrafficPolicyInstanceTypeMarker,
      MaxItems)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="route53_list_traffic_policy_instances_:_HostedZoneIdMarker">HostedZoneIdMarker</code></td>
<td><p>If the value of <code>IsTruncated</code> in the previous response
was <code>true</code>, you have more traffic policy instances. To get
more traffic policy instances, submit another
<code>list_traffic_policy_instances</code> request. For the value of
<code>HostedZoneId</code>, specify the value of
<code>HostedZoneIdMarker</code> from the previous response, which is the
hosted zone ID of the first traffic policy instance in the next group of
traffic policy instances.</p>
<p>If the value of <code>IsTruncated</code> in the previous response was
<code>false</code>, there are no more traffic policy instances to
get.</p></td>
</tr>
<tr class="even">
<td><code
id="route53_list_traffic_policy_instances_:_TrafficPolicyInstanceNameMarker">TrafficPolicyInstanceNameMarker</code></td>
<td><p>If the value of <code>IsTruncated</code> in the previous response
was <code>true</code>, you have more traffic policy instances. To get
more traffic policy instances, submit another
<code>list_traffic_policy_instances</code> request. For the value of
<code>trafficpolicyinstancename</code>, specify the value of
<code>TrafficPolicyInstanceNameMarker</code> from the previous response,
which is the name of the first traffic policy instance in the next group
of traffic policy instances.</p>
<p>If the value of <code>IsTruncated</code> in the previous response was
<code>false</code>, there are no more traffic policy instances to
get.</p></td>
</tr>
<tr class="odd">
<td><code
id="route53_list_traffic_policy_instances_:_TrafficPolicyInstanceTypeMarker">TrafficPolicyInstanceTypeMarker</code></td>
<td><p>If the value of <code>IsTruncated</code> in the previous response
was <code>true</code>, you have more traffic policy instances. To get
more traffic policy instances, submit another
<code>list_traffic_policy_instances</code> request. For the value of
<code>trafficpolicyinstancetype</code>, specify the value of
<code>TrafficPolicyInstanceTypeMarker</code> from the previous response,
which is the type of the first traffic policy instance in the next group
of traffic policy instances.</p>
<p>If the value of <code>IsTruncated</code> in the previous response was
<code>false</code>, there are no more traffic policy instances to
get.</p></td>
</tr>
<tr class="even">
<td><code
id="route53_list_traffic_policy_instances_:_MaxItems">MaxItems</code></td>
<td><p>The maximum number of traffic policy instances that you want
Amazon Route 53 to return in response to a
<code>list_traffic_policy_instances</code> request. If you have more
than <code>MaxItems</code> traffic policy instances, the value of the
<code>IsTruncated</code> element in the response is <code>true</code>,
and the values of <code>HostedZoneIdMarker</code>,
<code>TrafficPolicyInstanceNameMarker</code>, and
<code>TrafficPolicyInstanceTypeMarker</code> represent the first traffic
policy instance in the next group of <code>MaxItems</code> traffic
policy instances.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      TrafficPolicyInstances = list(
        list(
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
      ),
      HostedZoneIdMarker = "string",
      TrafficPolicyInstanceNameMarker = "string",
      TrafficPolicyInstanceTypeMarker = "SOA"|"A"|"TXT"|"NS"|"CNAME"|"MX"|"NAPTR"|"PTR"|"SRV"|"SPF"|"AAAA"|"CAA"|"DS",
      IsTruncated = TRUE|FALSE,
      MaxItems = "string"
    )

### Request syntax

    svc$list_traffic_policy_instances(
      HostedZoneIdMarker = "string",
      TrafficPolicyInstanceNameMarker = "string",
      TrafficPolicyInstanceTypeMarker = "SOA"|"A"|"TXT"|"NS"|"CNAME"|"MX"|"NAPTR"|"PTR"|"SRV"|"SPF"|"AAAA"|"CAA"|"DS",
      MaxItems = "string"
    )
