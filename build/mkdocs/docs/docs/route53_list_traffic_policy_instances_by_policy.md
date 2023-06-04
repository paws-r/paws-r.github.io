<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>route53_list_traffic_policy_instances_by_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets information about the traffic policy instances that you created by using a specify traffic policy version

### Description

Gets information about the traffic policy instances that you created by
using a specify traffic policy version.

After you submit a `create_traffic_policy_instance` or an
`update_traffic_policy_instance` request, there's a brief delay while
Amazon Route 53 creates the resource record sets that are specified in
the traffic policy definition. For more information, see the `State`
response element.

Route 53 returns a maximum of 100 items in each response. If you have a
lot of traffic policy instances, you can use the `MaxItems` parameter to
list them in groups of up to 100.

### Usage

    route53_list_traffic_policy_instances_by_policy(TrafficPolicyId,
      TrafficPolicyVersion, HostedZoneIdMarker,
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
id="route53_list_traffic_policy_instances_by_policy_:_TrafficPolicyId">TrafficPolicyId</code></td>
<td><p>[required] The ID of the traffic policy for which you want to
list traffic policy instances.</p></td>
</tr>
<tr class="even">
<td><code
id="route53_list_traffic_policy_instances_by_policy_:_TrafficPolicyVersion">TrafficPolicyVersion</code></td>
<td><p>[required] The version of the traffic policy for which you want
to list traffic policy instances. The version must be associated with
the traffic policy that is specified by
<code>TrafficPolicyId</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="route53_list_traffic_policy_instances_by_policy_:_HostedZoneIdMarker">HostedZoneIdMarker</code></td>
<td><p>If the value of <code>IsTruncated</code> in the previous response
was <code>true</code>, you have more traffic policy instances. To get
more traffic policy instances, submit another
<code>list_traffic_policy_instances_by_policy</code> request.</p>
<p>For the value of <code>hostedzoneid</code>, specify the value of
<code>HostedZoneIdMarker</code> from the previous response, which is the
hosted zone ID of the first traffic policy instance that Amazon Route 53
will return if you submit another request.</p>
<p>If the value of <code>IsTruncated</code> in the previous response was
<code>false</code>, there are no more traffic policy instances to
get.</p></td>
</tr>
<tr class="even">
<td><code
id="route53_list_traffic_policy_instances_by_policy_:_TrafficPolicyInstanceNameMarker">TrafficPolicyInstanceNameMarker</code></td>
<td><p>If the value of <code>IsTruncated</code> in the previous response
was <code>true</code>, you have more traffic policy instances. To get
more traffic policy instances, submit another
<code>list_traffic_policy_instances_by_policy</code> request.</p>
<p>For the value of <code>trafficpolicyinstancename</code>, specify the
value of <code>TrafficPolicyInstanceNameMarker</code> from the previous
response, which is the name of the first traffic policy instance that
Amazon Route 53 will return if you submit another request.</p>
<p>If the value of <code>IsTruncated</code> in the previous response was
<code>false</code>, there are no more traffic policy instances to
get.</p></td>
</tr>
<tr class="odd">
<td><code
id="route53_list_traffic_policy_instances_by_policy_:_TrafficPolicyInstanceTypeMarker">TrafficPolicyInstanceTypeMarker</code></td>
<td><p>If the value of <code>IsTruncated</code> in the previous response
was <code>true</code>, you have more traffic policy instances. To get
more traffic policy instances, submit another
<code>list_traffic_policy_instances_by_policy</code> request.</p>
<p>For the value of <code>trafficpolicyinstancetype</code>, specify the
value of <code>TrafficPolicyInstanceTypeMarker</code> from the previous
response, which is the name of the first traffic policy instance that
Amazon Route 53 will return if you submit another request.</p>
<p>If the value of <code>IsTruncated</code> in the previous response was
<code>false</code>, there are no more traffic policy instances to
get.</p></td>
</tr>
<tr class="even">
<td><code
id="route53_list_traffic_policy_instances_by_policy_:_MaxItems">MaxItems</code></td>
<td><p>The maximum number of traffic policy instances to be included in
the response body for this request. If you have more than
<code>MaxItems</code> traffic policy instances, the value of the
<code>IsTruncated</code> element in the response is <code>true</code>,
and the values of <code>HostedZoneIdMarker</code>,
<code>TrafficPolicyInstanceNameMarker</code>, and
<code>TrafficPolicyInstanceTypeMarker</code> represent the first traffic
policy instance that Amazon Route 53 will return if you submit another
request.</p></td>
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

    svc$list_traffic_policy_instances_by_policy(
      TrafficPolicyId = "string",
      TrafficPolicyVersion = 123,
      HostedZoneIdMarker = "string",
      TrafficPolicyInstanceNameMarker = "string",
      TrafficPolicyInstanceTypeMarker = "SOA"|"A"|"TXT"|"NS"|"CNAME"|"MX"|"NAPTR"|"PTR"|"SRV"|"SPF"|"AAAA"|"CAA"|"DS",
      MaxItems = "string"
    )
