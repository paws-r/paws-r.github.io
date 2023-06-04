<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssm_update_service_setting</td>
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
Or, use the `reset_service_setting` to change the value back to the
original value defined by the Amazon Web Services service team.

Update the service setting for the account.

### Usage

    ssm_update_service_setting(SettingId, SettingValue)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ssm_update_service_setting_:_SettingId">SettingId</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the service setting
to update. For example,
<code>arn:aws:ssm:us-east-1:111122223333:servicesetting/ssm/parameter-store/high-throughput-enabled</code>.
The setting ID can be one of the following.</p>
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
</ul>
<p>Permissions to update the <code
style="white-space: pre;">⁠/ssm/managed-instance/default-ec2-instance-management-role⁠</code>
setting should only be provided to administrators. Implement least
privilege access when allowing individuals to configure or modify the
Default Host Management Configuration.</p></td>
</tr>
<tr class="even">
<td><code
id="ssm_update_service_setting_:_SettingValue">SettingValue</code></td>
<td><p>[required] The new value to specify for the service setting. The
following list specifies the available values for each setting.</p>
<ul>
<li><p><code
style="white-space: pre;">⁠/ssm/managed-instance/default-ec2-instance-management-role: The name of an IAM role⁠</code></p></li>
<li><p><code
style="white-space: pre;">⁠/ssm/automation/customer-script-log-destination⁠</code>:
<code>CloudWatch</code></p></li>
<li><p><code
style="white-space: pre;">⁠/ssm/automation/customer-script-log-group-name⁠</code>:
The name of an Amazon CloudWatch Logs log group</p></li>
<li><p><code
style="white-space: pre;">⁠/ssm/documents/console/public-sharing-permission⁠</code>:
<code>Enable</code> or <code>Disable</code></p></li>
<li><p><code
style="white-space: pre;">⁠/ssm/managed-instance/activation-tier⁠</code>:
<code>standard</code> or <code>advanced</code></p></li>
<li><p><code
style="white-space: pre;">⁠/ssm/opsinsights/opscenter⁠</code>:
<code>Enabled</code> or <code>Disabled</code></p></li>
<li><p><code
style="white-space: pre;">⁠/ssm/parameter-store/default-parameter-tier⁠</code>:
<code>Standard</code>, <code>Advanced</code>,
<code>Intelligent-Tiering</code></p></li>
<li><p><code
style="white-space: pre;">⁠/ssm/parameter-store/high-throughput-enabled⁠</code>:
<code>true</code> or <code>false</code></p></li>
</ul></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_service_setting(
      SettingId = "string",
      SettingValue = "string"
    )
