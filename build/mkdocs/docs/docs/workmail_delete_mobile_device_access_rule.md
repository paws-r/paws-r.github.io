<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workmail_delete_mobile_device_access_rule</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a mobile device access rule for the specified WorkMail organization

### Description

Deletes a mobile device access rule for the specified WorkMail
organization.

Deleting already deleted and non-existing rules does not produce an
error. In those cases, the service sends back an HTTP 200 response with
an empty HTTP body.

### Usage

    workmail_delete_mobile_device_access_rule(OrganizationId,
      MobileDeviceAccessRuleId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="workmail_delete_mobile_device_access_rule_:_OrganizationId">OrganizationId</code></td>
<td><p>[required] The WorkMail organization under which the rule will be
deleted.</p></td>
</tr>
<tr class="even">
<td><code
id="workmail_delete_mobile_device_access_rule_:_MobileDeviceAccessRuleId">MobileDeviceAccessRuleId</code></td>
<td><p>[required] The identifier of the rule to be deleted.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_mobile_device_access_rule(
      OrganizationId = "string",
      MobileDeviceAccessRuleId = "string"
    )
