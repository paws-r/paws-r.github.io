<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workmail_list_mobile_device_access_overrides</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists all the mobile device access overrides for any given combination of WorkMail organization, user, or device

### Description

Lists all the mobile device access overrides for any given combination
of WorkMail organization, user, or device.

### Usage

    workmail_list_mobile_device_access_overrides(OrganizationId, UserId,
      DeviceId, NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="workmail_list_mobile_device_access_overrides_:_OrganizationId">OrganizationId</code></td>
<td><p>[required] The WorkMail organization under which to list mobile
device access overrides.</p></td>
</tr>
<tr class="even">
<td><code
id="workmail_list_mobile_device_access_overrides_:_UserId">UserId</code></td>
<td><p>The WorkMail user under which you list the mobile device access
overrides. Accepts the following types of user identities:</p>
<ul>
<li><p>User ID: <code>12345678-1234-1234-1234-123456789012</code> or
<code>S-1-1-12-1234567890-123456789-123456789-1234</code></p></li>
<li><p>Email address: <code>user@domain.tld</code></p></li>
<li><p>User name: <code>user</code></p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="workmail_list_mobile_device_access_overrides_:_DeviceId">DeviceId</code></td>
<td><p>The mobile device to which the access override applies.</p></td>
</tr>
<tr class="even">
<td><code
id="workmail_list_mobile_device_access_overrides_:_NextToken">NextToken</code></td>
<td><p>The token to use to retrieve the next page of results. The first
call does not require a token.</p></td>
</tr>
<tr class="odd">
<td><code
id="workmail_list_mobile_device_access_overrides_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return in a single
call.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Overrides = list(
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
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_mobile_device_access_overrides(
      OrganizationId = "string",
      UserId = "string",
      DeviceId = "string",
      NextToken = "string",
      MaxResults = 123
    )
