<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>directoryservice_verify_trust</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Directory Service for Microsoft Active Directory allows you to configure and verify trust relationships

### Description

Directory Service for Microsoft Active Directory allows you to configure
and verify trust relationships.

This action verifies a trust relationship between your Managed Microsoft
AD directory and an external domain.

### Usage

    directoryservice_verify_trust(TrustId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="directoryservice_verify_trust_:_TrustId">TrustId</code></td>
<td><p>[required] The unique Trust ID of the trust relationship to
verify.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      TrustId = "string"
    )

### Request syntax

    svc$verify_trust(
      TrustId = "string"
    )
