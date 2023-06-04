<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workmail_update_mobile_device_access_rule</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates a mobile device access rule for the specified WorkMail organization

### Description

Updates a mobile device access rule for the specified WorkMail
organization.

### Usage

    workmail_update_mobile_device_access_rule(OrganizationId,
      MobileDeviceAccessRuleId, Name, Description, Effect, DeviceTypes,
      NotDeviceTypes, DeviceModels, NotDeviceModels, DeviceOperatingSystems,
      NotDeviceOperatingSystems, DeviceUserAgents, NotDeviceUserAgents)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="workmail_update_mobile_device_access_rule_:_OrganizationId">OrganizationId</code></td>
<td><p>[required] The WorkMail organization under which the rule will be
updated.</p></td>
</tr>
<tr class="even">
<td><code
id="workmail_update_mobile_device_access_rule_:_MobileDeviceAccessRuleId">MobileDeviceAccessRuleId</code></td>
<td><p>[required] The identifier of the rule to be updated.</p></td>
</tr>
<tr class="odd">
<td><code
id="workmail_update_mobile_device_access_rule_:_Name">Name</code></td>
<td><p>[required] The updated rule name.</p></td>
</tr>
<tr class="even">
<td><code
id="workmail_update_mobile_device_access_rule_:_Description">Description</code></td>
<td><p>The updated rule description.</p></td>
</tr>
<tr class="odd">
<td><code
id="workmail_update_mobile_device_access_rule_:_Effect">Effect</code></td>
<td><p>[required] The effect of the rule when it matches. Allowed values
are <code>ALLOW</code> or <code>DENY</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="workmail_update_mobile_device_access_rule_:_DeviceTypes">DeviceTypes</code></td>
<td><p>Device types that the updated rule will match.</p></td>
</tr>
<tr class="odd">
<td><code
id="workmail_update_mobile_device_access_rule_:_NotDeviceTypes">NotDeviceTypes</code></td>
<td><p>Device types that the updated rule <strong>will not</strong>
match. All other device types will match.</p></td>
</tr>
<tr class="even">
<td><code
id="workmail_update_mobile_device_access_rule_:_DeviceModels">DeviceModels</code></td>
<td><p>Device models that the updated rule will match.</p></td>
</tr>
<tr class="odd">
<td><code
id="workmail_update_mobile_device_access_rule_:_NotDeviceModels">NotDeviceModels</code></td>
<td><p>Device models that the updated rule <strong>will not</strong>
match. All other device models will match.</p></td>
</tr>
<tr class="even">
<td><code
id="workmail_update_mobile_device_access_rule_:_DeviceOperatingSystems">DeviceOperatingSystems</code></td>
<td><p>Device operating systems that the updated rule will
match.</p></td>
</tr>
<tr class="odd">
<td><code
id="workmail_update_mobile_device_access_rule_:_NotDeviceOperatingSystems">NotDeviceOperatingSystems</code></td>
<td><p>Device operating systems that the updated rule <strong>will
not</strong> match. All other device operating systems will
match.</p></td>
</tr>
<tr class="even">
<td><code
id="workmail_update_mobile_device_access_rule_:_DeviceUserAgents">DeviceUserAgents</code></td>
<td><p>User agents that the updated rule will match.</p></td>
</tr>
<tr class="odd">
<td><code
id="workmail_update_mobile_device_access_rule_:_NotDeviceUserAgents">NotDeviceUserAgents</code></td>
<td><p>User agents that the updated rule <strong>will not</strong>
match. All other user agents will match.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_mobile_device_access_rule(
      OrganizationId = "string",
      MobileDeviceAccessRuleId = "string",
      Name = "string",
      Description = "string",
      Effect = "ALLOW"|"DENY",
      DeviceTypes = list(
        "string"
      ),
      NotDeviceTypes = list(
        "string"
      ),
      DeviceModels = list(
        "string"
      ),
      NotDeviceModels = list(
        "string"
      ),
      DeviceOperatingSystems = list(
        "string"
      ),
      NotDeviceOperatingSystems = list(
        "string"
      ),
      DeviceUserAgents = list(
        "string"
      ),
      NotDeviceUserAgents = list(
        "string"
      )
    )
