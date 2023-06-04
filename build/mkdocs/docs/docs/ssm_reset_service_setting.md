<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssm_reset_service_setting</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## ServiceSetting is an account-level setting for an Amazon Web Services service

### Description

`ServiceSetting` is an account-level setting for an Amazon Web Services
service. This setting defines how a user interacts with or uses a
service or a feature of a service. For example, if an Amazon Web
Services service charges money to the account based on feature or
service usage, then the Amazon Web Services service team might create a
default setting of "false". This means the user can't use this feature
unless they change the setting to "true" and intentionally opt in for a
paid feature.

Services map a `SettingId` object to a setting value. Amazon Web
Services services teams define the default value for a `SettingId`. You
can't create a new `SettingId`, but you can overwrite the default value
if you have the `ssm:UpdateServiceSetting` permission for the setting.
Use the `get_service_setting` API operation to view the current value.
Use the `update_service_setting` API operation to change the default
setting.

Reset the service setting for the account to the default value as
provisioned by the Amazon Web Services service team.

### Usage

    ssm_reset_service_setting(SettingId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ssm_reset_service_setting_:_SettingId">SettingId</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the service setting
to reset. The setting ID can be one of the following.</p>
<ul>
<li><p><code
style="white-space: pre;">⁠/ssm/managed-instance/default-ec2-instance-management-role⁠</code></p></li>
<li><p><code
style="white-space: pre;">⁠/ssm/automation/customer-script-log-destination⁠</code></p></li>
<li><p><code
style="white-space: pre;">⁠/ssm/automation/customer-script-log-group-name⁠</code></p></li>
<li><p><code
style="white-space: pre;">⁠/ssm/documents/console/public-sharing-permission⁠</code></p></li>
<li><p><code
style="white-space: pre;">⁠/ssm/managed-instance/activation-tier⁠</code></p></li>
<li><p><code
style="white-space: pre;">⁠/ssm/opsinsights/opscenter⁠</code></p></li>
<li><p><code
style="white-space: pre;">⁠/ssm/parameter-store/default-parameter-tier⁠</code></p></li>
<li><p><code
style="white-space: pre;">⁠/ssm/parameter-store/high-throughput-enabled⁠</code></p></li>
</ul></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ServiceSetting = list(
        SettingId = "string",
        SettingValue = "string",
        LastModifiedDate = as.POSIXct(
          "2015-01-01"
        ),
        LastModifiedUser = "string",
        ARN = "string",
        Status = "string"
      )
    )

### Request syntax

    svc$reset_service_setting(
      SettingId = "string"
    )
