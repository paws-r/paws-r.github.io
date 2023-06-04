<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_export_client_vpn_client_certificate_revocation_list</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Downloads the client certificate revocation list for the specified Client VPN endpoint

### Description

Downloads the client certificate revocation list for the specified
Client VPN endpoint.

### Usage

    ec2_export_client_vpn_client_certificate_revocation_list(
      ClientVpnEndpointId, DryRun)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_export_client_vpn_client_certificate_revocation_list_:_ClientVpnEndpointId">ClientVpnEndpointId</code></td>
<td><p>[required] The ID of the Client VPN endpoint.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_export_client_vpn_client_certificate_revocation_list_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      CertificateRevocationList = "string",
      Status = list(
        Code = "pending"|"active",
        Message = "string"
      )
    )

### Request syntax

    svc$export_client_vpn_client_certificate_revocation_list(
      ClientVpnEndpointId = "string",
      DryRun = TRUE|FALSE
    )
