<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>fms_list_third_party_firewall_firewall_policies</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves a list of all of the third-party firewall policies that are associated with the third-party firewall administrator's account

### Description

Retrieves a list of all of the third-party firewall policies that are
associated with the third-party firewall administrator's account.

### Usage

    fms_list_third_party_firewall_firewall_policies(ThirdPartyFirewall,
      NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="fms_list_third_party_firewall_firewall_policies_:_ThirdPartyFirewall">ThirdPartyFirewall</code></td>
<td><p>[required] The name of the third-party firewall vendor.</p></td>
</tr>
<tr class="even">
<td><code
id="fms_list_third_party_firewall_firewall_policies_:_NextToken">NextToken</code></td>
<td><p>If the previous response included a <code>NextToken</code>
element, the specified third-party firewall vendor is associated with
more third-party firewall policies. To get more third-party firewall
policies, submit another
<code>ListThirdPartyFirewallFirewallPoliciesRequest</code> request.</p>
<p>For the value of <code>NextToken</code>, specify the value of
<code>NextToken</code> from the previous response. If the previous
response didn't include a <code>NextToken</code> element, there are no
more third-party firewall policies to get.</p></td>
</tr>
<tr class="odd">
<td><code
id="fms_list_third_party_firewall_firewall_policies_:_MaxResults">MaxResults</code></td>
<td><p>[required] The maximum number of third-party firewall policies
that you want Firewall Manager to return. If the specified third-party
firewall vendor is associated with more than <code>MaxResults</code>
firewall policies, the response includes a <code>NextToken</code>
element. <code>NextToken</code> contains an encrypted token that
identifies the first third-party firewall policies that Firewall Manager
will return if you submit another request.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ThirdPartyFirewallFirewallPolicies = list(
        list(
          FirewallPolicyId = "string",
          FirewallPolicyName = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_third_party_firewall_firewall_policies(
      ThirdPartyFirewall = "PALO_ALTO_NETWORKS_CLOUD_NGFW"|"FORTIGATE_CLOUD_NATIVE_FIREWALL",
      NextToken = "string",
      MaxResults = 123
    )
