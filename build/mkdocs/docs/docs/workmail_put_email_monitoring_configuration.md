<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workmail_put_email_monitoring_configuration</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates or updates the email monitoring configuration for a specified organization

### Description

Creates or updates the email monitoring configuration for a specified
organization.

### Usage

    workmail_put_email_monitoring_configuration(OrganizationId, RoleArn,
      LogGroupArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="workmail_put_email_monitoring_configuration_:_OrganizationId">OrganizationId</code></td>
<td><p>[required] The ID of the organization for which the email
monitoring configuration is set.</p></td>
</tr>
<tr class="even">
<td><code
id="workmail_put_email_monitoring_configuration_:_RoleArn">RoleArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the IAM Role
associated with the email monitoring configuration.</p></td>
</tr>
<tr class="odd">
<td><code
id="workmail_put_email_monitoring_configuration_:_LogGroupArn">LogGroupArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the CloudWatch Log
group associated with the email monitoring configuration.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$put_email_monitoring_configuration(
      OrganizationId = "string",
      RoleArn = "string",
      LogGroupArn = "string"
    )
