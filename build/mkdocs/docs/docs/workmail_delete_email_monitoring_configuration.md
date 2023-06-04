<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workmail_delete_email_monitoring_configuration</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the email monitoring configuration for a specified organization

### Description

Deletes the email monitoring configuration for a specified organization.

### Usage

    workmail_delete_email_monitoring_configuration(OrganizationId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="workmail_delete_email_monitoring_configuration_:_OrganizationId">OrganizationId</code></td>
<td><p>[required] The ID of the organization from which the email
monitoring configuration is deleted.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_email_monitoring_configuration(
      OrganizationId = "string"
    )
