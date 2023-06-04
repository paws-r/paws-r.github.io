<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workmail_describe_inbound_dmarc_settings</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the settings in a DMARC policy for a specified organization

### Description

Lists the settings in a DMARC policy for a specified organization.

### Usage

    workmail_describe_inbound_dmarc_settings(OrganizationId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="workmail_describe_inbound_dmarc_settings_:_OrganizationId">OrganizationId</code></td>
<td><p>[required] Lists the ID of the given organization.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Enforced = TRUE|FALSE
    )

### Request syntax

    svc$describe_inbound_dmarc_settings(
      OrganizationId = "string"
    )
