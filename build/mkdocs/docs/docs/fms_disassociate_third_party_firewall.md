<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>fms_disassociate_third_party_firewall</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Disassociates a Firewall Manager policy administrator from a third-party firewall tenant

### Description

Disassociates a Firewall Manager policy administrator from a third-party
firewall tenant. When you call `disassociate_third_party_firewall`, the
third-party firewall vendor deletes all of the firewalls that are
associated with the account.

### Usage

    fms_disassociate_third_party_firewall(ThirdPartyFirewall)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="fms_disassociate_third_party_firewall_:_ThirdPartyFirewall">ThirdPartyFirewall</code></td>
<td><p>[required] The name of the third-party firewall vendor.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ThirdPartyFirewallStatus = "ONBOARDING"|"ONBOARD_COMPLETE"|"OFFBOARDING"|"OFFBOARD_COMPLETE"|"NOT_EXIST"
    )

### Request syntax

    svc$disassociate_third_party_firewall(
      ThirdPartyFirewall = "PALO_ALTO_NETWORKS_CLOUD_NGFW"|"FORTIGATE_CLOUD_NATIVE_FIREWALL"
    )
