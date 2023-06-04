<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workmail_get_mobile_device_access_effect</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Simulates the effect of the mobile device access rules for the given attributes of a sample access event

### Description

Simulates the effect of the mobile device access rules for the given
attributes of a sample access event. Use this method to test the effects
of the current set of mobile device access rules for the WorkMail
organization for a particular user's attributes.

### Usage

    workmail_get_mobile_device_access_effect(OrganizationId, DeviceType,
      DeviceModel, DeviceOperatingSystem, DeviceUserAgent)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="workmail_get_mobile_device_access_effect_:_OrganizationId">OrganizationId</code></td>
<td><p>[required] The WorkMail organization to simulate the access
effect for.</p></td>
</tr>
<tr class="even">
<td><code
id="workmail_get_mobile_device_access_effect_:_DeviceType">DeviceType</code></td>
<td><p>Device type the simulated user will report.</p></td>
</tr>
<tr class="odd">
<td><code
id="workmail_get_mobile_device_access_effect_:_DeviceModel">DeviceModel</code></td>
<td><p>Device model the simulated user will report.</p></td>
</tr>
<tr class="even">
<td><code
id="workmail_get_mobile_device_access_effect_:_DeviceOperatingSystem">DeviceOperatingSystem</code></td>
<td><p>Device operating system the simulated user will report.</p></td>
</tr>
<tr class="odd">
<td><code
id="workmail_get_mobile_device_access_effect_:_DeviceUserAgent">DeviceUserAgent</code></td>
<td><p>Device user agent the simulated user will report.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Effect = "ALLOW"|"DENY",
      MatchedRules = list(
        list(
          MobileDeviceAccessRuleId = "string",
          Name = "string"
        )
      )
    )

### Request syntax

    svc$get_mobile_device_access_effect(
      OrganizationId = "string",
      DeviceType = "string",
      DeviceModel = "string",
      DeviceOperatingSystem = "string",
      DeviceUserAgent = "string"
    )
