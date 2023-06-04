<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workmail_put_mobile_device_access_override</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates or updates a mobile device access override for the given WorkMail organization, user, and device

### Description

Creates or updates a mobile device access override for the given
WorkMail organization, user, and device.

### Usage

    workmail_put_mobile_device_access_override(OrganizationId, UserId,
      DeviceId, Effect, Description)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="workmail_put_mobile_device_access_override_:_OrganizationId">OrganizationId</code></td>
<td><p>[required] Identifies the WorkMail organization for which you
create the override.</p></td>
</tr>
<tr class="even">
<td><code
id="workmail_put_mobile_device_access_override_:_UserId">UserId</code></td>
<td><p>[required] The WorkMail user for which you create the override.
Accepts the following types of user identities:</p>
<ul>
<li><p>User ID: <code>12345678-1234-1234-1234-123456789012</code> or
<code>S-1-1-12-1234567890-123456789-123456789-1234</code></p></li>
<li><p>Email address: <code>user@domain.tld</code></p></li>
<li><p>User name: <code>user</code></p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="workmail_put_mobile_device_access_override_:_DeviceId">DeviceId</code></td>
<td><p>[required] The mobile device for which you create the override.
<code>DeviceId</code> is case insensitive.</p></td>
</tr>
<tr class="even">
<td><code
id="workmail_put_mobile_device_access_override_:_Effect">Effect</code></td>
<td><p>[required] The effect of the override, <code>ALLOW</code> or
<code>DENY</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="workmail_put_mobile_device_access_override_:_Description">Description</code></td>
<td><p>A description of the override.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$put_mobile_device_access_override(
      OrganizationId = "string",
      UserId = "string",
      DeviceId = "string",
      Effect = "ALLOW"|"DENY",
      Description = "string"
    )
