<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>route53_list_traffic_policies</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets information about the latest version for every traffic policy that is associated with the current Amazon Web Services account

### Description

Gets information about the latest version for every traffic policy that
is associated with the current Amazon Web Services account. Policies are
listed in the order that they were created in.

For information about how of deleting a traffic policy affects the
response from `list_traffic_policies`, see `delete_traffic_policy`.

### Usage

    route53_list_traffic_policies(TrafficPolicyIdMarker, MaxItems)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="route53_list_traffic_policies_:_TrafficPolicyIdMarker">TrafficPolicyIdMarker</code></td>
<td><p>(Conditional) For your first request to
<code>list_traffic_policies</code>, don't include the
<code>TrafficPolicyIdMarker</code> parameter.</p>
<p>If you have more traffic policies than the value of
<code>MaxItems</code>, <code>list_traffic_policies</code> returns only
the first <code>MaxItems</code> traffic policies. To get the next group
of policies, submit another request to
<code>list_traffic_policies</code>. For the value of
<code>TrafficPolicyIdMarker</code>, specify the value of
<code>TrafficPolicyIdMarker</code> that was returned in the previous
response.</p></td>
</tr>
<tr class="even">
<td><code
id="route53_list_traffic_policies_:_MaxItems">MaxItems</code></td>
<td><p>(Optional) The maximum number of traffic policies that you want
Amazon Route 53 to return in response to this request. If you have more
than <code>MaxItems</code> traffic policies, the value of
<code>IsTruncated</code> in the response is <code>true</code>, and the
value of <code>TrafficPolicyIdMarker</code> is the ID of the first
traffic policy that Route 53 will return if you submit another
request.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      TrafficPolicySummaries = list(
        list(
          Id = "string",
          Name = "string",
          Type = "SOA"|"A"|"TXT"|"NS"|"CNAME"|"MX"|"NAPTR"|"PTR"|"SRV"|"SPF"|"AAAA"|"CAA"|"DS",
          LatestVersion = 123,
          TrafficPolicyCount = 123
        )
      ),
      IsTruncated = TRUE|FALSE,
      TrafficPolicyIdMarker = "string",
      MaxItems = "string"
    )

### Request syntax

    svc$list_traffic_policies(
      TrafficPolicyIdMarker = "string",
      MaxItems = "string"
    )
