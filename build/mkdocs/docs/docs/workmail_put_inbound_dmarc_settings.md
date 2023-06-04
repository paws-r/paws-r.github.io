<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workmail_put_inbound_dmarc_settings</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Enables or disables a DMARC policy for a given organization

### Description

Enables or disables a DMARC policy for a given organization.

### Usage

    workmail_put_inbound_dmarc_settings(OrganizationId, Enforced)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="workmail_put_inbound_dmarc_settings_:_OrganizationId">OrganizationId</code></td>
<td><p>[required] The ID of the organization that you are applying the
DMARC policy to.</p></td>
</tr>
<tr class="even">
<td><code
id="workmail_put_inbound_dmarc_settings_:_Enforced">Enforced</code></td>
<td><p>[required] Enforces or suspends a policy after it's
applied.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$put_inbound_dmarc_settings(
      OrganizationId = "string",
      Enforced = TRUE|FALSE
    )
