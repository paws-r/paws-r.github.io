<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workmail_get_mobile_device_access_override</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets the mobile device access override for the given WorkMail organization, user, and device

### Description

Gets the mobile device access override for the given WorkMail
organization, user, and device.

### Usage

    workmail_get_mobile_device_access_override(OrganizationId, UserId,
      DeviceId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="workmail_get_mobile_device_access_override_:_OrganizationId">OrganizationId</code></td>
<td><p>[required] The WorkMail organization to which you want to apply
the override.</p></td>
</tr>
<tr class="even">
<td><code
id="workmail_get_mobile_device_access_override_:_UserId">UserId</code></td>
<td><p>[required] Identifies the WorkMail user for the override. Accepts
the following types of user identities:</p>
<ul>
<li><p>User ID: <code>12345678-1234-1234-1234-123456789012</code> or
<code>S-1-1-12-1234567890-123456789-123456789-1234</code></p></li>
<li><p>Email address: <code>user@domain.tld</code></p></li>
<li><p>User name: <code>user</code></p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="workmail_get_mobile_device_access_override_:_DeviceId">DeviceId</code></td>
<td><p>[required] The mobile device to which the override applies.
<code>DeviceId</code> is case insensitive.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      UserId = "string",
      DeviceId = "string",
      Effect = "ALLOW"|"DENY",
      Description = "string",
      DateCreated = as.POSIXct(
        "2015-01-01"
      ),
      DateModified = as.POSIXct(
        "2015-01-01"
      )
    )

### Request syntax

    svc$get_mobile_device_access_override(
      OrganizationId = "string",
      UserId = "string",
      DeviceId = "string"
    )
