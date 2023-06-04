<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>route53_list_traffic_policy_versions</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets information about all of the versions for a specified traffic policy

### Description

Gets information about all of the versions for a specified traffic
policy.

Traffic policy versions are listed in numerical order by
`VersionNumber`.

### Usage

    route53_list_traffic_policy_versions(Id, TrafficPolicyVersionMarker,
      MaxItems)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="route53_list_traffic_policy_versions_:_Id">Id</code></td>
<td><p>[required] Specify the value of <code>Id</code> of the traffic
policy for which you want to list all versions.</p></td>
</tr>
<tr class="even">
<td><code
id="route53_list_traffic_policy_versions_:_TrafficPolicyVersionMarker">TrafficPolicyVersionMarker</code></td>
<td><p>For your first request to
<code>list_traffic_policy_versions</code>, don't include the
<code>TrafficPolicyVersionMarker</code> parameter.</p>
<p>If you have more traffic policy versions than the value of
<code>MaxItems</code>, <code>list_traffic_policy_versions</code> returns
only the first group of <code>MaxItems</code> versions. To get more
traffic policy versions, submit another
<code>list_traffic_policy_versions</code> request. For the value of
<code>TrafficPolicyVersionMarker</code>, specify the value of
<code>TrafficPolicyVersionMarker</code> in the previous
response.</p></td>
</tr>
<tr class="odd">
<td><code
id="route53_list_traffic_policy_versions_:_MaxItems">MaxItems</code></td>
<td><p>The maximum number of traffic policy versions that you want
Amazon Route 53 to include in the response body for this request. If the
specified traffic policy has more than <code>MaxItems</code> versions,
the value of <code>IsTruncated</code> in the response is
<code>true</code>, and the value of the
<code>TrafficPolicyVersionMarker</code> element is the ID of the first
version that Route 53 will return if you submit another
request.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      TrafficPolicies = list(
        list(
          Id = "string",
          Version = 123,
          Name = "string",
          Type = "SOA"|"A"|"TXT"|"NS"|"CNAME"|"MX"|"NAPTR"|"PTR"|"SRV"|"SPF"|"AAAA"|"CAA"|"DS",
          Document = "string",
          Comment = "string"
        )
      ),
      IsTruncated = TRUE|FALSE,
      TrafficPolicyVersionMarker = "string",
      MaxItems = "string"
    )

### Request syntax

    svc$list_traffic_policy_versions(
      Id = "string",
      TrafficPolicyVersionMarker = "string",
      MaxItems = "string"
    )
