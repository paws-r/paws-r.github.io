<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workmail_describe_email_monitoring_configuration</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the current email monitoring configuration for a specified organization

### Description

Describes the current email monitoring configuration for a specified
organization.

### Usage

    workmail_describe_email_monitoring_configuration(OrganizationId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="workmail_describe_email_monitoring_configuration_:_OrganizationId">OrganizationId</code></td>
<td><p>[required] The ID of the organization for which the email
monitoring configuration is described.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      RoleArn = "string",
      LogGroupArn = "string"
    )

### Request syntax

    svc$describe_email_monitoring_configuration(
      OrganizationId = "string"
    )
