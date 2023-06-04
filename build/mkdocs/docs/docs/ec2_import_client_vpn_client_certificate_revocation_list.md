<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_import_client_vpn_client_certificate_revocation_list</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Uploads a client certificate revocation list to the specified Client VPN endpoint

### Description

Uploads a client certificate revocation list to the specified Client VPN
endpoint. Uploading a client certificate revocation list overwrites the
existing client certificate revocation list.

Uploading a client certificate revocation list resets existing client
connections.

### Usage

    ec2_import_client_vpn_client_certificate_revocation_list(
      ClientVpnEndpointId, CertificateRevocationList, DryRun)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_import_client_vpn_client_certificate_revocation_list_:_ClientVpnEndpointId">ClientVpnEndpointId</code></td>
<td><p>[required] The ID of the Client VPN endpoint to which the client
certificate revocation list applies.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_import_client_vpn_client_certificate_revocation_list_:_CertificateRevocationList">CertificateRevocationList</code></td>
<td><p>[required] The client certificate revocation list file. For more
information, see <a
href="https://docs.aws.amazon.com/vpn/latest/clientvpn-admin/cvpn-working-certificates.html#cvpn-working-certificates-generate">Generate
a Client Certificate Revocation List</a> in the <em>Client VPN
Administrator Guide</em>.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_import_client_vpn_client_certificate_revocation_list_:_DryRun">DryRun</code></td>
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
      Return = TRUE|FALSE
    )

### Request syntax

    svc$import_client_vpn_client_certificate_revocation_list(
      ClientVpnEndpointId = "string",
      CertificateRevocationList = "string",
      DryRun = TRUE|FALSE
    )
