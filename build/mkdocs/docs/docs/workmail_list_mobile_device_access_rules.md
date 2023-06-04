<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workmail_list_mobile_device_access_rules</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the mobile device access rules for the specified WorkMail organization

### Description

Lists the mobile device access rules for the specified WorkMail
organization.

### Usage

    workmail_list_mobile_device_access_rules(OrganizationId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="workmail_list_mobile_device_access_rules_:_OrganizationId">OrganizationId</code></td>
<td><p>[required] The WorkMail organization for which to list the
rules.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Rules = list(
        list(
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
          ),
          DateCreated = as.POSIXct(
            "2015-01-01"
          ),
          DateModified = as.POSIXct(
            "2015-01-01"
          )
        )
      )
    )

### Request syntax

    svc$list_mobile_device_access_rules(
      OrganizationId = "string"
    )
