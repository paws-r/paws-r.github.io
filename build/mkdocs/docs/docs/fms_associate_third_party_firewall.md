<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>fms_associate_third_party_firewall</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Sets the Firewall Manager policy administrator as a tenant administrator of a third-party firewall service

### Description

Sets the Firewall Manager policy administrator as a tenant administrator
of a third-party firewall service. A tenant is an instance of the
third-party firewall service that's associated with your Amazon Web
Services customer account.

### Usage

    fms_associate_third_party_firewall(ThirdPartyFirewall)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="fms_associate_third_party_firewall_:_ThirdPartyFirewall">ThirdPartyFirewall</code></td>
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

    svc$associate_third_party_firewall(
      ThirdPartyFirewall = "PALO_ALTO_NETWORKS_CLOUD_NGFW"|"FORTIGATE_CLOUD_NATIVE_FIREWALL"
    )
