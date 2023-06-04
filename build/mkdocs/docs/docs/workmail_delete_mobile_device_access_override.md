<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workmail_delete_mobile_device_access_override</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the mobile device access override for the given WorkMail organization, user, and device

### Description

Deletes the mobile device access override for the given WorkMail
organization, user, and device.

Deleting already deleted and non-existing overrides does not produce an
error. In those cases, the service sends back an HTTP 200 response with
an empty HTTP body.

### Usage

    workmail_delete_mobile_device_access_override(OrganizationId, UserId,
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
id="workmail_delete_mobile_device_access_override_:_OrganizationId">OrganizationId</code></td>
<td><p>[required] The WorkMail organization for which the access
override will be deleted.</p></td>
</tr>
<tr class="even">
<td><code
id="workmail_delete_mobile_device_access_override_:_UserId">UserId</code></td>
<td><p>[required] The WorkMail user for which you want to delete the
override. Accepts the following types of user identities:</p>
<ul>
<li><p>User ID: <code>12345678-1234-1234-1234-123456789012</code> or
<code>S-1-1-12-1234567890-123456789-123456789-1234</code></p></li>
<li><p>Email address: <code>user@domain.tld</code></p></li>
<li><p>User name: <code>user</code></p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="workmail_delete_mobile_device_access_override_:_DeviceId">DeviceId</code></td>
<td><p>[required] The mobile device for which you delete the override.
<code>DeviceId</code> is case insensitive.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_mobile_device_access_override(
      OrganizationId = "string",
      UserId = "string",
      DeviceId = "string"
    )
