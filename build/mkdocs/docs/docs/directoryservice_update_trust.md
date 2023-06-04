<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>directoryservice_update_trust</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the trust that has been set up between your Managed Microsoft AD directory and an self-managed Active Directory

### Description

Updates the trust that has been set up between your Managed Microsoft AD
directory and an self-managed Active Directory.

### Usage

    directoryservice_update_trust(TrustId, SelectiveAuth)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="directoryservice_update_trust_:_TrustId">TrustId</code></td>
<td><p>[required] Identifier of the trust relationship.</p></td>
</tr>
<tr class="even">
<td><code
id="directoryservice_update_trust_:_SelectiveAuth">SelectiveAuth</code></td>
<td><p>Updates selective authentication for the trust.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      RequestId = "string",
      TrustId = "string"
    )

### Request syntax

    svc$update_trust(
      TrustId = "string",
      SelectiveAuth = "Enabled"|"Disabled"
    )
