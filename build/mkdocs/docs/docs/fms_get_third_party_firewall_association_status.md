<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>fms_get_third_party_firewall_association_status</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## The onboarding status of a Firewall Manager admin account to third-party firewall vendor tenant

### Description

The onboarding status of a Firewall Manager admin account to third-party
firewall vendor tenant.

### Usage

    fms_get_third_party_firewall_association_status(ThirdPartyFirewall)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="fms_get_third_party_firewall_association_status_:_ThirdPartyFirewall">ThirdPartyFirewall</code></td>
<td><p>[required] The name of the third-party firewall vendor.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ThirdPartyFirewallStatus = "ONBOARDING"|"ONBOARD_COMPLETE"|"OFFBOARDING"|"OFFBOARD_COMPLETE"|"NOT_EXIST",
      MarketplaceOnboardingStatus = "NO_SUBSCRIPTION"|"NOT_COMPLETE"|"COMPLETE"
    )

### Request syntax

    svc$get_third_party_firewall_association_status(
      ThirdPartyFirewall = "PALO_ALTO_NETWORKS_CLOUD_NGFW"|"FORTIGATE_CLOUD_NATIVE_FIREWALL"
    )
